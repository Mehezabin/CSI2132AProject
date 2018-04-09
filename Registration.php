<html>
	<head>
	
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
		
        <title>Registration</title>
		
		<h1 style="text-align:center"> Resgistration Form</h1>
        
	</head> 
		
		<style>
		body  {
			--background-image: linear-gradient(tomato,orange,yellow);
			background-color: #cccccc;
			text-align: center;
		}
		
		th, td {
			
			padding: 15px;
		}
	</style>
	
	<?php
    	if(array_key_exists('register',$_POST)){
            $UserID=$_POST['UserID'];
            $Name=$_POST['name'];
            $Email=$_POST['Email'];
            $JoinDate=date('Y-m-d');
			$Type=$_POST['type'];
			$Reputation = 1;
			
            $conn_string="host=localhost port=5432 dbname=postgres user=postgres password=Hotmail14.";
			
            $dbconn=pg_connect($conn_string) or die("Connection failed");
			
            $query="INSERT INTO final_project.Rater(UserID,Email,Name,JoinDate,Type,Reputation) VALUES ('$UserID','$Email','$Name','$JoinDate','$Type',$Reputation)";
			
            $result=pg_query($dbconn,$query);
            if(!$result){
                die("Error in SQL query: ".pg_last_error());
            }
            echo "Data Successfully not Entered ". "<a href='Login.php'> Login now</a>";
            //free memory
            pg_free_result($result);
            //close connectioin
            pg_close($dbconn);
        }
    ?>       
		
		<body>
			<div id="header" style="text-align:center"> Fill out the form below to rate away! </div>
			
			<p style="text-align:center"><img src="food-3.jpg" alt=""></p>
			<form id="testform" name="testform" method="POST" action="">
			
			
			<table style="width:10%" align="center">
				<tr>
					<td><label for="name" >Name: </label></td>
					<td><input name="name" type="text" id="raterName"></td> 
    
				</tr>
				<tr>
					<td><label for="name" >UserID: </label></td>
					<td><input name="UserID" type="text" id="UserID"></td> 
					
				</tr>
				<tr>
					<td><label for="Email" >Email: </label></td>
					<td> <input name="Email" type="text" id="Email"></td> 
					
				</tr>
				<tr>
					<td><label for="type">Type: </label></td>
					<td><select name="type">
                    <option value="blog">blog</option>
                    <option value="online">online</option>
					<option value="food critic">food critic</option>
					
                </select></th></td>
				</tr>
				
			</table>
			
			
			 
			 <p style="text-align:center"><input type="submit" value="Register" name="register" /></p>
			 
			 </form>
			 
		</body>
</html>