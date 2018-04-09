--Queries
--Mehezabin Ahamed -----8524484
--Abha Sharma ----------8254435

--a.Display all the information about a user specified restaurant. That is, the user should select the name of the restaurant from a list, and the information as contained in the restaurant and location tables should then displayed on the screen.

SELECT *
FROM Restaurant r, Location l
WHERE r.restaurantID = l.restaurantID AND r.name = $restaurantName;

--b. Display the full menu of a specific restaurant. That is, the user should select the name of the restaurant from a list, and all menu items, together with their prices, should be displayed on the screen. The menu should be displayed based on menu item categories.

SELECT m.price, m.name, m.rating, m.description, m.category 
FROM MenuItem m, Restaurant R
WHERE r.restaurantID = m.restaurantID AND r.name = $restaurantName;

--c. For each user‐specified category of restaurant, list the manager names together with the date that the locations have opened. The user should be able to select the category (e.g. Italian or Thai) from a list.

SELECT l.ManagerName, l.FirstOpenDate
FROM Location l
WHERE l.restaurantID = (SELECT r.restaurantID
						FROM Restaurant r
						WHERE r.category = $category);

--d. Given a user‐specified restaurant, find the name of the most expensive menu item. List this information together with the name of manager, the opening hours, and the URL of the restaurant. The user should be able to select the restaurant name (e.g. El Camino) from a list.

SELECT m.Name, l.ManagerName, l.HourOpen, r.URL
FROM MenuItem m, Restaurant r, Location l
WHERE r.restaurantID = m.restaurantID AND r.restaurantID = l.restaurantID AND r.Name = $restaurantName AND m.price>= ALL
(SELECT m1.Price
FROM MenuItem m1
WHERE r.restaurantID = m.restaurantID);

--e. For each type of restaurant (e.g. Indian or Irish) and the category of menu item (appetiser, main or desert), list the average prices of menu items for each category.

SELECT r.type, m.category, AVG(m.Price) AS avgPrice 
FROM MenuItem m, Restaurant r
WHERE m.Restaurant IN (SELECT r1.RestaurantID
						FROM Restaurant r1 WHERE r1.type = r.type)
	AND m.RestaurantID = r.RestaurantID
	GROUP BY r.type, m.category
	ORDER BY r.type, m.category;

-- f. Find the total number of rating for each restaurant, for each rater. That is, the data should be grouped by the restaurant, the specific raters and the numeric ratings they have received.

SELECT u.UserID, r.Name, AVG( ra.Food + ra.Mood + ra.Staff + ra.Price) as avgRating, COUNT (ra.*)
FROM Rating ra, Restaurant r, Rater u
WHERE ra.restaurantID = r.restaurantID AND ra.UserID=u.UserID
GROUP BY r.Name, u.UserID
ORDER BY r.name, avgRating;

--g. Display the details of the restaurants that have not been rated in January 2015. That is, you should display the name of the restaurant together with the phone number and the type of food.


SELECT r.name, l.PhoneNum, r.type
FROM Restaurant r, Location l
WHERE NOT EXISTS (SELECT * 
				  FROM Rating r1
					WHERE date_part('year', r1.date)=2015 AND date_part('month',r1.date)=01
					AND r1.RestaurantID=r.RestaurantID) AND 
		r.RestaurantID=l.RestaurantID
ORDER BY r.name;

--h. Find the names and opening dates of the restaurants that obtained Staff rating that is lower than any rating given by rater X. Order your results by the dates of the ratings. (Here, X refers to any rater of your choice.)

SELECT r.name, l.FirstOpenDate
FROM Restaurant r, Location l, Rating ra 
WHERE r.RestaurantID IN (SELECT ra.RestaurantID
					FROM Rating ra
					WHERE ra.staff < ANY(SELECT ra1.staff 
									FROM Rating ra1
									WHERE ra1.UserID=$UserID)) AND
	r.RestaurantID=l.RestaurantID;
	
