CREATE TABLE Users(
    Id number(4) primary key,
    Username varchar2(50) not null,
    email varchar2(50) not null,
    password_ac password(8) not null,
    maneger_id number(4) not null
    maneger number(4) references Menegers(Id) not null,
);

CREATE TABLE Menegers(
    Id number(4) primary key,
    Username varchar2(50) not null,
    email(login) varchar2(50) not null,
    password_ac password(8) not null
);

CREATE TABLE Subscriptions(
    Id number(4) primary key,
    TypeS varchar2(50) not null,
    Price number(4) not null,
    DescS varchar2(50)
);

CREATE TABLE user_subscriptions(
    Id number(4) primary key,
    userId number(4) not null,
    subscrId number(4) not null,
    subscriptions number(4) references Subscriptions(Id) not null,
);

CREATE TABLE Notes(
    Id number(4) primary key,
    userId number(4) not null,
    subscrId number(4) not null,
    description_of_action varchar2(50) not null,
    user_1 number(4) references Users(Id) not null
    recipient_1 number(4) references Recipients(Id) not null
);

CREATE TABLE Recipients(
    Id number(4) primary key,
    recip_name varchar2(50) not null,
    email varchar2(50) not null,
    userId varchar2(50) not null,
    descr varchar2(100) not null
    product_id number(4) not null,
    userId_1 number(4) references Users(Id) not null
);

CREATE TABLE Product(
    Id number(4) primary key,
    Brand varchar2(50) not null,
    aticle varchar2(100),
    recipient_id number(4) references Recipients(Id) not null
);