USE MOVIES_TONIGHT;

# Insert data into Movie Table
Insert into MOVIE (Title, Rating)
Select distinct MTitle, Rating
from datasheet;

select * from MOVIE;

# Insert data into Theater Table
Insert into THEATER (TName, Location, Phone)
select distinct TName,location, phone
from datasheet;

select * from THEATER;

# Insert data into ARTIST Table
Insert into ARTIST (AName)
select distinct CName
from datasheet;

select * from ARTIST;

#Insert data into SHOWS table
Insert into SHOWS (ShowTime, MovieID, TheaterID)
	select distinct ShowTime, MOVIE.MOVIEID, THEATER.THEATERID
    FROM MOVIE JOIN DATASHEET ON (MOVIE.TITLE = DATASHEET.MTITLE)
							JOIN THEATER ON (`DATASHEET`.`TName` = `THEATER`.`TName`);
select * from `SHOWS`;

# Insert data into CREDIT table
Insert into CREDIT (Ccode, MovieID, ArtistID)
	select distinct CCode, Movie.MovieID, ARTIST.ArtistID
	From MOVIE JOIN DATASHEET ON (MOVIE.TITLE = DATASHEET.MTITLE)
					JOIN ARTIST ON (`DATASHEET`.`CName` = `ARTIST`.`AName`);
select * from `CREDIT`;

# check for duplicate rows
select TName, MTitle, Showtime, CName, CCode, count(*) as RowCount
from DATASHEET
GROUP BY TName, MTitle, Showtime, CName, CCode
Having RowCount > 1;



