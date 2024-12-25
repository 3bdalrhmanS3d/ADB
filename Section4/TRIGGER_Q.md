
# **1. Before Insert**

Write a trigger that prevents inserting a city into the `city` table if its population is less than 1,000.

## **2. After Insert**

Create a trigger that automatically logs a message in an `audit_log` table whenever a new city is added to the `city` table.

## **3. Before Update**

Write a trigger that prevents updating the population of a city in the `city` table to a negative value.

## **4. After Update**

Create a trigger that logs the old and new population of a city into an `update_log` table after its population is updated in the `city` table.

## **5. Before Delete**

Write a trigger that prevents the deletion of any city from the `city` table if the city's population exceeds 1,000,000.

## **6. After Delete**

Create a trigger that stores the name and details of a deleted city in a `deleted_cities` table for archiving purposes.

## **7. Before Insert with Dependencies**

Write a trigger that ensures when a new country is added to the `country` table, it has at least one official language added in the `countrylanguage` table.

## **8. After Insert with Relationships**

Create a trigger that automatically updates the `total_cities` count in the `country` table whenever a new city is added to the `city` table.

## **9. Before Update with Dependencies**

Write a trigger that ensures when a country's population is updated in the `country` table, the total population of its cities in the `city` table does not exceed the country's new population.

## **10. After Delete with Relationships**

Create a trigger that automatically deletes all cities from the `city` table when a country is deleted from the `country` table.
