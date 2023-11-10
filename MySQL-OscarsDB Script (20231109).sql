create database Oscarsdb;
use Oscarsdb;

drop table Genre;
create table Genre
(genre_id int primary key auto_increment,
genre_name varchar(30));

drop table Movie;
create table Movie (
mov_id int primary key auto_increment,
mov_title varchar (150),
mov_description varchar (150),
mov_relyear year, 
mov_language varchar (25), 
mov_runtime int,
mov_director varchar (100),
mov_cast varchar (150),
mov_rating float,
mov_genre_id int references Movie_genre(genre_id));


insert into genre values (1001,'Action');
insert into genre values (1002,'Adventure');
insert into genre values (1003,'Animation');
insert into genre values (1004,'Comedy');
insert into genre values (1005,'Romance');
insert into genre values (1006,'Thriller');
insert into genre values (1007,'Drama');

insert into Movie values ( 001,'Titanic','A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.',1997,'English','194','James Cameron','Leonardo DiCaprio, Kate Winslet, Billy Zane, Kathy Bates',7.9,1005);
insert into Movie values ( 002,'Schindlers List','In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce.',1993,'English','195','Steven Spielberg','Liam Neeson, Ralph Fiennes, Ben Kingsley, Caroline Goodall',9,1007);
insert into Movie values ( 003,'Everything Everywhere All at Once','A middle-aged Chinese immigrant is swept up into an insane adventure in which she alone can save existence',2022,'English','139','Daniel Kwan, Daniel Scheinert ',' Michelle Yeoh, Stephanie Hsu, Jamie Lee Curtis, Ke Huy Quan',7.8,1004);
insert into Movie values ( 004,'Forrest Gump','The history of the United States from the 1950s to the 70s unfolds from the perspective of an Alabama man with an IQ of 75.',1994,'English','142','Robert Zemeckis','Tom Hanks, Robin Wright, Gary Sinise, Sally Field',8.8,1007);
insert into Movie values ( 005,'Slumdog Millionaire','A Mumbai teenager reflects on his life after being accused of cheating on the Indian version of "Who Wants to be a Millionaire?"',2008,'English','120','Danny Boyle','Dev Patel, Freida Pinto, Saurabh Shukla, Anil Kapoor',8.0,1005);

select * from genre;
select * from movie;
