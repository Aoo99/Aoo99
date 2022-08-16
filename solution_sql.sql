-- 8.
-- Exclusive OR. Show the countries that are big by area or big by population but not both. Show name, population and area.

-- Australia has a big area but a small population, it should be included.
-- Indonesia has a big population but a small area, it should be included.
-- China has a big population and big area, it should be excluded.
-- United Kingdom has a small population and a small area, it should be excluded.



SELECT name, population,area
  FROM world
  WHERE (population>250000000 OR area>3000000)
  AND NOT(population>250000000 AND area>3000000)
;


--Germany (population 80 million) has the largest population of the countries in Europe. Austria (population 8.5 million) has 11% of the population of Germany.
--Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany.
--The format should be Name, Percentage for example:
--Decimal places
--You can use the function ROUND to remove the decimal places.
--Percent symbol %
--You can use the function CONCAT to add the percentage symbol.
SELECT name, CONCAT(ROUND((population*100)/(SELECT population FROM world WHERE name='Germany'),0), '%')FROM world
WHERE continent = 'Europe'
