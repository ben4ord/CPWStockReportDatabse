ALTER TABLE fish
MODIFY waterType varchar(15) NOT NULL;

ALTER TABLE body_of_water
MODIFY lon decimal(8,4) NOT NULL;

ALTER TABLE vehicle
MODIFY fuel_type varchar(25) NOT NULL;

ALTER TABLE employee
ADD phone_number varchar(12) NOT NULL AFTER zip;

ALTER TABLE employee
MODIFY type varchar(25) NOT NULL;

ALTER TABLE fishery
CHANGE COLUMN street_adress street_address varchar(30) NOT NULL;

ALTER TABLE stocker_vehicle
MODIFY certification varchar(100) NOT NULL;

ALTER TABLE fish
MODIFY nativity varchar(100) NOT NULL;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE fish, employee;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO body_of_water(name,county,depth_ft,last_stock,altitude_ft,lat,lon)
values("Blue Mesa Reservoir","Gunnison",341,"2024-10-11",7519,38.4703,-107.220),
("Elevenmile Reservior","Park",109,"2024-1-25",8567,38.95,-105.55),
("Antero Reservior","Park",15,"2022-12-25",8944,38.59,-105.5356),
("Spinney Mountain Reservior","Park",60,"2024-11-22",8710,38.98,-105.64),
("Arkansas River #3B","Chaffee",12,"2024-11-01",7989,38.923,-106.1699),
("Gunnison River","Gunnison",10,"2024-11-4",7710,38.531,-106.949),
("Mergleman Pond","Gunnison",10,"2022-8-5",7710,38.530,-106.946),
("Erie Lake","Erie",14,"2024-10-11",5130,38.95,-105.55),
("Standley Lake","Westminster",96,"2024-5-20",5503,39.863,-105.124),
("Douglas Reservior","Larimer",30,"2024-11-22",5205,40.7015,-105.081),
("Cherry Creek Reservoir","Arapahoe",32,"2024-11-01",5551,39.6405, -104.858),
("Grand Lake","Grand",389,"2024-10-11",8439,40.2522,-105.8231),
("Lake Isabel","Pueblo",185,"2024-08-28",8600,37.9844,-105.0525),
("Blue Lake","Bent",253,"2024-06-12",12220,38.95,-105.55),
("Irwin Lake","Gunnison",45,"2024-08-12",10200,38.8801,-107.1049);

INSERT INTO fish(fish_ID,species,size,nativity,waterType,habitat)
VALUES (1,"Rainbow Trout",4,"North ","Fresh","Lakes and Rivers"),
(2,"Brown Trout",5,"Europe and Asia","Fresh","Lakes and Rivers"),
(3,"Brook Trout",3,"North America","Fresh","Lakes and Rivers"),
(4,"Lake Trout",5,"North America","Fresh","Lakes and Rivers"),
(5,"Kokanee Salmon",2,"North Pacific Ocean","Fresh and Salt","Lakes, Rivers, and Oceans"),
(6,"Sockeye Salmon",2,"North America","Fresh","Lakes and Rivers"),
(7,"Cutthroat Trout",6,"North America Pacific Coast","Fresh","Lakes and Rivers"),
(8,"Bull Trout",8,"North America","Fresh","Lakes and Rivers"),
(9,"Rainbow Trout",4,"North America","Fresh","Lakes and Rivers"),
(10,"Rainbow Trout",4,"North America","Fresh","Lakes and Rivers"),
(11,"Greenback Cutthroat Trout",4,"North America (Colorado and Wyoming)","Fresh","Lakes and Rivers"),
(12,"Colorado River Cutthroat Trout",6,"North America (Colorado)","Fresh","Lakes and Rivers"),
(13,"Northern Pike",12,"North America and Asia","Fresh","Lakes and Rivers"),
(14,"Muskie",12,"North America","Fresh","Lakes and Rivers"),
(15,"Great White Sharks",24,"All Oceans","Salt","Oceans");

