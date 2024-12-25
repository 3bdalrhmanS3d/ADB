-- Q1 What is the country code of the country with name 'Canada'? 
SELECT code 
FROM country 
WHERE name = 'Canada';

-- Q2 Find the name and population of the country with code "ALB"?
SELECT name, population from country where code = 'ALB' 

-- Q3 Find the name and population of the country with code "USA"?
SELECT Language
from countrylanguage 
WHERE countryCode = 'BOL'

-- Q4 Find the name and population of the countries of "Africa" with population more than 60000000?
SELECT name, Population from country 
where Population >= 60000000 and continent = 'Africa'

-- Q5: How many different languages are spoken in Australia, the code of Australia is AUS?
select count(*) as totalLanguages 
from countrylanguage 
where countrycode = 'AUS' 

-- Q6: How many different languages are spoken in Canada?
select count(DISTINCT language) as totalLanguages 
from countrylanguage 
where countrycode = (
    	SELECT code from country where name = 'Canada' 
    )

-- Q7: Find the name and the population of the capital of the country with code "LKA"?
    SELECT name, Population 
    from city
    where ID = 
    (
        SELECT Capital from country where code = 'LKA' 
    )

-- Q8: Find the number of countries in the world?
SELECT count(*) as totalcounties 
from country 

-- Q9: For each continent, find the number of countries and the average population?
SELECT continent, count(*) as TC, AVG(population)
from country 
GROUP BY continent;

