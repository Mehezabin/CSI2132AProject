-- Data entries to populate the database
-- Mehezabin Ahamed -------- 8524484
-- Abha Sharma ------------- 8254435
-- CSI2132 Project


-- Raters
INSERT INTO Rater (UserID, Email, Name, JoinDate, Type, Reputation) VALUES
 	('U001','lelom017@uottawa.ca', 'Arezou Lelom','2018-01-24','blog',4),
 	('U002','malek@uottawa.ca','Zayn Malek','2018-01-31','blog',5),
	('U003','mgonzale@uottawa.ca','Miguel Gonzalez','2018-02-02','blog',3),
	('U004','nadam096@uottawa.ca','Adam Saleh','2018-02-04','blog',5),
	('U005','nbora@uottawa.ca','Eu Taek','2018-02-09','blog',4),
	('U006','nkukr07@uottawa.ca','Park Hae Jin','2018-02-15','food critic',1),
	('U007','omoba100@uottawa.ca','Omid Barsam','2018-02-12','food critic',3),
	('U008','pguna022@uottawa.ca','Papak Guna','2018-02-15','food critic',3),
	('U009','pabou061@uottawa.ca','Parastu Bou','2018-03-03','food critic',4),
	('U010','sasam079@uottawa.ca','Sammy Azam','2018-03-07','food critic',5),
	('U011','afelty@uottawa.ca','Yasmin Alvi','2018-03-07','online',5),
	('U012','wabed099@uottawa.ca','Wahid Rahman','2018-03-22','online',1),
	('U013','ttran@uottawa.ca','Thomas Tran','2017-12-15','online',5),
	('U014','ysami@uottawa.ca','Yasamin','2017-12-19','online',4),
	('U015','bhu078@uottawa.ca','Bhavna Suresh','2017-12-18','online',3);

	
-- Restaurants and Locations
INSERT INTO Restaurant (RestaurantID, Name, Type, URL) VALUES
('RES001','Red Lobster','Seafood','www.redlobster.ca');
INSERT INTO Location (LocationID, FirstOpenDate, ManagerName, PhoneNum, StreetAddress, HourOpen, HourClose, RestaurantID) VALUES
('L001A','1970-04-04','Pearl Benning',6137270035,'1595 Merivale Road',11,22,'RES001'), ('L001B','1990-11-23','Doyle Gautier',6137447560,'St.Laurent Blvd',11,22,'RES001');

INSERT INTO Restaurant (RestaurantID, Name, Type, URL) VALUES
('RES002','Royal Oak','Canadian','www.royaloakpubs.com');
INSERT INTO Location (LocationID, FirstOpenDate, ManagerName, PhoneNum, StreetAddress, HourOpen, HourClose, RestaurantID) VALUES
('L002A','1983-08-25','Ruthe Grimmett',6132321057,'188 Bank Street',10,2,'RES002'),('L002B','1989-10-05','Marjory Dotson',6138258251,'1981 St. Joseph Blvd',11,2,'RES002');

INSERT INTO Restaurant (RestaurantID, Name, Type, URL) VALUES
('RES003','Pure Kitchen','Vegetarian','www.purekitchenottawa.com');
INSERT INTO Location (LocationID, FirstOpenDate, ManagerName, PhoneNum, StreetAddress, HourOpen, HourClose, RestaurantID) VALUES
('L003A','1998-01-22','Khalilah Douville',6136805500,'357 Richmond Rd',8,21,'RES003'),('L003B','2000-01-05','Winnie Houhlian',6132337873,'340 Elgin St',8,21,'RES003');

INSERT INTO Restaurant (RestaurantID, Name, Type, URL) VALUES
('RES004','Hong Kong Express','Chinese',NULL);
INSERT INTO Location (LocationID, FirstOpenDate, ManagerName, PhoneNum, StreetAddress, HourOpen, HourClose, RestaurantID) VALUES
('L004A','2001-05-09','Kim Lee',613241322,'101-242 Rideau St',11,22,'RES004');

INSERT INTO Restaurant (RestaurantID, Name, Type, URL) VALUES
('RES005','JOEY','American','www.joeyrestaurants.com');
INSERT INTO Location (LocationID, FirstOpenDate, ManagerName, PhoneNum, StreetAddress, HourOpen, HourClose, RestaurantID) VALUES
('L005A','1992-09-17','Gregory Reppert',6136955639,'103-825 Exhibition Way',11,1,'RES005'),('L005B','2014-04-28','Branden Arnold', 6136805639,'50 Rideau St',11,1,'RES005');

