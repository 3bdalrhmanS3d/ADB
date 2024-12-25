-- Q1 
DELIMITER $$ 
	CREATE PROCEDURE GetAllCities()
    BEGIN
    	SELECT * 
        from city ;
        
    End $$
DELIMITER ;

call GetAllCities();

-- Q2
DELIMITER $$ 
	create PROCEDURE GetCityByCountry1( in countryName VARCHAR(50) )
    BEGIN	
    	SELECT * 
        From city
        where countrycode  = (
            SELECT code 
            From country 
            where name = countryName 
            ) ;
    end $$
DELIMITER ;

call GetCityByCountry1('India');

-- Q3
DELIMITER $$
	create PROCEDURE GetCountryPopulation(in nameC VARCHAR(50) , out result int )
    BEGIN
    	SELECT population INTO result 
        FROM country
        where name = nameC ;
    END $$
DELIMITER ;

Call GetCountryPopulation('India', @result);
select @result;

-- Q4
DELIMITER $$ 
	create PROCEDURE DoubleValue(INOUT value int)
    BEGIN 
    	SET value = value * 2;
    END $$
DELIMITER ;

set @value = 10 ;
call DoubleValue(@Value);
SELECT @value as DoubleValue ;

-- Q5
DELIMITER $$

CREATE PROCEDURE AddNewCity(IN city_name VARCHAR(50), IN country_code CHAR(3), IN district VARCHAR(50), IN population INT)
BEGIN
    INSERT INTO city (Name, CountryCode, District, Population)
    VALUES (city_name, country_code, district, population);
END $$

DELIMITER ;

CALL AddNewCity('New City', 'USA', 'California', 500000);