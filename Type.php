<html>
	<head>
	
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
	
		<title> Ratings </title>
	
		<h3 style="text-align:center">Make your own selections to view the ratings of other raters</h3>
	
	</head>
	
	<style>
		body  {
			--background-image: url("paper.gif");
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
	
	if (array_key_exists('Search',$_POST)){
	
	$Type=$_POST['Type'];
		
		
	$conn="host=localhost port=5432 dbname=postgres user=postgres password=Hotmail14.";
	
	$dbconn=pg_connect($conn) or die("Connection failed");
	
	
	$query="SELECT * FROM final_project.Restaurant r WHERE r.type=$1";
	
	$stmt=pg_prepare($dbconn,"qs",$query);
	$result=pg_execute($dbconn,"qs",array($Type));
	
	
	if(!$result){
		die("Error in SQL query: ".pg_last_error());
		}
		
	$row_count=pg_num_rows($result);
	if($row_count>0){
		$_SESSION['Type']=$Type;
		header("location: TypeResults.php");
		exit;
		}
		
		pg_free_result($result);
	
	pg_close($dbconn);
	}
	
	?>
	
	<body>
	
	<p style="text-align:center"><img src="food-2.jpg" alt=""></p>
	
	<form method="POST" action="">
	
	
		<table style="width:10%" align="center">
			<caption>Search Restaurants based on type: </caption>
						
		  <tr>
			
				<td>Type: </td>
				<td><input type="text" name="Type" id="Type"></td> 
				
			
			</tr>
		</table>


			
			
		<p style="text-align:center"><input type="submit" value="Search" name="Search" /></p>
	
		<h5 style="text-align:center"><a href='ViewRestaurantRatings.php'>Search Restaurant Ratings in general here</a></h5>
		
		<p style="text-align:center">Add a rating yourself <a href="Login.php">here!</a>
</html>