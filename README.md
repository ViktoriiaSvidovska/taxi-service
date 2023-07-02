
# <img alt="img_30.png" src="img_30.png" width="25"/> TAXI-SERVICE

<img alt="img_36.png" src="img_36.png"/>


#  <img alt="img_40.png" src="img_40.png" width="45"/> DESCRIPTION

___________


This demo-project is a web-based application designed as a taxi service management system. 

It offers features such as user authentication, registration, and CRUD operations.

Built using Java, Servlet API, JDBC, JSP, HTML, and JSTL.

The application provides a user-friendly interface for managing various aspects of the taxi service:
manufacturers, cars drivers.


#  <img alt="img_33.png" src="img_33.png" width="25"/> Features
___________
- Authentication <br />
- Add/delete/update drivers <br />
- Add/delete/update car models <br />
- Add/delete/update cars <br />
- Add drivers to specific cars <br />
- View all drivers <br />
- View all cars <br />
- View all cars by the current driver <br />


# <img alt="img_37.png" src="img_37.png" width="15"/> Structure
___________

#### Project 
<pre>
├───java 
│   └───taxi 
│       ├───controller         ---- User request processing controllers 
│       │   ├───car 
│       │   ├───driver 
│       │   ├───manufacturer
│       │   └───login
│       ├───dao                ---- The dao layer facilitates data management operations
│       ├───exception          ---- Custom exceptions
│       │   ├───authentication 
│       │   ├───data processing
│       │   └───duplicate                    
│       ├───lib                ---- Annotations and an injector for fields initialization  
│       ├───model              ---- Project models 
│       │   ├───car 
│       │   ├───driver 
│       │   ├───manager
│       │   └───manufacturer             
│       ├───service             ---- The service layer encapsulates the business logic 
│       ├───util                ---- Connection to the database 
│       └───web                 ---- Filter for authorisation
│           └───filter               control and restrict access to resources
├───resources                   ---- SQL script for creating taxi-service schema 
└───webapp                      ---- The web layer manage interactions within the application   
    └───WEB-INF
        ├───views               ---- JSP pages serve as dynamic web content                     
        │   ├───cars                         
        │   │   └───drivers  
        │   ├───css
        │   ├───drivers
        │   ├───manufacturers
        │   ├───index(menu)
        │   └───login
        └───web                  ---- Java web app configuration file

</pre>

#### Database

<img alt="img_27.png" src="img_27.png"/>


# <img alt="img_28.png" src="img_28.png" width="25"/> Used Technologies
___________
- Java 11 <br />
- MAVEN 4.0.0 <br />
- MYSQL 8.0.22 <br />
- JDBC <br />
- SERVLET 4.0.1 <br />
- JSP <br />
- JSTL 1.2 <br />
- CSS <br />
- TOMCAT 9.0.7


# <img alt="img_41.png" src="img_41.png" width="25"/> Getting Started
___________
#### Prerequisites:
- Java 17 or later
- Apache Tomcat 9 (version 9.0.73 is recommended)
- MySQL 8 or later
#### Install process
1. Clone this repository.
2. Open the project in your IDE and build it.
3. Create the database schema and tables using src/main/resources/init_db.sql.
   <img alt="img_42.png" src="img_42.png"/>
4. Change the information about database connection in src/main/java/taxi/util/ConnectionUtil.java.
    <img alt="img_44.png" src="img_44.png"/>
    <img alt="img_43.png" src="img_43.png"/>
5. Configure Tomcat. 
    #### Use only Tomcat 9
   - choose war exploded <br />
   - leave only "/" in the application context <br />
   <img alt="img_45.png" src="img_45.png"/>
6. To launch the application you need to add a new manager (name, login and password) to the database.
7. Launch and use.

