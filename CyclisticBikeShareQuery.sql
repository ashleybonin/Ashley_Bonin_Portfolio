--Change column datatype so it is consistent with all 12 datasets
SELECT * 
FROM GoogleFinalProject.dbo.['202204-divvy-tripdata$']

ALTER TABLE GoogleFinalProject.dbo.['202204-divvy-tripdata$']
ALTER COLUMN start_station_id Nvarchar(255);

------------------------------------------------------------------------------------------------------------

--Create new table containing all 12 datasets

CREATE TABLE AllDatasets (
	ride_id nvarchar(255),
	rideable_type nvarchar(255),
	started_at datetime,
	ended_at datetime,
	start_station_name nvarchar(255),
	start_station_id nvarchar(255),
	end_station_name nvarchar(255),
	end_station_id nvarchar(255),
	start_lat float,
	start_lng float,
	end_lat float,
	end_lng float,
	member_casual nvarchar(255) );

INSERT INTO AllDatasets 
	(ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual)
SELECT ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual 
FROM GoogleFinalProject.dbo.['202204-divvy-tripdata$']

INSERT INTO AllDatasets 
	(ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual)
SELECT ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual 
FROM GoogleFinalProject.dbo.['202205-divvy-tripdata$']

INSERT INTO AllDatasets 
	(ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual)
SELECT ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual 
FROM GoogleFinalProject.dbo.['202206-divvy-tripdata$']

INSERT INTO AllDatasets 
	(ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual)
SELECT ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual 
FROM GoogleFinalProject.dbo.['202207-divvy-tripdata$']

INSERT INTO AllDatasets 
	(ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual)
SELECT ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual 
FROM GoogleFinalProject.dbo.['202208-divvy-tripdata$']

INSERT INTO AllDatasets 
	(ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual)
SELECT ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual 
FROM GoogleFinalProject.dbo.['202209-divvy-tripdata$']

INSERT INTO AllDatasets 
	(ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual)
SELECT ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual 
FROM GoogleFinalProject.dbo.['202210-divvy-tripdata$']

INSERT INTO AllDatasets 
	(ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual)
SELECT ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual 
FROM GoogleFinalProject.dbo.['202211-divvy-tripdata$']

INSERT INTO AllDatasets 
	(ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual)
SELECT ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual 
FROM GoogleFinalProject.dbo.['202212-divvy-tripdata$']

INSERT INTO AllDatasets 
	(ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual)
SELECT ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual 
FROM GoogleFinalProject.dbo.['202301-divvy-tripdata$']

INSERT INTO AllDatasets 
	(ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual)
SELECT ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual 
FROM GoogleFinalProject.dbo.['202302-divvy-tripdata$']

INSERT INTO AllDatasets 
	(ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual)
SELECT ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual 
FROM GoogleFinalProject.dbo.['202303-divvy-tripdata$']

SELECT COUNT(ride_id)
FROM AllDatasets

----------------------------------------------------------------------------------------------------------
--Trim whitespace across the table

UPDATE AllDatasets
SET ride_id = LTRIM(RTRIM(ride_id)),
    rideable_type = LTRIM(RTRIM(rideable_type)),
    started_at = LTRIM(RTRIM(started_at)),
	ended_at = LTRIM(RTRIM(ended_at)),
	start_station_name = LTRIM(RTRIM(start_station_name)),
	start_station_id = LTRIM(RTRIM(start_station_id)),
	end_station_name = LTRIM(RTRIM(end_station_name)),
	end_station_id = LTRIM(RTRIM(end_station_id)),
	start_lat = LTRIM(RTRIM(start_lat)),
	start_lng = LTRIM(RTRIM(start_lng)),
	end_lat = LTRIM(RTRIM(end_lat)),
    end_lng = LTRIM(RTRIM(end_lng)),
	member_casual = LTRIM(RTRIM(member_casual));

------------------------------------------------------------------------------------------------------------------

--Update nulls in the table by joining on itself and filling the nulls with the correct info
--Fill in start_station_name nulls based on latitude and longitude
UPDATE a
SET start_station_name = ISNULL(a.start_station_name, b.start_station_name)
FROM AllDatasets a
JOIN AllDatasets b 
	ON a.start_lat = b.start_lat AND a.start_lng = b.start_lng
WHERE a.start_station_name is null 

--Fill in start_station_id nulls 
UPDATE a
SET start_station_id = ISNULL(a.start_station_id, b.start_station_id)
FROM AllDatasets a
JOIN AllDatasets b 
	ON a.start_station_name = b.start_station_name
WHERE a.start_station_id is null 


SELECT *
FROM AllDatasets

------------------------------------------------------------------------------------------------------------

--Add a new column to table for ride_length

ALTER TABLE AllDatasets
ADD ride_length TIME;

--Fill the new column with the calculated ride_length
UPDATE AllDatasets
SET ride_length = CAST(ended_at-started_at AS TIME)

