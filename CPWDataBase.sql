CREATE TABLE IF NOT EXISTS employee (
	employee_ID int AUTO_INCREMENT NOT NULL,
	first_name varchar(25) NOT NULL,
    last_name varchar(25) NOT NULL,
	street_address varchar(30) NOT NULL,
	city varchar(40) NOT NULL,
	state char(2) NOT NULL,
	zip varchar(5)NOT NULL,
	type varchar(2) NOT NULL,
	hire_date date,

	CONSTRAINT type_check CHECK ((type = "fishery_worker") or (type = "stocker")),
	PRIMARY KEY (employee_ID)
);

CREATE TABLE IF NOT EXISTS fishery (
	 fishery_ID int AUTO_INCREMENT NOT NULL,
     name varchar(50) NOT NULL,
     street_adress varchar(30) NOT NULL,
     city varchar(45) NOT NULL,
     state char(2) NOT NULL,
     zip_code varchar(5) NOT NULL,
     phone_number varchar(12) NOT NULL,
     purpose varchar(250),
     
     PRIMARY KEY(fishery_ID)

);

CREATE TABLE IF NOT EXISTS fishery_worker(
	employee_ID int,
    fishery_ID int,
    
    PRIMARY KEY(employee_ID),
    CONSTRAINT fk_fishery_ID FOREIGN KEY (fishery_ID) REFERENCES fishery(fishery_ID),
	CONSTRAINT fk_employee_ID FOREIGN KEY (employee_ID) REFERENCES employee(employee_ID)
);

CREATE TABLE IF NOT EXISTS stocker(
	employee_ID int,
    
    PRIMARY KEY(employee_ID),
	CONSTRAINT fk_employee_ID FOREIGN KEY (employee_ID) REFERENCES employee(employee_ID)

);

CREATE TABLE IF NOT EXISTS fish (
	fish_ID int AUTO_INCREMENT NOT NULL,
    species varchar(30),
    size int NOT NULL,
    nativity varchar(30),
    waterType char(1),
    habitat varchar(100),
    
    PRIMARY KEY(fish_ID)
);

CREATE TABLE IF NOT EXISTS body_of_water (
	body_of_water_ID int AUTO_INCREMENT NOT NULL,
    name varchar(45) NOT NULL,
    county varchar(45) NOT NULL,
    depth_ft int NOT NULL,
    last_stock date NOT NULL,
    altitude_ft int NOT NULL,
    lat decimal(8,6) NOT NULL,
    lon decimal(8,6) NOT NULL,
    
    PRIMARY KEY(body_of_water_ID)
    
);

CREATE TABLE IF NOT EXISTS vehicle (
	vehicle_ID int AUTO_INCREMENT NOT NULL,
    type varchar(25) NOT NULL,
    fuel_type varchar(15),
    service_date date NOT NULL,
    license_number varchar(8),
    num_passengers int NOT NULL,
    
    PRIMARY KEY(vehicle_ID)

);
CREATE TABLE IF NOT EXISTS fish_fishery(
	fish_ID int NOT NULL,
    fishery_ID int NOT NULL,
    quantity int NOT NULL,
    
    primary key(fish_ID, fishery_ID),
    constraint fk_ff_fish_ID foreign key(fish_ID) references fish(fish_ID),
	constraint fk_ff_fishery_ID foreign key(fishery_ID) references fishery(fishery_ID)
);

CREATE TABLE IF NOT EXISTS fishery_body_of_water(
	fishery_ID int NOT NULL,
    body_of_water_ID int NOT NULL,
    number_of_loads int NOT NULL,
    
    primary key(fishery_ID, body_of_water_ID),
    constraint fk_fbow_fishery_ID foreign key(fishery_ID) references fishery(fishery_ID),
    constraint fk_fbow_body_of_water_ID foreign key(body_of_water_ID) references body_of_water(body_of_water_ID)    
);

CREATE TABLE IF NOT EXISTS body_of_water_vehicle(
	vehicle_ID int NOT NULL,
    body_of_water_ID int NOT NULL,
    
    primary key(vehicle_ID, body_of_water_ID),
    constraint fk_bowv_vehicle_ID foreign key(vehicle_ID) references vehicle(vehicle_ID),
    constraint fk_bowv_body_of_water_ID foreign key(body_of_water_ID) references body_of_water(body_of_water_ID)
);

CREATE TABLE IF NOT EXISTS stocker_vehicle(
	employee_ID int NOT NULL,
    vehicle_ID int NOT NULL,
    certification varchar(50),
    
    primary key(employee_ID, vehicle_ID),
    constraint fk_stockv_employee_ID foreign key(employee_ID) references stocker(employee_ID),
    constraint fk_stockv_vehicle_ID foreign key(vehicle_ID) references vehicle(vehicle_ID)
);