INSERT INTO vehicle(vehicle_ID, type, fuel_type, service_date, license_number, num_passengers)
VALUES (1, "Semi", "Diesel", "2023-08-15", "YN4-G92", 2),
(2, "SUV-Chevy", "Gasoline", "2023-07-10", "MX3-P27", 7),
(3, "Sedan-Nissan-GTR", "Gasoline", "2024-06-18", "KL5-T82", 4),
(4, "Airbus A330", "Jet Fuel", "2023-09-05", "RP-0253", 400),
(5, "Bus", "Diesel", "2023-05-23", "RV8-J03", 50),
(6, "Cessna 185 Skywagon", "100 octane Avgas", "2023-08-30", "RP-1748", 2),
(7, "Pickup Truck", "Diesel", "2023-07-14", "WT3-X45", 5),
(8, "Bay Boat", "Gasoline", "2024-06-20", "PF4-Y78", 4),
(9, "Minivan", "Gasoline", "2023-09-01", "ZX2-Q55", 7),
(10, "Electric Truck", "Electric", "2023-08-25", "EV1-K33", 5),
(11, "Hybrid SUV", "Gasoline-Electric", "2024-07-18", "HY9-M66", 7),
(12, "Cargo Van", "Diesel", "2023-06-22", "CV3-L89", 2),
(13, "Skiff", "Gasoline", "2023-09-10", "SC7-R81", 4),
(14, "Jeep", "Gasoline", "2023-08-05", "JP8-X74", 5),
(15, "Shuttle Bus", "Diesel", "2024-07-28", "SB5-V90", 25),
(16, "Moped", "Gasoline", "2024-06-30", "LM2-P44", 2);

INSERT INTO employee(employee_ID, first_name, last_name, street_address, city, state, zip, phone_number, type, hire_date)
VALUES (1, "John", "Smith", "404 North Virginia St", "Colorado Springs", "CO", "80910", "719-537-8224", "fishery_worker", "2020-10-18"),
(2, "Jane", "Doe", "123 Elm Street", "Denver", "CO", "80203", "720-555-1234", "fishery_worker", "1994-05-12"),
(3, "Michael", "Brown", "456 Oak Avenue", "Boulder", "CO", "80302", "303-987-6543", "fishery_worker", "2002-07-22"),
(4, "Emily", "Davis", "789 Maple Blvd", "Aurora", "CO", "80014", "303-555-6789", "fishery_worker", "2024-03-15"),
(5, "David", "Wilson", "321 Pine Road", "Fort Collins", "CO", "80525", "970-555-4321", "stocker", "2020-11-30"),
(6, "Sarah", "Johnson", "654 Cedar Lane", "Pueblo", "CO", "81001", "719-555-2468", "stocker", "2023-01-05"),
(7, "Matthew", "Taylor", "987 Birch Court", "Lakewood", "CO", "80226", "720-555-7890", "stocker", "2018-08-09"),
(8, "Ashley", "Martinez", "159 Spruce Street", "Greeley", "CO", "80631", "970-555-1235", "fishery_worker", "2003-06-10"),
(9, "Joshua", "Anderson", "753 Fir Avenue", "Thornton", "CO", "80241", "303-555-4567", "stocker", "2024-12-01"),
(10, "Jessica", "Thomas", "951 Aspen Drive", "Littleton", "CO", "80123", "720-555-8910", "stocker", "2024-02-14"),
(11, "Daniel", "Lewis", "112 Willow Street", "Arvada", "CO", "80003", "720-555-9987", "fishery_worker", "1977-04-20"),
(12, "Laura", "White", "223 Cherry Lane", "Broomfield", "CO", "80020", "303-555-3345", "fishery_worker", "2004-07-12"),
(13, "Kevin", "Green", "334 Poplar Drive", "Centennial", "CO", "80112", "720-555-6678", "stocker", "1989-11-05"),
(14, "Olivia", "King", "445 Walnut Avenue", "Commerce City", "CO", "80022", "303-555-2234", "stocker", "2024-07-24"),
(15, "Ethan", "Scott", "556 Aspen Court", "Parker", "CO", "80134", "720-555-7789", "fishery_worker", "2023-03-11"),
(16, "Mia", "Morgan", "667 Redwood Street", "Castle Rock", "CO", "80109", "303-555-5566", "fishery_worker", "2021-02-27");

