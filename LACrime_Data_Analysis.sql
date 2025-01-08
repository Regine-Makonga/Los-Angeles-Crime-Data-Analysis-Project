-- Creating table for the data
CREATE TABLE la_crime (
    DR_NO BIGINT PRIMARY KEY,
    Date_Rptd DATE,
    DATE_OCC DATE,
    TIME_OCC TIME,
    AREA INT,
    AREA_NAME VARCHAR(255),
    Rpt_Dist_No INT,
    Part_1_2 INT,
    Crm_Cd INT,
    Crm_Cd_Desc VARCHAR(255),
    Vict_Age INT,
    Vict_Sex VARCHAR(20),
    Vict_Descent VARCHAR(20),
    Premis_Cd INT,
    Premis_Desc VARCHAR(255),
    Status CHAR(2),
    Status_Desc VARCHAR(255),
    Crm_Cd_1 INT,
    LOCATION VARCHAR(255),
    LAT FLOAT,
    LON FLOAT,
    Year INT,
    Month INT
);
-- DATA ANALYSIS

-- Crimes per month
SELECT
    MONTH(DATE_OCC) AS month,
    COUNT(*) AS crimes_per_month
FROM
    la_crime
GROUP BY
    MONTH(DATE_OCC)
ORDER BY
    month;
-- Crimes per year
SELECT
    YEAR(DATE_OCC) AS year,
    COUNT(*) AS crimes_per_year
FROM
    la_crime
GROUP BY
    YEAR(DATE_OCC)
ORDER BY
    year;
-- Crimes per Age
SELECT
    Crm_Cd_Desc AS crime_type,
    AVG(Vict_Age) AS avg_victim_age
FROM
    la_crime
GROUP BY
    Crm_Cd_Desc
ORDER BY
    avg_victim_age DESC;
    
-- Crimes Over Time (Year and Month)
SELECT
    YEAR(DATE_OCC) AS year,
    MONTH(DATE_OCC) AS month,
    COUNT(*) AS crimes_per_time
FROM
    la_crime
GROUP BY
    YEAR(DATE_OCC), MONTH(DATE_OCC)
ORDER BY
    year, month;


-- What is the most common type of crime (based on 'Crm Cd Desc') in each area (based on 'AREA NAME')?

WITH crime_counts AS (
	select area_name, crm_cd_desc, 
	count(*) as count_per_area_per_crime,
	ROW_NUMBER() OVER (PARTITION BY area_name ORDER BY COUNT(*) DESC) as rn
	from la_crime 
	group by area_name,crm_cd_desc 
)

SELECT area_name, crm_cd_desc as most_common_crime, count_per_area_per_crime 
from crime_counts
where rn=1;

--  How does the time of occurrence ('TIME OCC') relate to the type of crime ('Crm Cd Desc')? Are certain crimes more likely at certain times of day?
SELECT
    Crm_Cd_Desc AS crime_type,
    CASE
        WHEN EXTRACT(HOUR FROM TIME_OCC) BETWEEN 0 AND 5 THEN 'Night'
        WHEN EXTRACT(HOUR FROM TIME_OCC) BETWEEN 6 AND 11 THEN 'Morning'
        WHEN EXTRACT(HOUR FROM TIME_OCC) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS time_of_day,
    COUNT(*) AS crime_count
FROM
    la_crime
GROUP BY
    Crm_Cd_Desc, time_of_day
ORDER BY
    crime_type, time_of_day;
--  What is the average age ('Vict Age') of victims for each type of crime ('Crm Cd Desc')?
SELECT
    Crm_Cd_Desc AS crime_type,
    AVG(Vict_Age) AS average_victim_age
FROM
    la_crime
GROUP BY
    Crm_Cd_Desc
ORDER BY
    average_victim_age DESC;

--  Are men, women, or non-binary individuals ('Vict Sex') more likely to be victims of certain types of crimes ('Crm Cd Desc')?
SELECT
    Crm_Cd_Desc AS crime_type,
    Vict_Sex AS victim_sex,
    COUNT(*) AS victim_count
FROM
    la_crime
GROUP BY
    Crm_Cd_Desc, Vict_Sex
ORDER BY
    crime_type, victim_sex;

--  Which area has the most crimes?
SELECT
	area_name,
	count(*) as crime_count
FROM la_crime
group by area_name
order by crime_count desc;
--  Are certain crimes more likely to happen at certain times of the year?
SELECT
 crm_cd_desc, Month,
 count(*) as crime_count
FROM la_crime
WHERE Year  <= 2024
group by crm_cd_desc, Month
order by crm_cd_desc, crime_count;

