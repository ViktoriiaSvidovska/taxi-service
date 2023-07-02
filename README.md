





# <img src="target/util/img_30.png" alt="img_30.png" width="25" height=""> TAXI-SERVICE

![img_36.png](target%2Futil%2Fimg_36.png)


# <img src="target/util/img_40.png" alt="img_40.png" width="45" height=""> DESCRIPTION

___________


This demo-project is a web-based application designed as a taxi service management system. 

It offers features such as user authentication, registration, and CRUD operations.

Built using Java, Servlet API, JDBC, JSP, HTML, and JSTL.

The application provides a user-friendly interface for managing various aspects of the taxi service:
manufacturers, cars drivers.


# <img src="target/util/img_33.png" alt="img_33.png" width="25"/> Features
___________
- Authentication <br />
- Add/delete/update drivers <br />
- Add/delete/update car models <br />
- Add/delete/update cars <br />
- Add drivers to specific cars <br />
- View all drivers <br />
- View all cars <br />
- View all cars by the current driver <br />


# <img src="target/util/img_37.png" alt="img_37.png" width="15"/> Structure
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

![img_27.png](target%2Futil%2Fimg_27.png)

# <img src="target/util/img_28.png" alt="img_28.png" width="25"/> Used Technologies
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


# <img src="target/util/img_41.png" alt="img_41.png" width="25"/> Getting Started
___________
#### Prerequisites:
- Java 17 or later
- Apache Tomcat 9 (version 9.0.73 is recommended)
- MySQL 8 or later
#### Install process
1. Clone this repository.
2. Open the project in your IDE and build it.
3. Create the database schema and tables using src/main/resources/init_db.sql.
   ![img_42.png](target%2Futil%2Fimg_42.png)
4. Change the information about database connection in src/main/java/taxi/util/ConnectionUtil.java.
   ![img_44.png](target%2Futil%2Fimg_44.png)
   ![img_43.png](target%2Futil%2Fimg_43.png)
5. Configure Tomcat. 
    #### Use only Tomcat 9
   - choose war exploded <br />
   - leave only "/" in the application context <br />
   ![img_45.png](target%2Futil%2Fimg_45.png)
6. To launch the application you need to add a new manager (name, login and password) to the database.
7. Launch and use.

# Authors
___________
#### Viktoriia Svidovska
