USE `MOVIESTONIGHT`;


Insert into MOVIE (Title, Rating)
Select distinct MTitle, Rating
from datasheet;

Insert into THEATER (TName, Location, Phone)
select distinct TName,location, phone
from datasheet;

Insert into ARTIST (AName)
select distinct CName
from datasheet;

select * from theater;

Insert into SHOWTIME (ShowTime, MovieID, TheaterID)
	select distinct ShowTime, MOVIE.MOVIEID, THEATER.THEATERID
    FROM MOVIE JOIN DATASHEET ON (MOVIE.TITLE = DATASHEET.MTITLE)
							JOIN THEATER ON (`DATASHEET`.`TName` = `THEATER`.`TName`);
#select * from `Show`

Insert into CREDIT (Ccode, ArtistID, MovieID)

select distinct Ccode, Movie.MovieID, ARTIST.ArtistID
From MOVIE JOIN DATASHEET ON (MOVIE.TITLE = DATASHEET.MTITLE)
					JOIN ARTIST ON (`DATASHEET`.`CName` = `ARTIST`.`AName`);

#Insert into CREDIT (Ccode, ArtistID, MovieID)
select distinct Ccode, ARTIST.ArtistID, MOVIE.MOVIEID
        FROM MOVIE JOIN DATASHEET ON (MOVIE.TITLE = DATASHEET.MTITLE)
								JOIN ARTIST ON (DATASHEET.CName = Artist.AName);
select * from `CREDIT`;

# check for duplicate rows
select TName, MTitle, Showtime, CName, CCode, count(*) as RowCount
from DATASHEET
GROUP BY TName, MTitle, Showtime, CName, CCode
Having RowCount > 1;


