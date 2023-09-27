

SELECT Country.Continent, FLOOR(AVG(City.Population)) FROM Country, City  WHERE Country.Code = City.CountryCode  GROUP BY Country.Continent ;