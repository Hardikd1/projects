create database cantelecom;

use cantelecom;

create table if not exists billing(
	billing_id INT PRIMARY KEY,
    subscription_id int,
	billing_date DATE,
    amount_due DECIMAL (5,2),
    amount_paid DECIMAL (5,2),
    payment_date DATE,
    payment_method VARCHAR(56),
    FOREIGN KEY (subscription_id) references subscriptions(subscription_id)
);


create table if not exists customers(
	customer_id INT primary key,
	first_name CHAR (56),
    last_name CHAR (56),
    email VARCHAR (96),
    phone_number VARCHAR (20),
    address	VARCHAR (20),
    province VARCHAR(20),
    postal_code	VARCHAR (20),
    signup_date DATE
);

create table if not exists services(
	service_id INT PRIMARY KEY,
    service_name VARCHAR (30),
	service_type VARCHAR (20),
    monthly_cost DECIMAL (5,2)
);


create table if not exists subscriptions(
	subscription_id	int primary key,
	customer_id int,
    service_id int,
    service_type int, 
    start_date date,
	end_date date,
	subscription_status char (10),
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id),	
	FOREIGN KEY (service_id) REFERENCES services(service_id),
	FOREIGN KEY (service_type) REFERENCES services(service_id)
);


create table if not exists support_tickets(
	ticket_id int primary key,
    customer_id int,
    issue_date date,	
    issue_type char (56),	
    resolution_date date,	
    ticket_status char (56),
    foreign key (customer_id) references customers(customer_id)
);

create table if not exists service_usage(
	usage_id int primary key,
    subscription_id int,
    usage_date date,	
    data_used_gb decimal (5,2),	
    minutes_used int,
    foreign key (subscription_id) references subscriptions(subscription_id)
);

alter table customers add column city varchar(255);









