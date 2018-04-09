<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 

	<head> <title>Type Result</title>
		<h2> Ratings based on your Type</h2>
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

		if(!isset($_SESSION['Type'] )){
			echo "Please make your Type selection"."<a href='Type.php'> here. </a>";
			exit;
		}
		
		$dbconn=pg_connect("host=localhost port=5432 dbname=postgres user=postgres password=Hotmail14.");
		
		if(!$dbconn){
			die("Error in connection: ".pg_last_error());
		}
		
		
		$Type=$_SESSION['Type'];
		
		
		
		$sql = "SELECT r.Name, ra.Name, rt.Comment, rt.Date FROM final_project.Restaurant r, final_project.Rating rt, final_project.Rater ra WHERE r.RestaurantID=rt.RestaurantID AND rt.UserID=ra.UserID AND  r.Type=$1 ORDER BY rt.Date ASC";
		
		$stmt = pg_prepare($dbconn, "se", $sql);
		$result=pg_execute($dbconn,"se",array($Type));
		
		
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
		
		<p style="text-align:center"><a href='ViewRestaurantRatings.php'>Search for restaurants by their name</a></p>
		
		
		
		<p style="text-align:center">Add a rating yourself <a href="Login.php">here!</a>
	</body>
</html>