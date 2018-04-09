-- Mehezabin Ahamed 8524484
--Abha Sharma 8254435


CREATE TABLE Rater
(UserID VARCHAR(20) NOT NULL,
 Email VARCHAR(100) NOT NULL,
 Name VARCHAR(20),
 JoinDate DATE,
 Type VARCHAR(20),
 Reputation INTEGER,
 PRIMARY KEY (UserID),
 CHECK (Reputation BETWEEN 1 AND 5),
 CONSTRAINT chk_type CHECK(type IN ('blog','online','food critic'))
 );
 
CREATE TABLE Restaurant
(RestaurantID VARCHAR(20),
 Name VARCHAR(50),
 Type VARCHAR(20),
 URL VARCHAR(100),
 PRIMARY KEY(RestaurantID)
);
 
CREATE TABLE Rating 
(UserID VARCHAR(20),
 Date DATE,
 Price INTEGER,
 Food INTEGER,
 Mood INTEGER,
 Staff INTEGER,
 Comment VARCHAR(1000), 
 RestaurantID VARCHAR(20),
 FOREIGN KEY(UserID)
 	REFERENCES Rater,
 PRIMARY KEY(UserID, Date),
 CHECK (Price BETWEEN 1 AND 5),
 CHECK (Food BETWEEN 1 AND 5),
 CHECK (Mood BETWEEN 1 AND 5),
 CHECK (Staff BETWEEN 1 AND 5),
 FOREIGN KEY(RestaurantID)
 	REFERENCES Restaurant
);

-- Mehezabin Ahamed ------- 8524484
-- Abha Sharma ------------ 8254435
-- CSI2132 Project 

CREATE TABLE Location
(LocationID VARCHAR(20), 
 FirstOpenDate DATE,
 ManagerName VARCHAR(20),
 PhoneNum BIGINT,
 StreetAddress VARCHAR(50),
 HourOpen INTEGER,
 HourClose INTEGER,
 RestaurantID VARCHAR(20) NOT NULL,
 PRIMARY KEY (LocationID),
 FOREIGN KEY (RestaurantID)
	REFERENCES Restaurant,
 CHECK (HourOpen BETWEEN 1 AND 24),
 CHECK (HourClose BETWEEN 1 AND 24)
);

CREATE TABLE MenuItem
(ItemID VARCHAR(20) NOT NULL,
 Name VARCHAR(50),
 Type VARCHAR(20),
 Category VARCHAR(20),
 Description VARCHAR(500),
 Price NUMERIC(4,2),
 RestaurantID VARCHAR(20),
 CONSTRAINT chk_type2 CHECK (Type IN ('food','beverage')),
 CONSTRAINT chk_cat CHECK (Category IN ('starter', 'main', 'desert')),
 PRIMARY KEY (ItemID),
 FOREIGN KEY (RestaurantID)
 	REFERENCES Restaurant
);

CREATE TABLE RatingItem
(UserID VARCHAR(20),
 Date DATE,
 ItemID VARCHAR(20),
 Rating INTEGER,
 Comment VARCHAR(1000),
 CHECK (Rating BETWEEN 1 AND 5),
 FOREIGN KEY (UserID,Date)
 	REFERENCES Rating (UserID,Date),
 FOREIGN KEY (ItemID)
 	REFERENCES MenuItem(ItemID),
 PRIMARY KEY(UserID, Date, ItemID)
);