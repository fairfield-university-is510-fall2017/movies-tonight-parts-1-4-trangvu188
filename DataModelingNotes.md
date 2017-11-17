# Data Modeling Note

## Normalization Analysis

### 1NF Conversion
(TName, Location, Phone, MTitle, ShowTime, Rating, Ccode, CName)
Theater(TName,LoCation,Phone)
Movie(MTitle, ShowTime,Rating)
Credit(Ccode,CName)
### 2NF Conversion
TName --> Location, Phone
MTile --> rating
TName,MTile --> ShowTime
MTile,CName --> Ccode
Theater(ID,TName,Location,Phone)
Movie(ID,MTitle,Rating)
Show(ID,MTitle,ShowTime,TName)
CCode(ID,CName,Ccode,MTitle)
### 3NF Conversion
Theater(ID,Name,Location,Phone)
Movie(ID,Title,Rating)
Show(ID,ShowTime, titleID, TNameID)
Credit(ID,Ccode, ArtistID, MovieID)
Artist(ID, Name)

## Entity Relationship Model.
  MovieTonightsERD.png
