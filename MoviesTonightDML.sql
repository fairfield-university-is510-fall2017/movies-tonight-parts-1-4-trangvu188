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
select * from `Show`

insert into `CREDIT` (`CCode`, `ArtistID`, `MovieID`)
		select distinct CCode, Movie.MOVIEID, Artist.ArtistID
        from MOVIE JOIN DATASHEET ON (Movie.Title = DATASHEET.MTitile)
							JOIN ARTIST ON (DATASHEET.CName = Artists.`Name`);
select * from `CREDIT`;

# check for duplicate rows
select TName, MTitle, Showtime, CName, CCode, count(*) as RowCount
from DATASHEET
GROUP BY TName, MTitle, Showtime, CName, CCode
Having RowCount > 1;


