# Query Questions

1. **Basic Procedure Creation**  
   Write a query to create a stored procedure named `GetAllCities` that retrieves all records from a `city` table.

2. **Procedure with IN Parameter**  
   Write a stored procedure named `GetCityByCountry` that accepts a country name (IN parameter) and retrieves all cities in that country from the `city` table.

3. **Procedure with OUT Parameter**  
   Create a stored procedure named `GetCountryPopulation` that takes a country name as an IN parameter and returns the population of that country through an OUT parameter.

4. **Procedure with INOUT Parameter**  
   Write a stored procedure named `DoubleValue` that accepts an integer as an INOUT parameter, doubles its value, and returns the updated value.

5. **Procedure with Multiple Parameters**  
   Create a stored procedure named `AddNewCity` that accepts a city name, country code, district, and population as parameters, and inserts a new record into the `city` table.

6. **Looping in Procedures**  
   Write a stored procedure named `DisplayNumbers` that uses a loop to print numbers from 1 to 10.

7. **Conditional Statements in Procedures**  
   Create a stored procedure named `CheckPopulation` that takes a population value as an IN parameter and returns a message indicating whether the population is greater or less than 1 million.

8. **Procedure for Updating Records**  
   Write a stored procedure named `UpdateCityPopulation` that accepts a city ID and a new population value, and updates the population of the specified city.

9. **Procedure with Error Handling**  
   Create a stored procedure named `DeleteCity` that accepts a city ID. If the city does not exist, return an error message.

10. **Procedure with Joins**  
    Write a stored procedure named `GetCountryDetails` that retrieves the name of the country, its population, and all its cities, combining data from the `country` and `city` tables.