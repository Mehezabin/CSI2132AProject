<html>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 

	<head> <title>Results</title>
		<h2> Ratings based on your selections</h2>
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

		if(!isset($_SESSION['RestaurantID'] )){
			echo "Please make your Restaurant selection"."<a href='ViewRestaurantRatings.php'> here. </a>";
			exit;
		}
		
		$dbconn=pg_connect("host=localhost port=5432 dbname=postgres user=postgres password=Hotmail14.");
		
		if(!$dbconn){
			die("Error in connection: ".pg_last_error());
		}
		
		$RestaurantID = $_SESSION['RestaurantID'];
		
		
		$sql = "SELECT r.Name, ra.Name, rt.Comment, rt.Date FROM final_project.Restaurant r, final_project.Rating rt, final_project.Rater ra WHERE r.RestaurantID=rt.RestaurantID AND rt.UserID=ra.UserID AND  r.RestaurantID=$1";
		
		
		
		$stmt = pg_prepare($dbconn, "se", $sql);
		$result=pg_execute($dbconn,"se",array($RestaurantID));
		
		
		
		if(!$result) {
			die("Error in SQL query: ". pg_last_error());
		}
		
		
		//close connection
		pg_close($dbconn);
		
	?>

	<body>
		<div id="header" style="text-align:center">Ratings</div>
		<table style="width:100%" align="center" border="1">
			<tr>
				
				<th>Restaurant</th>
				<th>Rater Name</th>
				<th >Comment</th>
				<th>Date</th>
			</tr>
			
			<?php
				while($row=pg_fetch_array($result)) {?>
				<tr>
					<td><?php echo $row[0]; ?></td>
					<td><?php echo $row[1]; ?></td>
					<td><?php echo $row[2]; ?></td>
					<td><?php echo $row[3]; ?></td>
					
					
					
				</tr>
			<?php }
			
			pg_free_result($result);
			?>		
		</table>
		
		<h5 style="text-align:center">Search rating based on type<a href="Type.php">here!</a></h5>
	
		<p style="text-align:center">Add a rating yourself <a href="Login.php">here!</a>
		
	
	</body>
</html>