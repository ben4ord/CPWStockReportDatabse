#SINGLE QUERY
#1. What vehicles haven’t been serviced in the last 12 months? 
SELECT type, service_date, license_number, IF(datediff(current_date(), service_date) >= 365, "Needs Service", "No Service Needed") AS "Needs Service?"
FROM vehicle;

#2. Which employees have been with the company for over 2 years?
SELECT concat(first_name, " ", last_name) AS "Name", hire_date, type
FROM employee
WHERE datediff(current_date(), hire_date) >= 730;

#3. Which fish are not native to North America
SELECT species, size, nativity
FROM fish
WHERE nativity NOT LIKE "%North America%";

#4. Which body of water has the greatest depth?
SELECT name, depth_ft
FROM body_of_water
ORDER BY depth_ft DESC
LIMIT 1;

#5. Which fisheries breed rainbow trout? 
SELECT name
FROM fishery
WHERE purpose LIKE "%rainbow trout%";


#MULTITABLE QUERIES
#1. Which body of water gets the greatest number of fish deposited into it?
SELECT body_of_water.name, SUM(fish_fishery.quantity)*100 AS total_quantity
FROM fish_fishery
JOIN fishery
ON fish_fishery.fishery_ID = fishery.fishery_ID
JOIN fishery_body_of_water
ON fishery.fishery_ID = fishery_body_of_water.fishery_ID
JOIN body_of_water
ON fishery_body_of_water.body_of_water_ID = body_of_water.body_of_water_ID
GROUP BY body_of_water.name
ORDER BY total_quantity DESC
LIMIT 1;

#2. Which employees are certified to drive a car and fly a plane?
SELECT concat(employee.first_name, " ", employee.last_name) AS "Name", certification
FROM employee
JOIN stocker
ON employee.employee_ID = stocker.employee_ID
JOIN stocker_vehicle
ON stocker.employee_ID = stocker_vehicle.employee_ID
WHERE employee.type = "stocker" AND stocker_vehicle.certification like "%Pilot Certificate%";

#3. Which employees are illegally flying planes to supply fish 
##(i.e. they fly an Airbus or Cessna and don’t have a pilot certification)? 
SELECT concat(employee.first_name, " ", employee.last_name) AS "Name", stocker_vehicle.certification, vehicle.type AS "Vehicle"
FROM employee
JOIN stocker
ON employee.employee_ID = stocker.employee_ID
JOIN stocker_vehicle
ON stocker.employee_ID = stocker_vehicle.employee_ID
JOIN vehicle
ON stocker_vehicle.vehicle_ID = vehicle.vehicle_ID
WHERE (employee.type = "stocker")
AND (stocker_vehicle.certification not like "%Pilot Certificate%")
AND (vehicle.type = "Airbus A330" OR vehicle.type = "Cessna 185 Skywagon");

#4. Which vehicles supply fish to a specific body of water?
SELECT vehicle.type AS "Vehicle", body_of_water.name AS "Body of Water" 
FROM vehicle
JOIN body_of_water_vehicle
ON vehicle.vehicle_ID = body_of_water_vehicle.vehicle_ID
JOIN body_of_water
ON body_of_water_vehicle.body_of_water_ID = body_of_water.body_of_water_ID
WHERE body_of_water.name = "Gunnison River";

#5. What vehicles have a specific fishery used? 
SELECT vehicle.type AS "Vehicle", fishery.name AS "Fishery"
FROM vehicle
JOIN body_of_water_vehicle
ON vehicle.vehicle_ID = body_of_water_vehicle.vehicle_ID
JOIN body_of_water
ON body_of_water_vehicle.body_of_water_ID = body_of_water.body_of_water_ID
JOIN fishery_body_of_water
ON body_of_water.body_of_water_ID = fishery_body_of_water.body_of_water_ID
JOIN fishery
ON fishery_body_of_water.fishery_ID = fishery.fishery_ID
WHERE fishery.name = "Roaring Judy Hatchery";


#STORED PROCEDURES
#1. Which types of fish does a specific employee work with? 
DROP PROCEDURE IF EXISTS employeeFish;

DELIMITER //
CREATE PROCEDURE employeeFish(
	IN employee_first_name VARCHAR(25),
    IN employee_last_name VARCHAR(25)
)
BEGIN
	SELECT species
	FROM fish
	WHERE fish_ID IN (
		SELECT fish_ID
		FROM fish_fishery
		WHERE fishery_ID IN (
			SELECT fishery_ID
			FROM fishery
			WHERE fishery_ID IN (
				SELECT fishery_ID
				FROM fishery_worker
				WHERE employee_ID IN (
					SELECT employee_ID
					FROM employee
					WHERE first_name = employee_first_name AND last_name = employee_last_name))));
END//
DELIMITER ;


#2. Which types of fish are being supplied to a specific body of water? 
DROP PROCEDURE IF EXISTS bodyOfWaterFish;

DELIMITER //
CREATE PROCEDURE bodyOfWaterFish(
	IN body_of_water_name VARCHAR(45)
)
BEGIN
	SELECT species
	FROM fish
	WHERE fish_ID IN (
		SELECT fish_ID
		FROM fish_fishery
		WHERE fishery_ID IN (
			SELECT fishery_ID
			FROM fishery
			WHERE fishery_ID IN (
				SELECT fishery_ID
				FROM fishery_body_of_water
				WHERE body_of_water_ID IN (
					SELECT body_of_water_ID
					FROM body_of_water
					WHERE body_of_water.name = body_of_water_name))));
END//
DELIMITER ;


#STORED PROCEDURE COMMANDS
call employeeFish("John","Smith");
call employeeFish("Jane", "Doe");

call bodyOfWaterFish("Gunnison River");
call bodyOfWaterFish("Blue Mesa Reservoir");