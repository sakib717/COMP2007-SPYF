CREATE TABLE [dbo].[Game]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Name] VARCHAR(50) not null,
	[Description] VARCHAR(200) not null, 
	[PointsScoredTeam1] INT not null,
	[PointsScoredTeam2] INT not null, 
	[Spectators] INT not null, 
	[WinningTeam] VARCHAR(20) not null
)