INSERT INTO fishery(fishery_ID, name, street_address, city, state, zip_code, phone_number, purpose)
VALUES (1, "Bellvue-Watson Fish Hatchery", "4936 West County Rd 52E", "Bellvue", "CO", "80512", "970-482-1659", "To raise rainbow trout, Loch Leven-strain brown trout, Snake river cutthroat, greenback cutthroat and splake."),
(2, "Glenwood Springs Hatchery", "1362 132 Road", "Glenwood Springs", "CO", "81602", "970-945-5293", "To raise Kokanee Salmon and Gunnison River Rainbow Trout."),
(3, "Crystal River Fish Hatchery", "2957 Highway 133", "Carbondale", "CO", "81623", "970-963-2665", "To raise rainbow and cutthroat trout."),
(4, "Durango Fish Hatchery", "151 East 16th Street", "Durango", "CO", "81301", "970-247-4755", "To raise rainbow trout (8-12 inches) and subcatchable fish (1-5 inches)."),
(5, "Roaring Judy Hatchery", "14131 North Highway 135", "Almont", "CO", "81210", "970-641-0190", "To raise Kokanee fry, subcatchable trout (2-5 inches), catchable trout (10 inches). Primary fish are Kokanee salmon, rainbow trout and cutthroat trout.");

INSERT INTO fishery_worker(employee_ID, fishery_ID)
VALUES (1, 1),
(2, 3),
(3, 3),
(4, 5),
(8, 2),
(11, 1),
(12, 4),
(15, 4),
(16, 2);

INSERT INTO stocker(employee_ID)
VALUES (5), (6), (7), (9), (10), (13), (14);

INSERT INTO stocker_vehicle(employee_ID,vehicle_ID,certification)
VALUES (5,1,"Drivers License and Boater Education Card"), 
(6,2,"Drivers License"), 
(7,3,"Drivers License"), 
(9,4,"Drivers License"), 
(10,5,"Drivers License"), 
(13,6,"Drivers License, Pilot Certificate and Boater Education Card"),
(14,7,"Drivers License"),
(5,8,"Drivers License and Boater Education Card"),
(6,9,"Drivers License"),
(7,10,"Drivers License"),
(9,11,"Drivers License"),
(10,12,"Drivers License"),
(13,13,"Drivers License and Boater Education Card"),
(14,14,"Drivers License"),
(5,15,"Drivers License"), 
(6,6,"Drivers License and Pilot Certificate"), 
(7,2,"Drivers License"), 
(9,3,"Drivers License"), 
(10,4,"Drivers License"), 
(13,5,"Drivers License");

INSERT INTO body_of_water_vehicle
VALUES (2,1),
(5,2),
(6,3),
(2,4),
(3,5),
(2,6),
(8,7),
(4,8),
(5,9),
(11,10),
(12,11),
(10,12),
(13,13),
(15,14),
(9,15);


INSERT INTO fishery_body_of_water
VALUES (1,1,5),
(2,2,6),
(3,3,9),
(4,4,11),
(5,5,2),
(1,6,4),
(2,7,9),
(3,8,13),
(4,9,2),
(5,10,15),
(1,11,12),
(2,12,6),
(3,13,62),
(4,14,11),
(5,15,25),
(1,10,76),
(2,13,12);

INSERT INTO fish_fishery
VALUES (1,1,45),
(2,5,19),
(3,5,24),
(4,4,54),
(5,2,12),
(6,4,76),
(7,2,34),
(8,3,65),
(9,4,25),
(10,1,65),
(11,2,34),
(12,2,14),
(13,5,15),
(14,4,12),
(15,5,55),
(1,5,67),
(2,4,45),
(3,3,21),
(4,2,45),
(5,3,87),
(6,5,45),
(7,3,12),
(8,1,56),
(9,2,76),
(10,2,45),
(11,5,76),
(12,4,95),
(13,3,45),
(14,2,65),
(15,2,21),
(1,3,11),
(2,3,6),
(3,4,76),
(4,5,34),
(5,1,27),
(6,3,98),
(7,1,56),
(8,4,32),
(9,5,65),
(10,3,12),
(11,3,56),
(12,3,34),
(13,4,76),
(14,5,21),
(15,1,12),
(1,4,456),
(2,2,456),
(3,2,165),
(4,3,154),
(5,4,135),
(6,1,135),
(7,5,123),
(8,2,245),
(9,3,300),
(10,4,112),
(11,1,134),
(12,5,176),
(13,2,187),
(14,3,134),
(15,4,165);


SELECT *
FROM fish
LEFT JOIN fish_fishery
ON fish.fish_ID = fish_fishery.fish_ID;