INSERT INTO Restaurant (RestaurantID, Name, Type, URL) VALUES
('RES006','Lone Star Texas Grill','Mexican','www.lonestartexasgrill.com');
INSERT INTO Location (LocationID, FirstOpenDate, ManagerName, PhoneNum, StreetAddress, HourOpen, HourClose, RestaurantID) VALUES
('L006A','1989-06-29','Marta Neihaus',6135999535,'4048 Carling Aveneu',11,22,'RES006'),
('L006B','1990-05-21','Jerrod Stecker',6136930323,'4275 Strandherd Drive',11,24,'RES006'),
('L006C','1995-09-29','Rhona Strasser',6135629865,'128 George Street',11,1,'RES006');

INSERT INTO Restaurant( RestaurantID,Name, Type, URL) VALUES
	('RES012','The Keg Steakhouse','SteakHouse','https://www.kegsteakhouse.com/'),
	('RES011','Phuket Royal','Thai','http://www.phuketroyal.com/'),
	('RES010','Vittoria Trattoia','Italian','https://vittoriatrattoria.com/'),
	('RES009','Alirang','Korean',null),
	('RES008','Nandos','Afro-Portugese','https://www.nandos.ca/'),
	('RES007','Mu Goong Hwa','Korean',null);
	
INSERT INTO Location (LocationID, FirstOpenDate, ManagerName, PhoneNum, StreetAddress, HourOpen, HourClose, RestaurantID) VALUES
	('L012A','1985-07-3','Samantha Feldam',6132418514,'75 York Street',17,22,'RES012'),
	('L012B','1988-09-10','Joe Sessoms',6132480509,'376 Hunt Club Rd',4,11,'RES012'),
	('L012C','1998-11-27','Gary Ben',6137241242,'525 Richmond Rd',4,11,'RES012'),
	('L011A','2011-09-12','Katherine Carlson',6132353134,'713 Somerset St',11,22,'RES011'),
	('L010A','2010-01-01','Maria Chagoya',6137898959,'35 William St',11,22,'RES010'),
	('L010B','2007-06-04','Aurora Sessoms',6137318959,'3625 Rivergate Way',11,22,'RES010'),
	('L009A','2011-03-26','Seol Forbis',6137892223,'134 Nelson St',12,22,'RES009'),
	('L008A','2005-12-16','Marc Galles',6132307471,'91 Elgin Street',11,24,'RES008'),
	('L008B','2005-08-03','Jacob Ledford',6137497445,'1461 Merivale Rd',11,24,'RES008'),
	('L008C','2009-08-13','Jones Billal',6134242821,'3838 Innes Rd',11,24,'RES008'),
	('L007','2004-05-02','Lim Huang',6138608300,'376 Rideau St',11,22,'RES007' );
	
	
	
