<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
		
		<title> Add a rating. </title>
		
		<h2 style="text-align:center"> Add a Rating </h2>
	
	</head>
	
	<style>
	th, td {
    padding: 15px;
	}
	
	body  {
			
			background-color: #cccccd;
		}
	
	</style>
	
	<?php
	
	session_start();
	
	
	if(!isset($_SESSION['UserID'])){
			echo "Please "."<a href='Login.php'>Login</a>";
			exit;
		}
	
	
			
            
		
    if(array_key_exists('Add',$_POST)){
		
			$UserID=$_SESSION['UserID'];
			$Date = date('Y-m-d');
             $Price=$_POST['Price'];
            $Food=$_POST['Food'];
            $Mood=$_POST['Mood'];
			$Staff=$_POST['Staff'];
			$Comment=$_POST['Comment'];
			$RestaurantID=$_POST['RestaurantID'];
			
			
            
			$conn_string="host=localhost port=5432 dbname=postgres user=postgres password=Hotmail14.";
			
			$dbconn=pg_connect($conn_string) or die("Connection failed");
			
            $query2="INSERT INTO final_project.Rating(UserID,Date,Price,Food,Mood,Staff, Comment,RestaurantID) VALUES ('$UserID','$Date',$Price,$Food,$Mood,$Staff,'$Comment','$RestaurantID')";
			
            $result=pg_query($dbconn,$query2);
			
			
            if(!$result){
                die("Error in SQL query: ".pg_last_error());
            }
			
			
        		//Keep user information across pages and redirect to recores page
        			$_SESSION['UserID']=$UserID;
        			header("location: http://localhost/Database%20Project/myRatings.php");
        			
    
				
            echo "Data Successfully Entered ". "<a href='Login.php'> View my ratings</a>";
            //free memory
            pg_free_result($result);
            //close connectioin
            pg_close($dbconn);
        }
    ?>   
	<body>
	
	
	
	<p style="text-align:center"><img src="food-4.jpg" alt="South Asian Cusine"style="width:400px;height:300px;"></p>
	<form  id="testform" name="testform" method="POST" action="">

	
	<table style="width:10%" align="center">
		
		
		<tr>
			<td><abbr title="Look at the Table below to get the restaurantID"> RestaurantID:</abbr> </td>
			<td><input type="text" name="RestaurantID" id="RestaurantID"/>
			</td>
		</tr>
		<tr>
			<td><label for="price">Price: </label></td>
			<td><select name="Price">
                    <option value="1">1</option>
                    <option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
                </select></td>
		</tr>
		<tr>
			<td><label for="food">Food:</label></td>
			<td><select name="Food">
                    <option value="1">1</option>
                    <option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
                </select></td>
		</tr>
		<tr>
			<td><label for="mood">Mood: </label></td>
			<td><select name="Mood">
                    <option value="1">1</option>
                    <option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
                </select></td>
		</tr>
		<tr>
			<td><label for="staff">Staff: </label></td>
			<td><select name="Staff">
                    <option value="1">1</option>
                    <option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
                </select></td>
		</tr>
		
		<tr>
			<td>Comment: </td>
			<td><input type="text" name="Comment" id="Comment" >
			
			</td>
		</tr>
		
	</table>
	
	<p style="text-align:center">
	<input type="submit" name="Add" value="Add" /></p>
	
	
	
	</form>
	
	
	
	
	
	

	<p style="text-align:center">Search for Restaurant Ratings <a href='ViewRestaurantRatings.php'>here</a></p>
	
	
		
	
	
	
	
	
	
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
	</table>
	</body>
	
	
</html>