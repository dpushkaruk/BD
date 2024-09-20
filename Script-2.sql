create pa1;
use pa1;

create table Managers(
	ManagerID int primary key,
	ManagerName varchar(50),
	Age int,
	Nationality varchar(36),
	ClubID bigint,
	foreign key (ClubID) references Clubs(ClubID)
	);

create table Players(
	PlayerID bigint primary key,
	PlayerName varchar(50),
	Pos varchar(36),
	Age int,
	ClubID bigint,
	foreign key (ClubID) references Clubs(ClubID),
	AgentID bigint,
	foreign key (AgentID) references Agents(AgentID)
	);

create table Leagues(
	LeagueID bigint primary key,
	LeagueName varchar(36),
	Country varchar(36),
	LeagueRank int);

create table Agents(
	AgentID bigint primary key,
	AgentName varchar (36)
	);

create table Clubs(
	ClubID bigint primary key,
	ClubName varchar (36),
	LeagueID bigint,
	foreign key (LeagueID) references Leagues(LeagueID));

-- Inserting data into Leagues
INSERT INTO Leagues (LeagueID, LeagueName, Country, LeagueRank)
VALUES 
(1, 'Premier League', 'England', 1),
(2, 'La Liga', 'Spain', 2),
(3, 'Serie A', 'Italy', 3),
(4, 'Bundesliga', 'Germany', 4),
(5, 'Ligue 1', 'France', 5),
(6, 'Eredivisie', 'Netherlands', 6),
(7, 'MLS', 'USA', 7);

-- Inserting data into Clubs
INSERT INTO Clubs (ClubID, ClubName, LeagueID)
VALUES 
(1, 'Manchester United', 1),
(2, 'Chelsea FC', 1),
(3, 'Liverpool FC', 1),
(4, 'Real Madrid', 2),
(5, 'Barcelona', 2),
(6, 'Atletico Madrid', 2),
(7, 'Juventus', 3),
(8, 'Inter Milan', 3),
(9, 'AC Milan', 3),
(10, 'Bayern Munich', 4),
(11, 'Borussia Dortmund', 4),
(12, 'RB Leipzig', 4),
(13, 'PSG', 5),
(14, 'Lyon', 5),
(15, 'Marseille', 5),
(16, 'Ajax', 6),
(17, 'PSV Eindhoven', 6),
(18, 'Feyenoord', 6),
(19, 'LA Galaxy', 7),
(20, 'Inter Miami', 7);

-- Inserting data into Agents
INSERT INTO Agents (AgentID, AgentName)
VALUES 
(1, 'Mino Raiola'),
(2, 'Jorge Mendes'),
(3, 'Jonathan Barnett'),
(4, 'Pini Zahavi'),
(5, 'Volker Struth');

-- Inserting data into Managers
INSERT INTO Managers (ManagerID, ManagerName, Age, Nationality, ClubID)
VALUES 
(1, 'Erik ten Hag', 52, 'Netherlands', 1),
(2, 'Mauricio Pochettino', 51, 'Argentina', 2),
(3, 'Jurgen Klopp', 56, 'Germany', 3),
(4, 'Carlo Ancelotti', 61, 'Italy', 4),
(5, 'Xavi Hernandez', 43, 'Spain', 5),
(6, 'Diego Simeone', 53, 'Argentina', 6),
(7, 'Massimiliano Allegri', 53, 'Italy', 7),
(8, 'Simone Inzaghi', 47, 'Italy', 8),
(9, 'Stefano Pioli', 57, 'Italy', 9),
(10, 'Julian Nagelsmann', 36, 'Germany', 10),
(11, 'Edin Terzić', 40, 'Germany', 11),
(12, 'Marco Rose', 47, 'Germany', 12),
(13, 'Luis Enrique', 54, 'Spain', 13),
(14, 'Laurent Blanc', 58, 'France', 14),
(15, 'Igor Tudor', 45, 'Croatia', 15),
(16, 'Maurice Steijn', 49, 'Netherlands', 16),
(17, 'Peter Bosz', 60, 'Netherlands', 17),
(18, 'Arne Slot', 45, 'Netherlands', 18),
(19, 'Greg Vanney', 49, 'USA', 19),
(20, 'Tata Martino', 61, 'Argentina', 20);

-- Inserting data into Players
INSERT INTO Players (PlayerID, PlayerName, Pos, Age, ClubID, AgentID)
VALUES 
-- Players for Manchester United
(1, 'Marcus Rashford', 'Forward', 25, 1, 2),
(2, 'Bruno Fernandes', 'Midfielder', 29, 1, 2),
(3, 'Lisandro Martinez', 'Defender', 26, 1, 4),
(4, 'Mason Mount', 'Midfielder', 24, 1, 5),
(5, 'Anthony Martial', 'Forward', 28, 1, 1),

