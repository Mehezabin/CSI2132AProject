<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
		
		<title > Login </title>
		
		<h2 style="text-align:center"> Login </h2>
		 <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
        
	</head>
	
	<style>
		body  {
			background-image: url("paper.gif");
			background-color: #cccccc;
		}
		
		h2 {
			border-bottom: 4px solid black;
		}
		
		th, td {
    padding: 15px;
}
		
		
		
	</style>
	
	
	

	<?php
	session_start();
	
	if (array_key_exists('login', $_POST)){
		
		$UserID = $_POST['UserID'];
		$Email = $_POST['Email'];
		
		//get database connection string
		$conn_string="host=localhost port=5432 dbname=postgres user=postgres password=Hotmail14.";
		
		// connect to database 
        $dbconn=pg_connect($conn_string) or die("Connection failed");
				
		
		// Query database to see if user exist
        // Use parameters to avoid sql injection
        $query="SELECT UserID,Email FROM final_project.rater WHERE UserID=$1 AND Email=$2";
				
		//Prepare the statement to avoid sql injection
        $stmt=pg_prepare($dbconn, "ps", $query);
        $result=pg_execute($dbconn,"ps", array($UserID,$Email));
		
		if(!$result){
        			die("Error in SQL query: ".pg_last_error());
        		}
				
		
		//Check row count if row count is greater than 0 record exist
        		$row_count=pg_num_rows($result);
        		if($row_count>0){
        		//Keep user information across pages and redirect to recores page
        			$_SESSION['UserID']=$UserID;
        			header("location: myRatings.php");
        			exit;
        		} 
        		echo "Data Successfully not entered "."<a href='Registration.php'>Register Here</a>";

        		//free memory
        		pg_free_result($result);
        		//close connection
        		pg_close($dbconn);
        	}
        ?>       
	
	<body>
	<div id="header" style="text-align:center"><b> Rater Login Form</b></div>
	
	<p style="text-align:center"><img src="food-1.jpg" alt="different kinds of food"></p>
    
	<form method="POST" action="">
	
		<table style="width:10%" align="center">
			<tr>
				<th>UserID #: </th>
				<th> <input type="text" name="UserID" id="UserID"/></th>
			</tr>
			<tr>
				<th>Email #:</th>
				<th><input type="text" name="Email" id="Email"/></th>
			</tr>
			<tr>
				<th></th>
				<th></th>
			</tr>
		
		</table>
			
			
			<p style="text-align:center"><input type="submit" value="Login" name="login" /></p>
			
			
	
	</form>
	
	<p style="text-align:center">New Here?</p>
	<p style="text-align:center"><a href="Registration.php">Register Here!</a></p>
	
	</body>

</html>