# **Spring Boot Project with Flyway and MySQL**
This project is a simple Spring Boot application that demonstrates how to integrate Flyway for database migration with MySQL. It includes basic setup and configuration for Flyway to handle database migrations automatically.

## **Table of Contents**
- Requirements
- Technologies Used
- Setup Instructions
  - Step 1: Clone the Repository
  - Step 2: Configure the Database
  - Step 3: Run the Application
  - Step 4: Verify Migrations
- Flyway Migration
- Folder Structure

## **Requirements**
- IntelliJ IDEA
- Java 17+
-MySQL
- Maven
## **Technologies Used**
- Java 17
- Spring Boot
- Flyway for database migration
- MySQL
## **Setup Instructions**
## **Step 1**: Clone the Repository
```bash
git clone https://github.com/your-username/your-repo.git
cd your-repo
```
## **Step 2**: Configure the Database
Ensure that MySQL is installed and running. Create a new database for the project:
```bash
CREATE DATABASE dataBase;
```
Update your `application.properties` with your MySQL credentials:
```properties
spring.datasource.url=jdbc:mysql://localhost:3306/dataBase
spring.datasource.username= databaseUsername
spring.datasource.password= databasePassword

#Flyway properties

spring.flyway.enabled=true
spring.flyway.baseline-on-migrate=true
```
## **Step 3**: Run the Application
Open the project in IntelliJ and run the application using the following Maven command:

```bash
mvn spring-boot:run
```
Alternatively, you can run the application by clicking on the green "Run" button in IntelliJ.

## **Step 4: Verify Migrations**
After running the application, Flyway will automatically run the migration scripts located in src/main/resources/db/migration. Check your MySQL database for the changes:

```bash
SHOW TABLES;
```
You should see tables that Flyway created based on your migration scripts.

## **Flyway Migration**
Flyway is used to manage and apply database schema migrations. All migration scripts are stored in the src/main/resources/db/migration directory.

For example, the first migration script V1__create_users_table.sql:

```sql
Copy code
CREATE TABLE users (
    user_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);
```
Flyway ensures that the migrations are applied in the correct order and are only applied once.

## **Folder Structure**
```bash
Copy code
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com/example/demo
│   │   ├── resources
│   │   │   ├── application.properties
│   │   │   └── db/migration
│   │   │       └── V1__create_users_table.sql
│   └── test
├── pom.xml
└── README.md
```


