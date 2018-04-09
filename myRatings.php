<html>


	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
		
		<title style='text-align:center'> My Ratings </title>
	
	</head>
	
	<style>
		body  {
			
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
	
	if(!isset($_SESSION['UserID'])){
			echo "Please "."<a href='Login.php'>Login</a>";
			exit;
		}
		
	$dbconn=pg_connect("host=localhost port=5432 dbname=postgres user=postgres password=Hotmail14.");
	
	if(!$dbconn){
			die("Error in connection: ".pg_last_error());
		}
		
	$UserID=$_SESSION['UserID'];
	
	$sql="SELECT r.Date, re.Name, r.Price,r.Food, r.Mood, r.Staff, r.Comment FROM final_project.Rating r, final_project.Rater ra, final_project.Restaurant re WHERE r.UserID=ra.UserID AND r.UserID=$1 AND re.restaurantID=r.restaurantID ORDER BY r.Date ASC";
	
	//"SELECT r.date,re.name, r.price,r.food, r.mood, r.staff, r.comment FROM final_project.rating r, final_project.rater ra, final_project.restaurant re WHERE r.UserID = ra.UserID, re.RestaurantID=r.RestaurantID AND ra.UserID=$1";
	
	
	$stmt = pg_prepare($dbconn, "ps", $sql);
	$result=pg_execute($dbconn,"ps",array($UserID));
	
	if(!$result) {
			die("Error in SQL query: ". pg_last_error());
		}
		//close connection
		pg_close($dbconn);
	?>
	
	<body>
		<div id="header" style="text-align:center">My Ratings</div>
		<table style="width:100%" align="center" border="1">
			<tr>
				
				<th>Date</th>
				<th>Restaurant</th>
				<th>Price</th>
				<th>Food</th>
				<th>Mood</th>
				<th>Staff</th>
				<th >Comment</th>
			</tr>
			<!-- Loop through the recordset and display all records in a table -->
			<?php
				while($row=pg_fetch_array($result)) {?>
				<tr>
					<td><?php echo $row[0]; ?></td>
					<td><?php echo $row[1]; ?></td>
					<td><?php echo $row[2]; ?></td>
					<td><?php echo $row[3]; ?></td>
					<td><?php echo $row[4]; ?></td>
					<td><?php echo $row[5]; ?></td>
					<td><?php echo $row[6]; ?></td>
					
					
				</tr>
			<?php }
				//free memory
				pg_free_result($result);
			?>		
		</table>
		
		<p style="text-align:center">Add another rating <a href="AddRating.php">here</a></p>
		<p style="text-align:center">Search Restaurants <a href="ViewRestaurantRatings.php">here</a></p>
	</body>
	
	
	
</html>