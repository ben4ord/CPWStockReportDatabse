#SINGLE QUERY
#1. What vehicles haven’t been serviced in the last 12 months? 

#2. Which employees have been with the company for over 2 years?

#3. Which fish are not native to North America
SELECT species, size, nativity
FROM fish
WHERE nativity LIKE "%North America%";

#4. Which body of water has the greatest depth?
SELECT name, depth_ft
FROM body_of_water
ORDER BY depth_ft DESC
LIMIT 1;

#5. Which fisheries breed rainbow trout? 
SELECT*
FROM fishery
WHERE purpose LIKE "%rainbow trout%";


#MULTITABLE QUERIES
#1. Which body of water gets the greatest number of fish deposited into it?
SELECT body_of_water.name, SUM(fish_fishery.quantity) AS total_quantity
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



