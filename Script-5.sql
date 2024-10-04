use opt_db;

create table Managers(
	ManagerID int primary key,
	ManagerName varchar(50),
	Age int,
	Nationality varchar(36),
	ClubID bigint,
	foreign key (ClubID) references Clubs(ClubID)
	);

create table Players(
	PlayerID bigint auto_increment primary key,
	PlayerName varchar(255),
	Pos varchar(255),
	Age int,
	ClubID bigint,
	foreign key (ClubID) references Clubs(ClubID)
	);

create table Leagues(
	LeagueID bigint auto_increment primary key,
	LeagueName varchar(255),
	Country varchar(255),
	LeagueRank int);

create table Agents(
	AgentID bigint primary key,
	AgentName varchar (36)
	);

create table Clubs(
	ClubID bigint auto_increment primary key,
	ClubName varchar (255),
	LeagueID bigint,
	foreign key (LeagueID) references Leagues(LeagueID));


select * from Leagues;

explain analyze select Country, avg(AGE) as avg_age from (
	select l.Country, count(c.ClubName) as clubtimes, p.Age
	from Leagues l
	join Clubs c
	on c.LeagueID = l.LeagueID 
	join Players p
	on c.ClubID = p.ClubID
	where pos = "Midfielder" or pos =  "Forward"
	group by l.Country, p.age
	having clubtimes > 12) as joined
group by Country
order by avg_age desc
limit 10;

create index country_idx
on Leagues (Country);
create index club_idx
on Clubs (ClubName);


explain analyze with joined as (
	select l.Country, p.Age
	from Leagues l
	join Clubs c
	on c.LeagueID = l.LeagueID 
	join Players p
	on c.ClubID = p.ClubID
	where pos = "Midfielder" or pos =  "Forward"
	group by l.Country, p.Age
	having count(c.ClubName) > 12)
select Country, avg(Age) as avg_age
from joined
group by Country
order by avg_age desc
limit 10;


drop index country_idx
on Leagues;
drop index club_idx
on Clubs;



