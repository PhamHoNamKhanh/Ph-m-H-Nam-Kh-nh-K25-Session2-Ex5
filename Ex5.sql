create database Shopeewallet;
use ShopeeWallet;
create table users(
userId int primary key auto_increment,
userName varchar(80) not null,
phone char(15) not null unique,
email varchar(80) not null unique,
age int check(age > 0) not null
);
create table eWallet(
walletId int primary key auto_increment,
walletBalance decimal(18,2) not null check(walletBalance >= 0),
userWallet int not null unique,
foreign key (userWallet) references users (userId)
);
create table tradings(
tradeId int primary key auto_increment,
walletTradeId int not null,
foreign key (walletTradeId) references eWallet (walletId),
kindOfTrading varchar(50) not null,
amountOfCash decimal(18,2) not null check(amountOfCash >= 0),
dateOfTrade datetime default(current_timestamp()) not null,
statusOfTrade varchar(50) not null
);