-- Q1
DELIMITER $$

CREATE TRIGGER before_city_insert
BEFORE INSERT ON city
FOR EACH ROW
BEGIN
    IF NEW.Population < 1000 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Population must be at least 1,000';
    END IF;
END $$

DELIMITER ;

-- Q2
DELIMITER $$ 
	create TRIGGER afterInsertCity
    after INSERT on city 
    for each row 
    	BEGIN
        	INSERT INTO audit_log (message)
            VALUES (CONCAT('New city added: ', NEW.Name));
        END $$
DELIMITER ;

-- test it
INSERT INTO city (Name, CountryCode, District, Population)
VALUES ('New York', 'USA', 'New York', 8500000);

SELECT * FROM audit_log;


-- Q3
DELIMITER $$
	CREATE TRIGGER BEFORE_UPDATA_CITY
    BEFORE UPDATE ON city
    FOR EACH ROW 
    BEGIN
    	IF NEW.population < 0 THEN
        	SIGNAL SQLSTATE '45000'
            set MESSAGE_TEXT = "can not pop neg" ;
        END IF ;
    END $$
DELIMITER ;

-- test it 
UPDATE city
SET Population = -5000
WHERE ID = 1;

-- Q4
DELIMITER $$    
CREATE TRIGGER after_city_update
AFTER UPDATE ON city
FOR EACH ROW
BEGIN
    INSERT INTO update_log (city_id, old_population, new_population)
    VALUES (OLD.ID, OLD.Population, NEW.Population);
END $$

DELIMITER ;
-- test it
UPDATE city
SET Population = 9000000
WHERE ID = 1;

SELECT * FROM update_log;

-- Q5
DELIMITER $$
CREATE TRIGGER before_city_delete
BEFORE DELETE ON city
FOR EACH ROW
BEGIN
    IF OLD.Population > 1000000 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete cities with population greater than 1,000,000';
    END IF;
END $$
DELIMITER ;

-- test it
DELETE FROM city
WHERE ID = 1;

