# Google Data Analytics Capstone Project: Cyclistic Bike-Share Data

## Background Information
Cyclistic is a bike-share company where people can rent bikes either as a casual rider or through an annual membership. Casual riders can obtain either single-ride passes or full day passes. Annual members pay an annual fee that allows them to rent a bike whenever they need throughout the year. Through an internal review finance analysts at Cyclistic determined that it is more profitable to the company to have annual members rather than casual riders. The director of marketing determined the best course of action to maximize profit would be to start a marketing campaign to target already existing casual riders to convert them to annual members as opposed to trying to target new customers. This project goes through the steps of a data analyst taking Cyclistic’s raw user data and transforming it into a meaningful plan of action to convert casual riders into annual members. 

## Business Task
Since annual memberships are more profitable to the company, we need to determine the differences between how casual riders and annual members use the Cyclistic bike-share program differently. We will then use this information to design marketing strategies aimed at converting casual riders into annual members. 

## How Reliable is the Data
In this case study, Cyclistic is a fictional company, because of this, the raw data we will be using is historical data from a real bike-share company called Divvy. This is a public dataset and privacy protection for its users has been put in place by anonymizing the data. All information that would be used to personally identify any of the users has been removed. The data is made available by Motivate International Inc. through a data license agreement with its users. We will be using data from the past twelve months spanning from April 2022 to March 2023. 

## Data Cleaning Process
SQL Queries: [Data Cleaning](https://github.com/ashleybonin/Cyclistic-Bike-Share-Project/blob/99bf75507bbd01407443c3c04c4374e7f03d7325/CyclisticBikeShareQuery.sql)

For the data cleaning aspect of this process I used SQL Server Management Studio (SSMS). The first step I took was to upload all of the twelve months of data into the database I created on SSMS. Since each of the twelve months were separated into different tables, I condensed them into one table. However, before I was able to combine all the datasets into one table, I needed to make sure all of the column data types were consistent across all the tables. 

![Screenshot (30)](https://github.com/ashleybonin/Cyclistic-Bike-Share-Project/assets/141379455/579bfeef-087b-47a2-9155-17ed261d18d0)

The above INSERT INTO, SELECT and FROM queries were repeated for all twelve datasets to insert them into the new combined table. I then used SELECT COUNT(ride_id) FROM AllDatasets to ensure that the total number of rows in the new tables was accurate. 

Once this was done, I trimmed the whitespace to ensure that the data had no inconsistencies with spacing. Then I attempted to fill in as many of the NULLS in the station names and station ID columns as I could. To do this I joined the combined dataset table with itself and wrote a query to update the NULL in the first table with the correct information in the joined table based on longitude and latitude. This would fill in station names that could have been missing from one of the original month datasets but was present in another. I then repeated this process to fill in NULL station IDs based on station name. This was done for both the start and end stations. 

![Screenshot (31)](https://github.com/ashleybonin/Cyclistic-Bike-Share-Project/assets/141379455/41e7a3d4-aea5-4cfd-b23c-d8f42d5d350f)

A few additional columns were then needed to make the data easier to manipulate for analysis. Columns were created for ride length, day of week of the ride, year, month, time of day based on category and season. 

![Screenshot (32)](https://github.com/ashleybonin/Cyclistic-Bike-Share-Project/assets/141379455/4822f18e-1462-4bb1-b71a-6963083ad217)
![Screenshot (33)](https://github.com/ashleybonin/Cyclistic-Bike-Share-Project/assets/141379455/9ae1e539-41a6-4125-af77-1031c4df2f22)
![Screenshot (34)](https://github.com/ashleybonin/Cyclistic-Bike-Share-Project/assets/141379455/93209c19-a070-470c-9fd4-72b4ca5653b5)


After this, I made sure all of the ride lengths were accurate by removing any of the rows where the ride length was not greater than zero. Then lastly, I checked for any duplicates in the date and removed any duplicate rows.

![Screenshot (36)](https://github.com/ashleybonin/Cyclistic-Bike-Share-Project/assets/141379455/3a114026-9a1d-4777-8e95-3dbf66a5d543)

## Data Analysis

View interactive tableau viz [here](https://public.tableau.com/views/GoogleDataAnalyticsChicagoCyclisticRides/ChicagoCyclisticRidesFromApril2022toMay2023?:language=en-US&:display_count=n&:origin=viz_share_link)

![Screenshot (37)](https://github.com/ashleybonin/Cyclistic-Bike-Share-Project/assets/141379455/4cec30d6-1f75-4158-8e71-c59e8fc8d39c)

For the analysis portion of this project, I chose to use Tableau to visualize the data. I uploaded the cleaned data from SSMS as a CSV file. Using Tableau I created charts showing percentage of rides taken by members vs casual riders, average ride length, number of rides by season, number of rides by time of day, day of week usage and a map of ride start stations. Each of these charts separate casual riders and annual members by color in order to make it easy to determine the differences between the two types of riders. 

Based on these graphics we can determine the key differences between the way annual members and casual riders utilize the Cyclistic bike-share program. Out of the 5,803,280 total rides between April 2022 and March 2023, annual members accounted for 59.7% of rides while casual riders were responsible for the other 40.3% of rides. On average the rides of casual users are almost double the length of annual members with a casual ride length being 21.9 minutes and an annual member ride length being 12.2 minutes. 

Both types of riders are the most active in the summer. However, casual rides see a sizable decrease after summer while member rides are much more consistent across the seasons. In addition, both types of rider categories have a comparable rider distribution across the morning and afternoon. This changes in the morning hours when annual riders are much more likely to ride than casual riders. 

Casual riders tend to use the bike-share program mostly on the weekends with Saturday being their most popular day while annual members tend to ride more often during the weekdays with Thursday being their most popular day. According to the map of start station locations, casual rides tend to be more popular close to the waterfront indicating that the bikes may be used to get to and from more touristy attractions like the zoo, aquarium, planetarium and museums. Compared to the casual riders, annual member start station locations tend to be more widespread across the city with a lot of the popular stations being close to residential areas and universities. 

This analysis seems to reflect the idea that casual riders are more likely to use the bikes as an easy transportation option to get to and from popular attractions in the city. There may also be a lot of tourists that use the casual ride options as the popular stations are seen to be near popular tourist attractions. Annual members appear to use the bike-share program more as a reliable source of everyday transportation in the city, possibly using it to go to and from work. 

## Plan of Action 