-- Menu Items
INSERT  INTO MenuItem (ItemID,Name,Type,Category,Description,Price,RestaurantID) VALUES 
	('M010A','Zuccoto','food','desert',' Chocolate mousse filled bomb cake',9.00,'RES010'),
	('M010B','Gelato','food','desert','Ask server for selections',7.00,'RES010'),
	('M010C','Octopus Salad','food','main',' Octopus, cannellini beans, chorizo sausage,
red onion and cherry tomatoes with a chipotle aïoli ',15.00,'RES010'),
	('M010D','Arrabiata','food','main','Pasta and  Red wine and garlic infused spicy tomato sauce served
with penne',17.00,'RES010'),

	('M008A','Grilled Chicken Livers','food','main','Comes with Nandos', 8.75,'RES008'),
	('M008B','Double Skewers','food','main','world famous, flame grilled Chicken, fresh and never frozen',9.35,'RES009'),
	('M008C','Peri-Peri Chicken Caesar','food','main','Pick your spice and add our PERi-PERi chicken, served in a whole wheat wrap.',8.55,'RES008'),
	('M008D','Peri-Peri Chicken Sandwich','food','main','Served with crispy leaf lettuce and tomato on a freshly baked Nandos roll.',8.55,'RES008'),
	
	('M009A','Croquette','food','starter','Deep fried mashed Potatoes',5.95,'RES009'),
	('M009B','Topokki','food','starter','Rice cake with korean hot sauce',9.95,'RES009'),
	('M009C','Miso Soup','food','starter',null,2.00,'RES009'),
	('M009D','Fried Banana','food','desert',null,4.50,'RES009'),
	
	('M007A','Duk Bok Gi','food','starter','Spicy rice cake stir fried with vegetables',8.95,'RES007'),
	('M007B','Kim Bap','food','starter','korean style Roll',6.95,'RES007'),
	('M007C','Chicken soon Tofu','food','main','served with variety of side dishes and rice',11.95,'RES007'),
	('M007D','Mok Sal','food','main','Pork neck marinated in traditional Korean sauce',15.95,'RES007'),
	
	('M011A','Fresh Young Coconut','beverage',null,'Green coconut with a straw',6.00,'RES011'),
	('M011B','Kao Pad Bai Gra Gai','food','main','Chicken and Potatoes in a Yellow Curry Sauce served with Steamed Rice',9.95,'RES011'),
	('M011C','Satay Skeweres','food','starter','3 skewers of marinated chicken or beef served with peanut sauce',6.95,'RES011'),
	('M011D','Chu Chee Goong','food','main','Shrimps with red curry and vegetables',15.95,'RES011'),
	
	('M012A','Tempura Snap Peas','food','starter','lightly battered and served with a soy dippin sauce',4.95,'RES012'),
	('M012B','Keg Caesar','food','main','crisp Romaine and aged parmesan cheese in our creamy dressing',5.95,'RES012'),
	('M012C','Sirloin or Teriyaki Classic','food','main','naturally grilled or marinated in our own teriyaki sauce',22.95,'RES012'),
	('M012D','Prime Ribs and Tiger Shrimp','food','main','prime rib is specially aged for extra flavour and tenderness, rubbed with our unique blend of spices and slow roasted, hand carved and served with roasted garlic mashed potatoes, horseradish and red',24.95,'RES012');
	
INSERT INTO MenuItem(ItemID,Name,Type,Category,Description,Price,RestaurantID) VALUES
('M001A','Lobster Bisque','food','main','Made with Maine and langostino lobster.',14.99,'RES001'),
('M001B','Lobster Lovers Dream', 'food','main','We roast a succulent rock lobster tail until tender, steam a sweet split Maritime lobster tail to the perfect texture, and serve both with creamy lobster-and-shrimp linguini Alfredo',36.99,'RES001'),
('M001C','Fish and Chip','food','main','Tender, flakey fish fried to perfection, served with crispy fries and coleslaw.',10.99,'RES001'),
('M001D','Snow Crab Legs','food','main','We steam our wild-caught snow crab legs and serve them with your choice of two sides.',18.29,'RES001'),
('M002A','Homemade Shepards Pie','food','main','Ground beef, sweet corn, peas, carrots, mashed potato, gravy, served with garden salad.',12.99,'RES002'),
('M002B','Liver & Onions','food','main','Sautéed onions, Applewood smoked bacon, seasonal vegetables, gravy, choice of potato.',9.99,'RES002'),
('M002C','Smokehouse Handcrafted Burger','food','main','Prime Rib, Cheddar cheese, Chipotle sauce, battered onion rings',17.99,'RES002'),
('M002D','Steak Sandwich','food','main','Corned beef, sauerkraut, Swiss cheese, Thousand Island dressing, grilled rye bread.', 16.99, 'RES002'),
('M003A','PASSION','food','main','mushroon walnut patty, coconut bacon, mango BBQ sauce, pineapplepickled jalapeños, house slaw',16.00,'RES003'),
('M003B','RADICAL Cauliflower Wings','food','starter','korean bbq, scallions, cilantro, sesame seeds or buffalo hot sauce, scallions, ranch dressing',15.00,'RES003'),
('M003C','BELLE Poutine','food','starter','hand-cut french fries, mushroom gravy, cheese curds or cashew cheese',11.00,'RES003'),
('M003D','GOLDEN MILK','beverage',NULL,'almond milk, honey, turmeric, cinnamon, ginger black pepper, cardamom',4.00,'RES003'),
('M004A','General Taos Chicken Combo','food','main','Comes with vegetables and your choice of steamed rice, fried rice or fried noodles.',8.25,'RES004'),
('M004B','Ma Po Tofu','food','main','Stir-fried fresh tofu with chicken in spicy oil and sauce',11.95,'RES004'),
('M004C','Teriyaki chicken','food','main','Choose White Rice, Brown Rice or Super Grains with our signature vegetable mix.',10.99,'RES004'),
('M004D','Wonton Noodle Soup','food','main','Pork and shrimp wonton with vegetables and noodles.',9.75,'RES004'),
('M005A','Yellofin Tuna','food','main','seared rare, mango, peanuts, avocado, crispy noodles, cilantro ginger dressing',20.50,'RES005'),
('M005B','Osaka Style Pressed Salmon Sushi','food','main','fire seared salmon, umami sauce, shaved serrano peppers',15.25,'RES005'),
('M005C','California Chicken Burger','food','main','spicy mayo, aged cheddar, smoky bacon',16.75,'RES005'),
('M005D','Spicy Chicken Banh Mi','food','main','hourly roasted chicken, toasted baguette, pickled carrot & mint slaw',16.25,'RES005'),
('M006A','LoneStar Wings','food','starter','Southern-fried and tossed in Texas butter sauce or original BBQ sauce.',7.99,'RES006'),
('M006B','Half Rack Baby Back Ribs','food','main','Topped with two thick-cut crispy onion rings, served with seasonal vegetables, a loaded baked potato and wedge fries.',19.99,'RES006'),
('M006C','Rita Coronita','beverage',NULL,'Our original frozen lime margarita, served with a Coronita.',9.99,'RES006'),
('M006D','House Caesar Salad','food','main','Tossed with Caesar dressing, shaved parmesan cheese, crumbled bacon and Texas croutons.',10.99,'RES006');




-- Ratings
INSERT INTO Rating(UserID,Date,Price,Food,Mood,Staff,Comment,RestaurantID) VALUES
('U001','2018-01-24',3,4,5,5,'Nice atmosphere','RES001'),
('U002','2018-01-31',4,2,4,4,'Nice restaurant good atmosphere fast service but food no','RES001'),
('U003','2018-02-02',4,4,4,4,'Service was excellent and fast','RES001'),
('U004','2018-02-04',4,5,5,5,'The staff was very friendly and the food superb','RES001'),
('U005','2018-02-09',4,4,4,4,'Good quality service and food','RES001'),
('U006','2018-02-15',3,2,4,3,'The restaurant is dirty and the servings are extremely small','RES001'),
('U007','2018-02-12',5,5,5,4,'There was some confusion with an order, but the manager brought out the correct order himself','RES001'),
('U008','2018-02-15',5,5,5,5,'We were very pleasantly surprised by both the food and the service!','RES001'),
('U009','2018-03-03',3,3,3,3,'Service was below par','RES002'),
('U010','2018-03-07',3,4,4,4,'The service was pleasant and efficient.','RES002'),
('U011','2018-03-07',4,4,5,5,'It has a pub style with Canadian influence. Meal was served by a wonderful lady','RES002'),
('U012','2018-03-22',5,5,5,5,'Great place for drinks and eats.Typical pub decor. Nice spot to meet with friends','RES002'),
('U013','2017-12-15',1,1,2,2,'Service was extremely slow','RES002'),
('U014','2017-12-19',2,3,3,1,'Service was very slow, 40 minutes from ordering to the delivery of food.','RES002'),
('U015','2017-12-18',4,4,5,5,'The Oak is one of my favourite haunts and I almost always come away very satisfied.','RES002'),
('U001','2018-01-29',5,4,5,5,'Their food and service is always really great.','RES002'),
('U002','2018-02-04',5,5,5,5,'Great service by our waitress Christina, great food and atmosphere','RES002'),
('U003','2018-02-07',3,5,5,5,'Little pricey, but definitely worth it!','RES003'),
('U004','2018-02-13',5,5,5,4,'Great food, very creative. Would go again, and again. Service was a little slow.','RES003'),
('U005','2018-03-29',5,5,5,5,'This vegetarian place can give meat places a run for their money. I recommend making a reservation since the place is always busy','RES003'),
('U006','2018-03-17',5,5,5,5,'My second visit, and was just as impressed as the first time. The service from everyone was as amazing as the food','RES003'),
('U007','2018-02-27',5,5,4,4,'Busy but excellent vegan food.','RES003'),
('U008','2018-03-26',5,5,5,5,'It was busy but the staff was very accommodating.Love the decor.','RES003'),
('U009','2018-03-29',5,5,5,5,'Beautifully prepared vegetarian food, with extensive choices. Service is great!','RES003'),
('U010','2018-03-01',4,5,5,5,'If you like meat, you wont miss it here, the food is great','RES003'),
('U011','2018-03-09',5,5,5,5,'Thoroughly enjoyed my evening at Pure tonight. Excellent food. To top it off the service was outstanding','RES003'),
('U012','2018-03-25',4,5,4,5,'Great service and food','RES003'),
('U013','2017-12-23',5,5,5,5,' I would recommend anyone visit this place even if they arent a vegetarian.','RES003'),
('U014','2017-12-26',4,4,3,3,'The space was very clean. There are lots of tables if you want to eat in. Relatively new restaurant, so decor is modern','RES004'),
('U015','2017-12-28',3,1,1,1,'Bad food, bad service','RES004'),
('U001','2018-02-11',4,3,3,3,'Nothing exciting, but food is passable.But well priced. If you need a quick meal','RES004'),
('U002','2018-02-15',4,4,2,2,'The errors in WHAT is delivered ARE HUGE','RES004'),
('U003','2018-02-17',1,1,1,1,'Bad choice! Terrible food, horrible service','RES004'),
('U004','2018-02-21',2,1,2,2,'Very disappointed & waste of my money.','RES004'),
('U005','2018-03-15',5,5,3,3,'Well-priced food','RES004'),
('U006','2018-03-24',4,4,5,5,'The food was good, so was the service.','RES005'),
('U007','2018-03-09',5,5,5,5,'Have yet to be disappointed by any offering at a Joeys. Lovely hostesses and servers who actually smile with sincerity.','RES005'),
('U008','2018-03-04',3,5,5,4,'Little mix up with reservation. Automatic 18% gratuity for parties with more than nine people, which I thought was pricey','RES005'),
('U009','2018-03-19',5,5,5,5,'Beautiful place. Great service. Cool music','RES005'),
('U010','2018-03-12',5,5,5,5,'Place is very trendy, all big open space with even open kitchen. Best service ever','RES005'),
('U011','2018-03-19',4,4,5,5,'Great atmosphere and a very busy place.','RES005'),
('U012','2018-03-29',5,5,5,5,'Wife and I went to celebrate our wedding anniversary. Service was fast and cheerful. Our server brought us complimentary glasses of champagne','RES005'),
('U013','2018-01-02',3,4,4,5,'Service was quick and efficient','RES005'),
('U014','2018-01-05',4,5,5,5,'Very spacious and hip-looking place. Service was excellent.','RES005'),
('U015','2018-01-22',5,5,5,5,'Central to everything, clean, offered good food at a very good price.','RES006'),
('U001','2018-03-11',4,4,5,5,'Staff was friendly and brought a pitcher of water to the tables. Fun atmosphere','RES006'),
('U002','2018-03-14',5,5,5,5,'Great service from our waitress who was super friendly.','RES006'),
('U003','2018-02-22',5,5,4,5,'Despite the busy Tuesday night and the long waiting line, after all the good was just quickly served and yummy. Our waitress was awesome','RES006'),
('U004','2018-03-02',4,4,4,3,'Good food, but took a considerable time for the bill to arrive','RES006'),
('U005','2018-03-28',5,5,5,5,'Very tasty and not too pricey for the area. The service: our server Buck was wonderful!','RES006'),
('U006','2018-03-28',4,3,4,5,'Seated and served quickly. Decent food','RES006');



INSERT INTO Rating(UserID,Date,Price,Food,Mood,Staff,Comment,RestaurantID) VALUES
('U001','2018-01-25',5,5,5,5,'Great service and value','RES007'),
('U002','2018-02-01',4,4,4,4,'simple clean surroundings and yummy food-well priced','RES007'),
('U003','2018-02-03',5,4,5,4,'A great alternative to sushi places , meat is fresh','RES007'),
('U004','2018-02-05',5,4,5,2,'Nice food, slow service','RES007'),
('U005','2018-03-09',1,1,1,1,'Very low quality food...','RES007'),
('U006','2018-03-15',5,5,5,5,'A Great Option - We regularly go to Alirang nearby, but since theyre closed Mondays we gave this restaurant a try. It was a very pleasant surprise. The food was really good. The server was a sweetheart. This place is great and open on Mondays.','RES007'),
('U007','2018-02-13',4,2,3,1,'The food was okay.We had to wait for the food quite a while even though there were only a couple of more customers. The food and the service were okay.','RES007'),
('U008','2018-02-16',4,5,2,1,'Not the Greatest Service -Restaurant was almost empty on a weeknight but service was slow. All meals except one came to the table at the same time.','RES007'),

('U009','2018-03-04',4,4,4,4,'We were recommended this restaurant by the hotel where we were staying since it was only a few doors down and were pleasantly surprised.','RES008'),
('U010','2018-03-08',5,5,5,5,'Fantastic Customer Service','RES008'),
('U011','2018-03-08',5,5,5,5,'Great food at reasonable price','RES008'),
('U012','2018-03-23',5,5,5,5,'Tasty as ever','RES008'),
('U014','2017-12-15',5,5,5,5,'GREAT FOOD AND AMAZING SERVICE','RES008'),
('U015','2017-12-19',1,1,1,1,'Went during winterlude - everything felt dirty and sticky','RES008'),
('U001','2018-01-31',4,3,4,5,'A very good choice','RES008'),
('U002','2018-02-03',5,5,5,5,'Great korean food','RES009' ),
('U004','2018-02-06',4,3,5,4,'Cheap.There are not a lot of good Korean places in Ottawa, but this is one of them. ','RES009'),
('U005','2018-02-10',4,5,4,5,'Authentic korean food on cozy setting!','RES009'),
('U006','2018-02-16',1,1,1,1,'Bad experience','RES009'),
('U007','2018-02-14',4,4,4,4,'Best korean since Korea','RES009'),
('U008','2018-02-17',5,5,5,5,'Authentic korean food','RES009'),
('U009','2018-03-05',4,3,4,5,'Popular korean restaurant','RES009'),
('U010','2018-03-09',4,4,4,4,'Great bartender making drinks and suggesting appropriate wine!','RES010'),
('U011','2018-03-10',3,4,5,5,'Exquisite Italian pasta!','RES010'),
('U014','2017-12-16',3,3,3,3,'Warm ambiance','RES010'),
('U015','2017-12-20',5,5,5,5,'Third time in Ottawa... third time at that Trattoria!','RES010'),
('U001','2018-01-26',5,5,5,5,'True Italian food','RES010'),
('U002','2018-01-01',4,4,4,4,'Have been coming here for years!','RES010'),
('U003','2018-02-04',3,3,3,3,'Great location and service','RES010'),
('U004','2018-02-07',3,3,3,3,'It was just okay','RES011'),
('U005','2018-02-11',4,3,4,3,'Decent - the tea is good and the pad thai is decent','RES011'),
('U006','2018-02-17',5,4,3,5,'Fantastic mix of asian cuisine','RES011'),
('U007','2018-02-15',4,5,5,5,'Consistently delicious curry dishes','RES011'),
('U008','2018-02-18',1,1,1,1,'As an asian, it was insulting','RES011'),
('U009','2018-03-06',3,3,2,2,'Standard food, slow service','RES011'),
('U010','2018-03-11',1,1,1,1,'Poor chicken pad thai with good shrimp rolls','RES011'),
('U011','2018-03-13',4,4,4,4,'Great alternative','RES011'),
('U012','2018-03-24',4,4,4,4,'Nice place, great service, good food','RES012'),
('U014','2017-12-17',5,5,5,5,'Great expereience','RES012'),
('U015','2017-12-21',5,4,1,3,'Romantic but super noisy!','RES012'),
('U001','2018-02-26',2,5,5,5,'Great steaks but the prices are a bit too steep','RES012'),
('U002','2018-02-14',4,5,4,5,'Very good Prime Rib and Service','RES012'),
('U003','2018-02-09',3,3,3,3,'Good food, could be a bit better service','RES012'),
('U004','2018-02-26',1,1,1,1,'Rude Service','RES012'),
('U005','2018-02-17',4,5,3,5,'Excellent Restuarant with nice staff','RES012');





-- Rating Items

INSERT INTO RatingItem(UserID,Date,ItemID,Rating,Comment) VALUES
('U001','2018-01-24','M001A',4,'Could have had more flavor, not too cheap'),
('U002','2018-01-31','M001A',2,'The lobster bisque tasted like cream of broccoli soup no lobster in that!'),
('U003','2018-02-02','M001B',4,'The Lobster Lovers Dream was a great treat'),
('U004','2018-02-04','M001B',5,'We ordered the Lobster Lovers Dream and were not disappointed.'),
('U005','2018-02-09','M001C',4,'They will give you bread/buns with your meal. I had the fish and chips, great quality but a little light on the fish.'),
('U006','2018-02-15','M001C',2,'1 piece of fish! maybe 10 fries, for 10.99 and to make it worse, it was all breading.'),
('U007','2018-02-12','M001D',5,'Crab legs were fresh'),
('U008','2018-02-15','M001D',5,'Snow crab legs were hot, juicy and tasty! Sides were also very well prepared and the presentation was great.'),
('U009','2018-03-03','M002A',3,'It was less homemade that plopped together - scoops of peas, corn and a thin gravy were topped with scoops of dry mashed potatoes. While it was all edible, it was neither appetizing or tasty.'),
('U010','2018-03-07','M002A',4,'The shepherds pie WAS actually quite good'),
('U011','2018-03-07','M002B',4,'Liver and onions done to perfection, smothered in gravy with HP sauce of my own choosing'),
('U012','2018-03-22','M002B',5,'The liver and onions are amazing here.'),
('U013','2017-12-15','M002C',1,'The $17.99 burger was below average, letuce that came with the burger was old. French Fries that came with the burger were cold, soggy and old.'),
('U014','2017-12-19','M002C',3,'It was obvious that the burgers were originally frozen and merely heated up at the restaurant - average reheated pub food'),
('U015','2017-12-18','M002D',4,'Great steak sandwiches'),
('U001','2018-01-29','M002D',4,'I got a steak sandwich. It was slightly overcooked to my liking.Taste was great, a hint salty but I loved the spicy fries!'),
('U002','2018-02-04','M002D',5,' I decided to have the Steak Sandwich. Food and service was awesome'),
('U003','2018-02-07','M003A',5,'Mushroom burger, very good! and the fries was perfect.'),
('U004','2018-02-13','M003A',5,'I had a burger made from mushroom and walnut, and it was amazing.'),
('U005','2018-03-29','M003A',5,'The food is of great quality and the presentation excellent as well. The mushroom and walnut burger is my fave'),
('U006','2018-03-17','M003B',5,'Shared the radical cauliflower wings and they were beyond delicious.'),
('U007','2018-02-27','M003B',5,'The cauliflower wings were amazing.'),
('U008','2018-03-26','M003B',5,'I come here for the cauliflower wings. They are to die for.'),
('U009','2018-03-29','M003C',5,'The vegetarian poutine is unbelievably good.'),
('U010','2018-03-01','M003C',5,'The poutine with cheese curds and coconut bacon was rich and satisfying, lovely mushroom gravy.'),
('U011','2018-03-09','M003C',5,'The best poutine, gravy and cashew cheese, I have had.'),
('U012','2018-03-25','M003D',5,'I had the golden drink with almond milk and added some honey. I need the recipe to make this at home!'),
('U013','2017-12-23','M003D',5,'The beverage menu is equally as great. Golden Milk is a must try'),
('U014','2017-12-26','M004A',4,'I got the General Tao Chicken Combo. I like that they make things to order (kind of like Thai Express) and stuff is not just lying around under the heat lamp.'),
('U015','2017-12-28','M004A',1,'The "general tao chicken" tasted like cardboard and was extremely dry. There was no sauce on the chicken at all.'),
('U001','2018-02-11','M004B',3,NULL),
('U002','2018-02-15','M004B',2,' MA PO TOFU is NOTHING like it should be'),
('U003','2018-02-17','M004C',1,'The teriyaki chicken was fatty and not cooked well'),
('U004','2018-02-21','M004C',1,'The teriyaki literally tasted like it had been rinsed with water, but only leaving a dirty water taste in my mouth.'),
('U005','2018-03-15','M004D',5,'This is a no frills chain with mouth watering shrimp wanton noodle soup.'),
('U006','2018-03-24','M005A',4,'Ordered the yellowfin tuna salad, and enjoyed that very much. It was very pretty to look at, and delicious to eat.'),
('U007','2018-03-09','M005A',5,'Had the yellowfin tuna salad...and WOW! Very appealing to both the taste buds and the eyes.'),
('U008','2018-03-04','M005A',5,'I ordered the Yellowfin Tuna Salad.I was really impressed with how good this tasted. Good portion.'),
('U009','2018-03-19','M005B',5,'Food tastes great even the Sushi'),
('U010','2018-03-12','M005B',5,'Sushis are recommended.'),
('U011','2018-03-19','M005B',4,'Delicious Sushi.I was impressed that a chain restaurant was able to serve up such a nice quality fish.'),
('U012','2018-03-29','M005C',5,'Lunch was excellent:I had the California chicken burger.'),
('U013','2018-01-02','M005C',4,' I had the California Chicken Sandwich. Not sure this was as good a deal price wise'),
('U014','2018-01-05','M005D',5,'I had the Bahn mi. I loved it, it was a big plate.'),
('U015','2018-01-22','M006A',5,'Love their large saucy wings.'),
('U001','2018-03-11','M006A',4,'Happy with the wings, which were house made and said to be really good.'),
('U002','2018-03-14','M006B',5,'I had baby back ribs with a side salad. My ribs were falling off the bone tender and very tasty.'),
('U003','2018-02-22','M006B',5,'Great baby ribs'),
('U004','2018-03-02','M006C',4,'Washed food down with their famous Rita Coronita...something everyone should try once.'),
('U005','2018-03-28','M006C',5,'Drinks exceeded our expectations! Rita Coronita only 10$!'),
('U006','2018-03-28','M006D',3,'Salad had too much dressing - not crisp enough.');




INSERT INTO RatingItem(UserID,Date,ItemID,Rating,Comment) VALUES 
('U001','2018-01-25','M012A',5,'I choosed a shrimp Cocktail as a starter, I got some shrimps and some salad only, for me Not a real shrimp cocktail.'),
('U002','2018-02-01','M012A',3,null),
('U003','2018-02-03','M012B',1,'We showed up late and the manager seemed annoyed at us for being 30 minutes late.'),
('U004','2018-02-05','M012B',4,'Very unique dining experience'),
('U005','2018-03-09','M012C',5,'Dropped by on Canada Day when there was so many people in the Market area, and it was just wonderful that we got seated right away when the wait was so long. being just two of us, we were lucky a seat opened up outside. 
Though it was a busy day, it was surprising how fast service was. I ordered the Sirloin Oscar which was a top sirloin steak complete with shrimp and scallops. The shrimp and scallops were excellent.
 Cooked to perfection. My steak was done as I asked (medium rare) and was pretty good.
 The steak was a wee bit on the tough side.'),
('U006','2018-03-15','M012C',3,'We all enjoyed our food and had dessert and teas after. A very pleasant meal.'),
('U007','2018-02-13','M012D',5,'The steaks are well prepared but they really are known for their prime rib - the almost melt in your mouth variety'),
('U008','2018-02-16','M012D',4,'Execellent!'),
('U009','2018-03-04','M011A',3,'Not as refreshing as i hoped'),
('U010','2018-03-08','M011A',4,'Terrific for non-asian place'),
('U011','2018-03-08','M011B',3,'Could not tolerate the spices, but good otherwise'),
('U012','2018-03-23','M011B',2,'disgusting'),
('U014','2017-12-15','M011C',5,'Best ones i have tried so far'),
('U015','2017-12-19','M011C',4,'the sweetness and juciness just made me grab seconds'),
('U001','2018-01-31','M011D',5,'My all time favourite'),
('U002','2018-02-03','M011D',1,'Never ordering it again'),
('U004','2018-02-06','M010A',4,'Felt like festival of flavours'),
('U005','2018-02-10','M010B',3,'First time i tried it. It was not bad'),
('U006','2018-02-16','M010B',4,'so many selections to choose from'),
('U007','2018-02-14','M010C',5,'completely as adventurous as it sounds'),
('U008','2018-02-17','M010C',4,'It had unexpected flavours'),
('U009','2018-03-05','M010D',5,'Would have given it a 1000 if possible'),
('U010','2018-03-09','M010D',1,'a little too bland for my taste'),
('U011','2018-03-10','M009A',4,'unexpected twist to mashed potates'),
('U014','2017-12-16','M009B',5,'The spicyness is toned down and its great'),
('U015','2017-12-20','M009B',4,'felt like home!'),
('U001','2018-01-26','M009C',2,'A little too sour for my taste'),
('U002','2018-01-01','M009C',4,'Just as tasteful as visually appealing'),
('U003','2018-02-04','M009D',5,'Best snack ever!'),
('U004','2018-02-07','M009D',4,'Quick and filling snack!'),
('U005','2018-02-11','M008A',3,'well-seasoned and grilled well'),
('U006','2018-02-17','M008A',5,'super tasty!'),
('U007','2018-02-15','M008B',5,'Best ones ever!'),
('U008','2018-02-18','M008B',4,'Definitely gonna come back for them'),
('U009','2018-03-06','M008C',5,'So pleased with the different options available'),
('U010','2018-03-11','M008C',2,'the greens were not fresh at all'),
('U011','2018-03-13','M008D',4,'a very quick fast meal for a short break!'),
('U012','2018-03-24','M008D',3,'Flavouful!'),
('U014','2017-12-17','M007A',5,'a great starter for vegetarians'),
('U015','2017-12-21','M007A',3,'Spicy is not spicy enough for me'),
('U001','2018-02-26','M007B',4,'Always wondered how they tasted - did not let me down'),
('U002','2018-02-14','M007B',1,'was too salty'),
('U003','2018-02-09','M007C',5,'Such a good deal for a reasonable price'),
('U004','2018-02-26','M007C',2,'Theres way too much tofuuuu'),
('U005','2018-02-17','M007D',5,'Definition of Korean cuisine');