-- Players for Chelsea FC
(6, 'Raheem Sterling', 'Forward', 29, 2, 2),
(7, 'Thiago Silva', 'Defender', 38, 2, 1),
(8, 'Enzo Fernandez', 'Midfielder', 23, 2, 3),
(9, 'Reece James', 'Defender', 24, 2, NULL),
(10, 'Nicolas Jackson', 'Forward', 22, 2, 5),

-- Players for Liverpool FC
(11, 'Mohamed Salah', 'Forward', 31, 3, 4),
(12, 'Virgil van Dijk', 'Defender', 32, 3, 1),
(13, 'Alisson Becker', 'Goalkeeper', 31, 3, 2),
(14, 'Diogo Jota', 'Forward', 27, 3, 2),
(15, 'Trent Alexander-Arnold', 'Defender', 25, 3, 5),

-- Players for Real Madrid
(16, 'Vinicius Junior', 'Forward', 23, 4, 3),
(17, 'Luka Modric', 'Midfielder', 38, 4, 1),
(18, 'Federico Valverde', 'Midfielder', 25, 4, 4),
(19, 'David Alaba', 'Defender', 31, 4, 2),
(20, 'Antonio Rudiger', 'Defender', 30, 4, 5),

-- Players for Barcelona
(21, 'Robert Lewandowski', 'Forward', 35, 5, 1),
(22, 'Frenkie de Jong', 'Midfielder', 27, 5, 2),
(23, 'Pedri', 'Midfielder', 21, 5, 3),
(24, 'Ronald Araujo', 'Defender', 24, 5, 4),
(25, 'Jules Kounde', 'Defender', 25, 5, 5),

-- Players for Atletico Madrid
(26, 'Antoine Griezmann', 'Forward', 33, 6, 1),
(27, 'Koke', 'Midfielder', 32, 6, 4),
(28, 'Rodrigo De Paul', 'Midfielder', 29, 6, 2),
(29, 'Jan Oblak', 'Goalkeeper', 31, 6, 5),
(30, 'Saul Niguez', 'Midfielder', 29, 6, 3),

-- Players for Juventus
(31, 'Federico Chiesa', 'Forward', 26, 7, 1),
(32, 'Dusan Vlahovic', 'Forward', 24, 7, 3),
(33, 'Paul Pogba', 'Midfielder', 31, 7, 2),
(34, 'Leonardo Bonucci', 'Defender', 36, 7, 4),
(35, 'Manuel Locatelli', 'Midfielder', 25, 7, 5),

-- Players for Inter Milan
(36, 'Lautaro Martinez', 'Forward', 26, 8, 1),
(37, 'Nicolo Barella', 'Midfielder', 27, 8, 4),
(38, 'Andre Onana', 'Goalkeeper', 28, 8, 2),
(39, 'Milan Skriniar', 'Defender', 29, 8, 5),
(40, 'Denzel Dumfries', 'Defender', 27, 8, 3),

-- Players for AC Milan
(41, 'Olivier Giroud', 'Forward', 37, 9, 1),
(42, 'Theo Hernandez', 'Defender', 26, 9, 2),
(43, 'Rafael Leao', 'Forward', 25, 9, 3),
(44, 'Mike Maignan', 'Goalkeeper', 28, 9, 4),
(45, 'Fikayo Tomori', 'Defender', 25, 9, 5),

-- Players for Bayern Munich
(46, 'Harry Kane', 'Forward', 30, 10, 2),
(47, 'Joshua Kimmich', 'Midfielder', 29, 10, 3),
(48, 'Leon Goretzka', 'Midfielder', 29, 10, 4),
(49, 'Thomas Muller', 'Forward', 34, 10, 5),
(50, 'Manuel Neuer', 'Goalkeeper', 38, 10, 1),

-- Players for Borussia Dortmund
(51, 'Jude Bellingham', 'Midfielder', 21, 11, 2),
(52, 'Sebastien Haller', 'Forward', 29, 11, 1),
(53, 'Marco Reus', 'Midfielder', 35, 11, 4),
(54, 'Mats Hummels', 'Defender', 35, 11, 3),
(55, 'Giovanni Reyna', 'Midfielder', 21, 11, 5),

-- Players for RB Leipzig
(56, 'Timo Werner', 'Forward', 28, 12, 1),
(57, 'Dani Olmo', 'Midfielder', 26, 12, 2),
(58, 'Christopher Nkunku', 'Forward', 26, 12, 3),
(59, 'Willi Orban', 'Defender', 31, 12, 4),
(60, 'Emil Forsberg', 'Midfielder', 32, 12, 5),

