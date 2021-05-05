# Campus-Eats
Project Group 1\
Group Members: Katie Anders, Kris Bowen, Ashwin John, Thao Nguyen, and Nick Tallent.\
\

## Introduction
In this project, a database regarding Food Delivery on Campus is provided to us. Understand a test database for a campus-controlled food delivery service similar to craveoncampus.com. Based on this database, we are going to generate rating tables for restaurants and drivers. Our rating tables will be sorted by high to low rating or low to high rating (5 is the highest and 1 is the lowest). Additionally, there will be two views that uses join, Query Optimization, and a description of the types of users and their roles.

## Use Case for Rating System
<img width="664" alt="Screen Shot 2021-03-30 at 3 33 13 PM" src="https://user-images.githubusercontent.com/71344519/113046273-df5fea80-916d-11eb-848c-2a3b7519740f.png">

 
## Business rules
1. Campus faculty, Staff, and Students are the only ones who can use this application
2. There are locations on campus that are designated drop spots
3. Delivery personnel must be approved
4. Only students can be delivery personnel
5. Fee of $5 for each transaction
6. A person can order one to many times
7. Individual delivery is tied to one and only one person
8. Orders are tied to one and only one restaurant
9. Unique identifier for each order to tie it to an individual restaurant

## EERD fully normalized
![EERD_Campus_Eats_Team1_Spring2021](https://user-images.githubusercontent.com/71344519/113466686-b066a480-940b-11eb-949f-776adff95178.png)

## Data Dictionary
<img width="1426" alt="Table1" src="https://user-images.githubusercontent.com/71344519/113466859-02f49080-940d-11eb-922c-b6be5d67e105.png">

<img width="1427" alt="Table2" src="https://user-images.githubusercontent.com/71344519/113466863-10117f80-940d-11eb-88a2-64a805f35f53.png">
<img width="1426" alt="Table3" src="https://user-images.githubusercontent.com/71344519/113466869-16076080-940d-11eb-9ee4-2768907ba0ef.png">
<img width="1429" alt="Table4" src="https://user-images.githubusercontent.com/71344519/113466872-1acc1480-940d-11eb-97fd-9403d260fb76.png">
<img width="1427" alt="Table5" src="https://user-images.githubusercontent.com/71344519/113466873-1f90c880-940d-11eb-8686-b975b73aa3ea.png">

## Screenshots showing relationships of rating tables
<img width="1440" alt="restaurant_ratings(ScreenShot)" src="https://user-images.githubusercontent.com/71344519/114292152-7ffdb680-9a5a-11eb-9703-8b44d4788e74.png">

<img width="1437" alt="driver_rating(ScreenShot)" src="https://user-images.githubusercontent.com/71344519/114292160-8a1fb500-9a5a-11eb-88ae-a8ed71a7bb20.png">

<img width="1432" alt="rating(ScreenShot)" src="https://user-images.githubusercontent.com/71344519/114292168-9277f000-9a5a-11eb-81cb-dea9f43bbef5.png">

<img width="1435" alt="orders(ScreenShot)" src="https://user-images.githubusercontent.com/71344519/115776460-1fd41200-a382-11eb-81fa-d11728dfd582.png">


## Create Stored Procedure to calculate Average Rating
<img width="1440" alt="StoredProcedure_Avg_1" src="https://user-images.githubusercontent.com/71344519/115776399-1185f600-a382-11eb-89b2-6993fec97b62.png">

<img width="1440" alt="StoredProcedure_Avg_2" src="https://user-images.githubusercontent.com/71344519/115776431-19459a80-a382-11eb-9a3d-71558a4174e2.png">

## Screenshots showing Advanced Views

<img width="1440" alt="AdvancedView1" src="https://raw.githubusercontent.com/ITCS-3160/Campus-Eats/main/ScreenShots/AdvancedView1.png">
<img width="1440" alt="AdvancedView2" src="https://raw.githubusercontent.com/ITCS-3160/Campus-Eats/main/ScreenShots/AdvancedView2.png">

## Explain statements
EXPLAIN is a command for MySql that shows how the system executes a query. It tells you what is being executed and the order it is being executed in.

Explain statement for first advanced view. In this query the output shows that the driver_rating table is being used. The ALL under type shows that it is scanning the entire table. The extra column gives some tips on statements that can be used to optimize the query.
<img width="1440" alt="AdvancedView2" src="https://raw.githubusercontent.com/ITCS-3160/Campus-Eats/main/ScreenShots/AV1_Explain.png">

Explain statement for second advanced view. The output explains that the system is looking at the restuarant_ratings and rating tables. The eq_ref under type shows that it is using an index to access the table. The index in question is the primary key. The primary key is 4 characters in length. The ref statement means that the system is comparing the rating_id of the restuarant_ratings table to the index. 
<img width="1440" alt="AdvancedView2" src="https://raw.githubusercontent.com/ITCS-3160/Campus-Eats/main/ScreenShots/AV2_Explain.png">

## Indexes
Indexes are a way to improve query speed. Indexes can point to many things such as Primary Keys and Unique Keys. Indexes keep track of whatever is specified and has a reference pointing there. This helps the optimization of the database because it prevents the database from having to scan the entire table row by row. Instead, the database can look at the index to know where to go. This vastly improves the speed of the query on a large table and is very important.
