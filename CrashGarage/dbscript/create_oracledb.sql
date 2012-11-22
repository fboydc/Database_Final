drop table cost_details;
drop table images;
drop table requests;
drop table cars;
drop table repair_jobs;
drop table users;

create table users
(
    username varchar(50),
    password varchar(20),
    fname varchar(10),
    lname varchar(10),
    primary key(username)
);

create table repair_jobs
(
	rid int,
	status char(10),
	name varchar(50),
	description varchar(500),
	category varchar(20),
	starttime date,
	completetime date,
	estimateddays int,
	primary key (rid),
	constraint status_constraint check(status in ('new','processing','completed'))
);

create table cars
(
	platenumber varchar(10),
	maker varchar(20),
	model varchar(20),
	image varchar(100),
	vin varchar(50),
	cartype varchar(10),
	purchasedate date,
	primary key(platenumber),
	constraint cartype_constraint check(cartype in ('SUV', 'sedan', 'van', 'pickup'))
);

create table requests
(
	rid int,
	username varchar(50),
	platenumber varchar(10),
	foreign key (rid) references repair_jobs(rid),
	foreign key (username) references users(username),
	foreign key (platenumber) references cars(platenumber)
);

create table images
(
	imageid int, 
	path varchar(100),
	rid int,
	primary key(imageid),
	foreign key (rid) references repair_jobs(rid)
);

create table cost_details
(
	item varchar(30),
	unitprice float,
	amount float,
	totalprice float,
	rid int,
	foreign key(rid) references repair_jobs(rid)
);