ALTER TABLE AllDatasets
ADD ride_length_in_sec int;

UPDATE AllDatasets
SET ride_length_in_sec = 
DATEPART(HOUR, ride_length) * 3600 +
DATEPART(MINUTE, ride_length) * 60 +
DATEPART(SECOND, ride_length)


---------------------------------------------------------------------------------------------------------

--Add a new column to the table for day_of_week

ALTER TABLE AllDatasets
ADD day_of_week Nvarchar(255);

--Update the column with the day of week using DATEPART
UPDATE AllDatasets
SET day_of_week = CASE
	WHEN DATEPART(WEEKDAY, started_at) = 1 THEN 'Sunday'
	WHEN DATEPART(WEEKDAY, started_at) = 2 THEN 'Monday'
	WHEN DATEPART(WEEKDAY, started_at) = 3 THEN 'Tuesday'
	WHEN DATEPART(WEEKDAY, started_at) = 4 THEN 'Wednesday'
	WHEN DATEPART(WEEKDAY, started_at) = 5 THEN 'Thursday'
	WHEN DATEPART(WEEKDAY, started_at) = 6 THEN 'Friday'
	WHEN DATEPART(WEEKDAY, started_at) = 7 THEN 'Saturday'
END;

---------------------------------------------------------------------------------------------------------
--Create seperate column for year and month to make data easier to manipulate

ALTER TABLE AllDatasets
ADD year int;

UPDATE AllDatasets
SET year = YEAR(started_at);

ALTER TABLE AllDatasets
ADD Month Nvarchar(255);

UPDATE AllDatasets
SET Month = CASE
	WHEN MONTH(started_at) = 01 THEN 'January'
	WHEN MONTH(started_at) = 02 THEN 'February'
	WHEN MONTH(started_at) = 03 THEN 'March'
	WHEN MONTH(started_at) = 04 THEN 'April'
	WHEN MONTH(started_at) = 05 THEN 'May'
	WHEN MONTH(started_at) = 06 THEN 'June'
	WHEN MONTH(started_at) = 07 THEN 'July'
	WHEN MONTH(started_at) = 08 THEN 'August'
	WHEN MONTH(started_at) = 09 THEN 'September'
	WHEN MONTH(started_at) = 10 THEN 'October'
	WHEN MONTH(started_at) = 11 THEN 'November'
	WHEN MONTH(started_at) = 12 THEN 'December'
	END;
----------------------------------------------------------------------------------------------------------------
--Create categories for what time of day the rides started at

ALTER TABLE AllDatasets
ADD TimeOfDay Nvarchar(255);

UPDATE AllDatasets
SET TimeOfDay = CONVERT(TIME, started_at)

UPDATE AllDatasets
SET TimeOfDay = CASE
	WHEN TimeOfDay BETWEEN '00:00:00' AND '12:00:00' THEN 'Morning'
	WHEN TimeOfDay BETWEEN '12:00:00' AND '17:00:00' THEN 'Afternoon'
	WHEN TimeOfDay BETWEEN '17:00:00' AND '24:00:00' THEN 'Evening'
	END;

---------------------------------------------------------------------------------------------------------

--Delete rides where ride_length was 00:00:00 as ride_length should be greater than 0
SELECT *
FROM AllDatasets
WHERE ride_length = '00:00:00'

DELETE FROM AllDatasets
WHERE ride_length = '00:00:00';

--------------------------------------------------------------------------------------------------------
--Remove duplicates 

SELECT ride_id, COUNT(ride_id)
FROM AllDatasets
GROUP BY ride_id
HAVING COUNT(ride_id) > 1


WITH Duplicates AS (
  SELECT ride_id, ROW_NUMBER() OVER (PARTITION BY ride_id
	ORDER BY (SELECT NULL)) AS RowNum
  FROM AllDatasets)
DELETE FROM Duplicates
WHERE RowNum > 1;

---------------------------------------------------------------------------------------------------------

--Create categories for the seasons based on the months 

ALTER TABLE AllDatasets
ADD Season Nvarchar(255);

UPDATE AllDatasets
SET Season = CASE
	WHEN Month = 'January' THEN 'Winter'
	WHEN Month = 'February' THEN 'Winter'
	WHEN Month = 'March' THEN 'Spring'
	WHEN Month = 'April' THEN 'Spring'
	WHEN Month = 'May' THEN 'Spring'
	WHEN Month = 'June' THEN 'Summer'
	WHEN Month = 'July' THEN 'Summer'
	WHEN Month = 'August' THEN 'Summer'
	WHEN Month = 'September' THEN 'Fall'
	WHEN Month = 'October' THEN 'Fall'
	WHEN Month = 'November' THEN 'Fall'
	WHEN Month = 'December' THEN 'Winter'
	END;

-----------------------------------------------------------------------------------------------------------
 
 --Select all data to be exported to Tableau for data viz
 
 SELECT *
 FROM AllDatasets