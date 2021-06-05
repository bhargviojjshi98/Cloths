 create database cloths;
 use cloths;
CREATE TABLE Users
     (
     ID int PRIMARY KEY AUTO_INCREMENT,
     Email varchar(30),
     Mobile varchar(10),
     Name varchar(50),
     Address varchar(50),
     Quantity varchar(50),
    donatedate  datetime default now(),
    reseaved boolean default false 
    );
    
