create database MIDTERM
go
use MIDTERM
go
create table Accounts(
	AcName nvarchar(100),
	Email	varchar(100),
	Phone	varchar(20),
	Avatar	varchar(max),
	primary key (Email)
)
go
create table Feeds(
	FID bigint,
	FDate date,
	FTime time,
	FLocation nvarchar(100),
	Content nvarchar(1000),
	LikeNo int,
	ShareNo int,
	CommentNo int,
	Email varchar(100),
	primary key (FID),
	foreign key (Email) references Accounts
)

go
create table Comments(
	FID bigint,
	CID varchar(10),
	CDate date,
	CTime time,
	Content nvarchar(1000),
	CommenterID varchar(100),
	primary key(FID, CID), 
	foreign key (FID) references Feeds,
	foreign key (CommenterID) references Accounts
)
