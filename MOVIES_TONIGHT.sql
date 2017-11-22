CREATE DATABASE MOVIES_TONIGHT;

USE MOVIES_TONIGHT;
#Creatte THEATER table 
CREATE TABLE THEATER (
	TheaterID int(11) NOT NULL auto_increment,
    TName varchar(250) default NULL,
    Location varchar(255) default NULL,
    Phone varchar(12) default NULL,
    PRIMARY KEY (TheaterID)
);
# Create MOVIE TABLE
CREATE TABLE MOVIE (
	MovieID int(11) NOT NULL auto_increment,
    Title varchar(100) default NULL,
    Rating varchar(50) default NULL,
    PRIMARY KEY (MovieID)
);
# Create ARTIST table
CREATE TABLE ARTIST (
	ArtistID int(11) NOT NULL auto_increment,
    AName varchar(255) default NULL,
    PRIMARY KEY (ArtistID)
);
# Create SHOW table
CREATE TABLE SHOWS (
	ShowID int(11) NOT NULL auto_increment, 
    ShowTime Time default NULL,
    MovieID int(11) default NULL,
    TheaterID int(11) default NULL,
    PRIMARY KEY (ShowID)
);

# Create CREDIT table
CREATE TABLE CREDIT (
	CreditID int(11) NOT NULL auto_increment,
    Ccode char(1) default NULL, 
    ArtistID int(11) default NULL,
    MovieID int(11) default NULL,
    PRIMARY KEY (CreditID)
);
#Add foreign key MovieID to SHOWTIME
ALTER TABLE SHOWS
  ADD FOREIGN KEY (MovieID)
    REFERENCES MOVIE  (MovieID);
#Add foreign key MovieID to SHOWTIME
ALTER TABLE SHOWS
  ADD FOREIGN KEY (TheaterID)
    REFERENCES Theater  (TheaterID);
#Add foreign key MovieID to CREDIT
ALTER TABLE CREDIT
  ADD FOREIGN KEY (MovieID)
    REFERENCES Movie  (MovieID);
#Add foreign key ArtistID to CREDIT
ALTER TABLE CREDIT
  ADD FOREIGN KEY (ArtistID)
    REFERENCES ARTIST  (ArtistID);    
