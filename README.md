# Campus-Eats
Project Group 1\
Group Members: Katie Anders, Kris Bowen, Ashwin John, Thao Nguyen, and Nick Tallent.\
\

## Scope of the Project
In this project, a database regarding Food Delivery on Campus is provided to us. Understand a test database for a campus-controlled food delivery service similar to craveoncampus.com. Based on this database, we are going to generate rating tables for restaurants and drivers. Our rating tables will be sorted by high to low rating or low to high rating (5 is the highest and 1 is the lowest). Additionally, there will be two views that uses join, Query Optimization, and a description of the types of users and their roles.

### Use Case for Rating System
<img width="664" alt="Screen Shot 2021-03-30 at 3 33 13 PM" src="https://user-images.githubusercontent.com/71344519/113046273-df5fea80-916d-11eb-848c-2a3b7519740f.png">

 
#### Business rules
1. Campus faculty, Staff, and Students are the only ones who can use this application
2. There are locations on campus that are designated drop spots
3. Delivery personnel must be approved
4. Only students can be delivery personnel
5. Fee of $5 for each transaction
6. A person can order one to many times
7. Individual delivery is tied to one and only one person
8. Orders are tied to one and only one restaurant
9. Unique identifier for each order to tie it to an individual restaurant

##### EERD fully normalized
![EERD_Campus_Eats_Team1_Spring2021](https://user-images.githubusercontent.com/71344519/113466686-b066a480-940b-11eb-949f-776adff95178.png)

###### Data Dictionary