--i. List the details of the Type Y restaurants that obtained the highest Food rating. Display the restaurant name together with the name(s) of the rater(s) who gave these ratings. (Here, Type Y refers to any restaurant type of your choice, e.g. Indian or Burger.)

SELECT r.name, Rater.name
FROM Restaurant r
INNER JOIN (Rater INNER JOIN Rating ON Rater.UserID=Rating.UserID) ON
	r.RestaurantID=Rating.RestaurantID AND r.type=$Type;
	
--j. Provide a query to determine whether Type Y restaurants are “more popular” than other restaurants. (Here, Type Y refers to any restaurant type of your choice, e.g. Indian or Burger.) Yes, this query is open to your own interpretation!

SELECT r.Type, Count(r.RestaurantID) AS TotalNumOfRatings
FROM Restaurant r
INNER JOIN Rating ON Rating.RestaurantID = r.RestaurantID
GROUP BY r.Type
ORDER BY COUNT(*) DESC;

--k. Find the names, join‐date and reputations of the raters that give the highest overall rating, in terms of the Food and the Mood of restaurants. Display this information together with the names of the restaurant and the dates the ratings were done.

SELECT ra.name, ra.JoinDate, ra.Reputation, r.name, rt.Date
FROM Restaurant r, Rater ra, Rating rt
WHERE r.RestaurantID=rt.RestaurantID AND rt.UserID=ra.UserID AND rt.food =5 and rt.mood=5;

--l.Find the names and reputations of the raters that give the highest overall rating, in terms of the Food or the Mood of restaurants. Display this information together with the names of the restaurant and the dates the ratings were done

SELECT ra.name, ra.Reputation, r.name, rt.Date
FROM Restaurant r, Rater ra, Rating rt
WHERE r.RestaurantID=rt.RestaurantID AND rt.UserID=ra.UserID AND rt.food =5 and rt.mood=5;

--m. Find the names and reputations of the raters that rated a specific restaurant (say Restaurant Z) the most frequently. Display this information together with their comments and the names and prices of the menu items they discuss. (Here Restaurant Z refers to a restaurant of your own choice, e.g. Ma Cuisine).

SELECT ra.name, ra.reputation, rt.Comment 
FROM Rater ra, Rating rt
WHERE ra.UserID IN (SELECT ra1.UserID
					FROM Rater ra1
					WHERE (SELECT COUNT(*)
							FROM Rating rt 
							WHERE rt.UserID=ra1.UserID AND rt.RestaurantID IN 
									(SELECT r.RestaurantID 
									FROM Restaurant r 
									WHERE r.name='Mu Goong Hwa'
										)) >= ALL
					(SELECT COUNT(*)												
					FROM Rating rt1
					WHERE rt1.RestaurantID IN (SELECT r.RestaurantID
											FROM Restaurant r 
											WHERE r.name='Mu Goong Hwa')
					GROUP BY rt1.UserID))
AND rt.UserID = ra.UserID AND rt.RestaurantID IN (SELECT r.RestaurantID FROM Restaurant R WHERE
				r.name ='Mu Goong Hwa');


--n. Find the names and emails of all raters who gave ratings that are lower than that of a rater with a name called John, in terms of the combined rating of Price, Food, Mood and Staff. (Note that there may be more than one rater with this name).

SELECT ra.name, ra.email, ra.type
FROM Rater ra
WHERE ra.UserID IN (SELECT rt.UserID
					FROM Rating rt
					WHERE (rt.Price + rt.Food + rt.Mood + rt.Staff) < 
							ANY (SELECT (rt1.Price + rt1.Food + rt1.Mood + rt1.Staff) 
								FROM Rating rt1
								WHERE rt1.UserID IN (SELECT ra1.UserID 
												FROM Rater ra1
												WHERE ra1.name='John')));

--o.  Find the names, types and emails of the raters that provide the most diverse ratings. Display this information together with the restaurants names and the ratings. For example, Jane Doe may have rated the Food at the Imperial Palace restaurant as a 1 on 1 January 2015, as a 5 on 15 January 2015, and a 3 on 4 February 2015. Clearly, she changes her mind quite often.
