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

INSERT INTO employee(employee_ID, first_name, last_name, address, city, state, zip_code, phone_number, type, hire_date)
VALUES (1, "John", "Smith", "404 North Virginia St", "Colorado Springs", "CO", "80910", "719-537-8224", "fishery_worker", "2020-10-18"),
(2, "Jane", "Doe", "123 Elm Street", "Denver", "CO", "80203", "720-555-1234", "fishery_worker", "2021-05-12"),
(3, "Michael", "Brown", "456 Oak Avenue", "Boulder", "CO", "80302", "303-987-6543", "fishery_worker", "2019-07-22"),
(4, "Emily", "Davis", "789 Maple Blvd", "Aurora", "CO", "80014", "303-555-6789", "fishery_worker", "2022-03-15"),
(5, "David", "Wilson", "321 Pine Road", "Fort Collins", "CO", "80525", "970-555-4321", "stocker", "2020-11-30"),
(6, "Sarah", "Johnson", "654 Cedar Lane", "Pueblo", "CO", "81001", "719-555-2468", "stocker", "2023-01-05"),
(7, "Matthew", "Taylor", "987 Birch Court", "Lakewood", "CO", "80226", "720-555-7890", "stocker", "2018-08-09"),
(8, "Ashley", "Martinez", "159 Spruce Street", "Greeley", "CO", "80631", "970-555-1235", "fishery_worker", "2021-06-10"),
(9, "Joshua", "Anderson", "753 Fir Avenue", "Thornton", "CO", "80241", "303-555-4567", "stocker", "2019-12-01"),
(10, "Jessica", "Thomas", "951 Aspen Drive", "Littleton", "CO", "80123", "720-555-8910", "stocker", "2022-02-14"),
(11, "Daniel", "Lewis", "112 Willow Street", "Arvada", "CO", "80003", "720-555-9987", "fishery_worker", "2020-04-20"),
(12, "Laura", "White", "223 Cherry Lane", "Broomfield", "CO", "80020", "303-555-3345", "fishery_worker", "2021-09-18"),
(13, "Kevin", "Green", "334 Poplar Drive", "Centennial", "CO", "80112", "720-555-6678", "stocker", "2018-11-05"),
(14, "Olivia", "King", "445 Walnut Avenue", "Commerce City", "CO", "80022", "303-555-2234", "stocker", "2022-07-24"),
(15, "Ethan", "Scott", "556 Aspen Court", "Parker", "CO", "80134", "720-555-7789", "fishery_worker", "2023-03-11"),
(16, "Mia", "Morgan", "667 Redwood Street", "Castle Rock", "CO", "80109", "303-555-5566", "fishery_worker", "2021-02-27");

INSERT INTO fishery(fishery_ID, name, address, city, state, zip_code, phone_number, purpose)
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
