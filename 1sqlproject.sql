create schema  cars;
use cars;
-- READ DATA --
select*from car_dekho;
-- Total Cars: To get a count of total records --
select count(*) from  car_dekho;
-- The manager asked the employee how many cars will be available in 2023? 
select count(*) from car_dekho where year = 2023;
-- The manager asked the employee how many cars will be available in 2020,2021,2022--
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021;#7 
select count(*) from car_dekho where year = 2023; #6 
-- other way -- 
-- GROUP BY --
select count(*) from car_dekho where year in (2020,2021,2022) group by year;
-- Clint asked me to print the total of all cars by year , I don't see all the details,--
select year, count(*) from car_dekho group by year;
-- Clint asked to car dealer agent how many diesel cars will there be in 2020?--
select count(*) from car_dekho where year = 2020 and fuel = "Diesel"; #20

-- Clint requested a car dealer agent how many petrol cars will there be in 2020?--
select count(*) from car_dekho where year = 2020 and fuel = "petrol"; #51

-- The manager told the employee to give a print all the fuel cars (petrol , diesel , and CNG ) come by all year,--
select year, count(*) from car_dekho where fuel = "petrol" group by year;
select year, count(*) from car_dekho where fuel = "diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;

-- Manager said there where more than 100 cars in a given year , which year had more than 100 cars? --
select year, count(*) from car_dekho group by year having count(*)>100;
select year, count(*) from car_dekho group by year having count(*) <50;

-- The manager said to the employee all cars count details between 2015 and 2023, we need a comlete list--
select count(*) from car_dekho where year between 2015 and 2023; #4124

-- the manager said to the employee all cars  details between 2015 and 2023, we need a comlete list--
select*from car_dekho where year between 2015 and 2023;



