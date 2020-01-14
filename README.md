## Neo.Natal.Application
### Web application developed Tri-C Coding Bootcamp

This application was devevloped as part of the capstone project for my coding bootcamp. I worked in a small team to design a web application that used public demographic and geographical data to develop a profile for women who had recently given birth. Using the prototype from a medical hackathon project, Neo+Natal was designed for healthcare workers to create, store, and retrieve unique infant mortality risk profiles for their clients, in the hopes of identifying and providing immediate care for those highest at risk. 

The application consists of three major parts: 

* The front-end UI, written in HTML, CSS, and JavaScript
* The back-end, using ASP.NET (I was the main developer for this piece) 
* The database, using Microsoft SQL Server (I developed the database. See SQL file)

My goal when developing the back-end of the application was to match the prototype as closely as possible. (clicking images will open new page).

###  Comparing the prototype and back-end development

###### The Client (front-end)
![Image of Client prototype front-end UI](/images/SignUpNewClient.png) 

###### The Client (back end)
![Image of Client back-end code](/images/Client.png)

***
###### The Survey (front-end)
![Image of survey prototype front-end UI](/images/ExistingSurvey.png)

###### The Survey (back end)
![Image of Survey back-end code](/images/Survey_Model.png)

***
##### The Database

A database was developed in MSSQL Server to create, store, and edit all Client, Survey, HealthcareWorker, and Login relevant information. Some fields are nullable with the expectation that some participants would not feel comfortable answering certain questions.

![Image of the database back-end code](/images/DB_Represetation.png)

![Image of the SQL Server database back-end code](/images/DB_ForClient.png)

