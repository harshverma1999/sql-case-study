create schema cars;
use cars;
-- read data
select * from car_dekho;

-- TO CARS:TO GET A COUNT OF TOTAL RECORDS
SELECT count(*) FROM car_dekho;

-- the manager asked the employee how many cars will be available in 2023
select count(*) from car_dekho where year = 2023;

-- the manager asked the employee how many cars is available in 2020,2021,2023
-- we will use group by concept
select count(*) from car_dekho where year in(2020,2021,2023) group by year;

-- client asked me to print the total of all cars by year. I dont dee all the details.
select year, count(*) from car_dekho group by year;

-- client asked to a dealer how many diesel cars will be there in 2020
select count(*) from car_dekho where year=2020 and fuel = "diesel";

-- client requested a car dealer agent how many petrol cars will be there in 2020
select count(*) from car_dekho where fuel="petrol" and year=2020;

-- the manager told the employee to give the print of all fuel cars(petrol,diesel,CNG) all by all years
select year, count(*) from car_dekho where fuel="petrol" group by year;
select year, count(*) from car_dekho where fuel="diesel" group by year;
select year, count(*) from car_dekho where fuel="CNG" group by year;

-- manager told that there were more than 100 cars in the given year, which year had more than 100 cars
select year, count(*) from car_dekho group by year having count(*) > 100;

-- the manager said to the employee all car count detail between 2015 and 2023 with complete list
select count(*) from car_dekho where year between 2015 and 2023;

-- the manager said the employee all cars detail between 2015 to 2023 we need complete list
select * from car_dekho where year between 2015 and 2023;


