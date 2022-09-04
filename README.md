# Air-Quality-Analysis-using-Big-Data-Analytics

## About the project 
Air pollution is currently one of the most serious issues plaguing all nations today. In light of this, we examined the air quality data of a few Indian states to uncover underlying principles or patterns that may give insight into the severity of the problem. A data-driven approach is used, leveraging Big Data Analytics technologies.
 
 ### Purpose
The primary objective of this project is to collect data pertaining to the determinants of the analysis of the air pollution level of five different states in India during the years 2008-2012 and thereafter calculate and generate reports on the same based on the real time data collected. The determinants for the analysis of the air pollution level are:

-	Population density of the states (persons/sq km)
-	Percentage of birth and death rate of the people living in a state
-	Count of vehicles owned per family
-	Count of industries in the state
-	Count of people admitted in the hospital due to air borne diseases
-	The total area covered by forests in a state (sq km)
- The concentration of particulate matter in the air (NO₂,SO₂,PM)

### Tools Used
![Screenshot 2022-09-03 230235](https://user-images.githubusercontent.com/71536311/188284725-a99e99dc-0b32-4819-87bf-e3cbd9f1d966.png) ![Screenshot 2022-09-04 075903](https://user-images.githubusercontent.com/71536311/188296743-ade5d961-8d00-42b2-8348-8695b8ff2e34.png)![Screenshot 2022-09-04 081242](https://user-images.githubusercontent.com/71536311/188297252-27f1c2d2-8b62-43d6-be54-84a707d21cb2.png)

### Implementation
The project is implemented in four stages:
-	Collection of data 
-	Import the data into MongoDB
-	Design a data analysis program in R using RStudio to create some visual representation of the data
-	Present the results of the analysis using web pages

## Overview

The dataset contains:
-	Two categorical variables:
    - State
    -	Year
   
-	Ten numerical variables:
    -	Population Density per sqkm – Population per unit area
    -	People with air borne diseases – Count of people admitted to hospital due to air 
borne diseases
    -	Industries – Count of Industries
    -	Vehicles – Count of vehicles in thousands
    -	Birth-rate - Live births per thousand population per year
    -	Death rate - Number of deaths per thousand population per year
    -	Forest cover – Land area that is covered by forests or the forest canopy or open 
woodland in square kilometers.
    -	SO<sub>2</sub> – Concentration of Sulphur dioxide
    -	NO<sub>2</sub> – Concentration of Nitrogen dioxide
    -	PM – Particulate Matter Concentrations.

The complete dataset has 25 rows and 12 columns and is stored in a csv file named pollution.csv.

![Synopsis](https://user-images.githubusercontent.com/71536311/188313780-38a8a4b9-2816-4cd9-aed0-dd0d83cc5463.png)






