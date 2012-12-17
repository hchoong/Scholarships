Scholarships Review System designed by Howard Choong, Eric Engoron, Eric Wang

Components in this project
IDE: Netbeans
Language: Java
Frontend web: JSP, Javascripts, JQuery
Web design: Twitter bootstrap, CSS
Controller: HttpServlet
Backend database: local MySQL database
Database connector: MySQL(Connector/J Driver), Hibernate, JPA annotations
Repository: GitHub

Project package
Web Pages: all css, javascript and jsp pages
Source default package: Hibernate config file, hibernate.cfg.xml
cse333.srs.config: Hibernate
cse333.srs.dao: database query files
cse333.srs.domain: model entities from database
cse333.srs.service: servlet controller
Project config file: web.xml

Guide to run this project file

1) zip-file
Use Netbeans IDE to import the project into the working directory.

2) github
The project is available in the github remote repository with the link below:
clone https://github.com/hwd91c/Scholarships.git
This should checkout all the projects from the repository.

After checkout the project in Netbeans IDE, change the configuration in \src\java\hibernate.cfg.xml
to match the local mysql database username and password.
Then, run the scholarships_db.sql file to import all the tables and data to the local database.
Finally, run the project with Apache Tomcat Server. It should bring you to the default login page.