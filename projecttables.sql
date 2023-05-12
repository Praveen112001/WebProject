mysql -u root -p

create database web_project;
use web_project;


create table login
(
Username varchar(30) not null auto_increment primary key,
Password varchar(8) not null unique
);

create table registration
(
Username varchar(230) not null unique,
UserId int(6) not null auto_increment primary key,
dob varchar(20),
phone int(15),
EMail varchar(40) not null unique,
gender varchar(10),
Password varchar(8) not null unique,
confirmpassword varchar(8) not null 
);


create table Forgot_password
(
UserId int(6) not null auto_increment primary key,
New_Password varchar(8) not null unique,
Confirm_Password varchar(8) not null 
);

create table Referencebook(
    bookName varchar(30),
    bookID int(9),
    Year int(4),
    class varchar(20)
);


CREATE TABLE user_sessions (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userid INT(11) NOT NULL,
    sessionid VARCHAR(255) NOT NULL,
    FOREIGN KEY (userid) REFERENCES users(id)
);

CREATE TABLE study_materials (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(255) NOT NULL,
    material_name VARCHAR(255) NOT NULL,
    material_description TEXT,
    material_link VARCHAR(255) NOT NULL,
    added_by INT(11) NOT NULL,
    added_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (added_by) REFERENCES users(id)
);

CREATE TABLE favorites (
    user_id INT(11) NOT NULL,
    study_material_id INT(11) NOT NULL,
    PRIMARY KEY (user_id, study_material_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (study_material_id) REFERENCES study_materials(id)
);



