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
		
			
	$RestaurantID=$_POST['RestaurantID'];
	
	
	$conn="host=localhost port=5432 dbname=postgres user=postgres password=Hotmail14.";
	
	$dbconn=pg_connect($conn) or die("Connection failed");
	
	$query = "SELECT * FROM final_project.Restaurant r WHERE r.RestaurantID=$1";
	
	
	
	$stmt=pg_prepare($dbconn,"sr",$query);
	$result=pg_execute($dbconn,"sr",array($RestaurantID));
	
	
	
	if(!$result){
		die("Error in SQL query: ".pg_last_error());
		}
	
	
		
	$row_count=pg_num_rows($result);
	if($row_count>0){
		$_SESSION['RestaurantID']=$RestaurantID;
		header("location: Results.php");
		exit;
		}
		
	
	
	echo "Data entered but failed to search";
	echo "<a href='ViewRestaurantRatings.php> Try Again</a>";
	
	pg_free_result($result);
	
	pg_close($dbconn);
	}
	
	?>
	<body>
	
	<p style="text-align:center"><img src="food-2.jpg" alt=""></p>
	
	<form method="POST" action="">
	
	
		<table style="width:10%" align="center">
			<caption>Search Restaurants: </caption>
			<tr>
				<td><abbr title="Look at the Table below to get the restaurantID">RestaurantID:</abbr></td>
				<td><input type="text" name="RestaurantID" id="RestaurantID"/></td> 
    
			</tr>
			
		  
		</table>


			
			
		<p style="text-align:center"><input type="submit" value="Search" name="Search" /></p>
		
		<h5 style="text-align:center">Search rating based on type<a href="Type.php">here!</a></h5>
	
		<p style="text-align:center">Add a rating yourself <a href="Login.php">here!</a>
		
		
			
			<table width="30%" align="center">
		<tr>
			<th>Restaurant Name</th>
			<th>RestaurantID</th>
		</tr>
		<tr>
			<td>Red Lobster</td>
			<td>RES001</td>
				
		</tr>
		<tr>
			<td>Royal Oak</td>
			<td>RES002</td>
				
		</tr>
		<tr>
			<td>Pure Kitchen</td>
			<td>RES003</td>
				
		</tr>
		<tr>
			<td>Hong Kong Express</td>
			<td>RES004</td>
				
		</tr>
		<tr>
			<td>JOEY</td>
			<td>RES005</td>
				
		</tr>
		<tr>
			<td>Lone Start Texas Grill</td>
			<td>RES006</td>
				
		</tr>
		<tr>
			<td>Mu Goong Hwa</td>
			<td>RES007</td>
				
		</tr>
		<tr>
			<td>Nando's</td>
			<td>RES008</td>
				
		</tr>
		<tr>
			<td>Alirang</td>
			<td>RES009</td>
				
		</tr>
		<tr>
			<td>Vittoria Trattoia</td>
			<td>RES010</td>
				
		</tr>
		<tr>
			<td>Phuket Royal</td>
			<td>RES011</td>
				
		</tr>
		<tr>
			<td>The Keg SteakHouse</td>
			<td>RES012</td>
				
		</tr>
	<table>
	</body>
			
			
	
	</form>
	<body>
</html>