-- Players for PSG
(61, 'Kylian Mbappe', 'Forward', 25, 13, 1),
(62, 'Neymar Jr', 'Forward', 32, 13, 2),
(63, 'Ousmane Dembele', 'Forward', 25, 13, 3),
(64, 'Marco Verratti', 'Midfielder', 31, 13, 4),
(65, 'Sergio Ramos', 'Defender', 38, 13, 5),

-- Players for Lyon
(66, 'Alexandre Lacazette', 'Forward', 33, 14, 2),
(67, 'Rayan Cherki', 'Midfielder', 21, 14, 1),
(68, 'Maxence Caqueret', 'Midfielder', 23, 14, 5),
(69, 'Corentin Tolisso', 'Midfielder', 30, 14, 3),
(70, 'Jerome Boateng', 'Defender', 36, 14, 4),

-- Players for Marseille
(71, 'Dimitri Payet', 'Midfielder', 37, 15, 3),
(72, 'Matteo Guendouzi', 'Midfielder', 25, 15, 2),
(73, 'Arkadiusz Milik', 'Forward', 30, 15, 1),
(74, 'Jonathan Clauss', 'Defender', 31, 15, 4),
(75, 'Pau Lopez', 'Goalkeeper', 29, 15, 5),

-- Players for Ajax
(76, 'Dusan Tadic', 'Forward', 35, 16, 1),
(77, 'Steven Bergwijn', 'Forward', 26, 16, 3),
(78, 'Jurrien Timber', 'Defender', 23, 16, 4),
(79, 'Edson Alvarez', 'Midfielder', 26, 16, 5),
(80, 'Mohammed Kudus', 'Midfielder', 24, 16, 2),

-- Players for PSV Eindhoven
(81, 'Cody Gakpo', 'Forward', 25, 17, 2),
(82, 'Ibrahim Sangare', 'Midfielder', 26, 17, 5),
(83, 'Xavi Simons', 'Midfielder', 21, 17, 3),
(84, 'Luuk de Jong', 'Forward', 33, 17, 1),
(85, 'André Ramalho', 'Defender', 32, 17, 4),

-- Players for Feyenoord
(86, 'Orkun Kokcu', 'Midfielder', 24, 18, 1),
(87, 'Santiago Gimenez', 'Forward', 23, 18, 2),
(88, 'Lutsharel Geertruida', 'Defender', 23, 18, 3),
(89, 'Alireza Jahanbakhsh', 'Forward', 30, 18, 4),
(90, 'Justin Bijlow', 'Goalkeeper', 26, 18, 5),

-- Players for LA Galaxy
(91, 'Chicharito Hernandez', 'Forward', 36, 19, 1),
(92, 'Douglas Costa', 'Forward', 33, 19, 2),
(93, 'Riqui Puig', 'Midfielder', 25, 19, 3),
(94, 'Julián Araujo', 'Defender', 23, 19, 4),
(95, 'Jonathan Bond', 'Goalkeeper', 31, 19, 5),

-- Players for Inter Miami
(96, 'Lionel Messi', 'Forward', 37, 20, 3),
(97, 'Josef Martinez', 'Forward', 30, 20, 1),
(98, 'Sergio Busquets', 'Midfielder', 35, 20, 2),
(99, 'DeAndre Yedlin', 'Defender', 30, 20, 5),
(100, 'Drake Callender', 'Goalkeeper', 26, 20, 4);

with FullTable as (
	select l.LeagueName, p.PlayerID, p.Age, p.Pos
	from Leagues l
	join Clubs c
	on l.LeagueID = c.LeagueID
	join Players p
	on p.ClubID = c.ClubID
	join Agents a
	on a.AgentID = p.AgentID
	join Managers m
	on m.ClubID = c.ClubID)
select League, PlayersAmount, Position from (
select f.LeagueName as League , count(f.PlayerID) as PlayersAmount, f.Pos as Position
from FullTable f
where f.age > 26
and f.Pos = 'Defender'
group by League
order by PlayersAmount) as Defenders_over_26
union all
select League, PlayersAmount, Position from (
select f.LeagueName as League , count(f.PlayerID) as PlayersAmount, f.Pos as Position
from FullTable f
where f.age > 26
and f.Pos = 'Midfielder'
group by League
order by PlayersAmount) as Midfielders_over_26
union all
select League, PlayersAmount, Position from (
select f.LeagueName as League , count(f.PlayerID) as PlayersAmount, f.Pos as Position
from FullTable f
where f.age > 26
and f.Pos = 'Forward'
group by League
order by PlayersAmount) as Forwards_over_26;






	
