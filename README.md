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

### Dataset

The dataset contains:
- ***Two categorical variables:***
    - **State**
    -	**Year**
   
-	***Ten numerical variables:***
    -	**Population Density per sqkm** – Population per unit area
    -	**People with air borne diseases** – Count of people admitted to hospital due to air 
borne diseases
    -	**Industries** – Count of Industries
    -	**Vehicles** – Count of vehicles in thousands
    -	**Birth-rate** - Live births per thousand population per year
    -	**Death rate** - Number of deaths per thousand population per year
    -	**Forest cover** – Land area that is covered by forests or the forest canopy or open 
woodland in square kilometers.
    -	**SO<sub>2</sub>** – Concentration of Sulphur dioxide
    -	**NO<sub>2</sub>** – Concentration of Nitrogen dioxide
    -	**PM** – Particulate Matter Concentrations.

The complete dataset has 25 rows and 12 columns and is stored in a csv file named pollution.csv.

### Tools Used
![Screenshot 2022-09-03 230235](https://user-images.githubusercontent.com/71536311/188284725-a99e99dc-0b32-4819-87bf-e3cbd9f1d966.png) ![Screenshot 2022-09-04 075903](https://user-images.githubusercontent.com/71536311/188296743-ade5d961-8d00-42b2-8348-8695b8ff2e34.png)![Screenshot 2022-09-04 081242](https://user-images.githubusercontent.com/71536311/188297252-27f1c2d2-8b62-43d6-be54-84a707d21cb2.png)

- Utilized mongolite package, a high-performing MongoDB client for R based on "mongo-c-driver" and "jsonlite" for fast retrieval and analysis of big data, with a flexible schema that makes it a natural choice for unstructured data.
- Preprocessed the data, manipulated it into a structured form, and presented the results using R.

### Implementation
The project is implemented in four stages:
-	Collection of data 
-	Import the data into MongoDB
-	Design a data analysis program in R using RStudio to create some visual representation of the data
-	Present the results of the analysis using web pages

### Some Exciting Glimpse of the Visuals

![Synopsis](https://user-images.githubusercontent.com/71536311/188313780-38a8a4b9-2816-4cd9-aed0-dd0d83cc5463.png)
![Dataset](https://user-images.githubusercontent.com/71536311/191474794-d98c8b89-d6d4-4365-88e0-07fba400ca2b.png)
![Viewbystate](https://user-images.githubusercontent.com/71536311/191475331-bc0de629-c71d-40ed-8c7a-12d971af5555.png)
![Viewbyyear](https://user-images.githubusercontent.com/71536311/191481332-9076059c-016a-4f29-8b85-1afa64373e0e.png)
![Viewbyfactors](https://user-images.githubusercontent.com/71536311/191475968-f74e81ce-ece0-413a-a451-5eb1979d5d11.png)
![Pollutionlevelanalysis](https://user-images.githubusercontent.com/71536311/191476140-f7db7703-0b57-403d-9dc0-4ce6fa5027a7.png)
![PlAnalysis2](https://user-images.githubusercontent.com/71536311/191481537-8cc8acce-0016-47bb-92f0-beb16db49e4c.png)

### Conclusion
From the above analysis, we can conclude that:

- During the years 2008-2012, air pollution was most prevalent in the northern region, particularly Delhi, which has become extremely polluted and requires immediate action.

- While Karnataka initially had lower levels of pollutants in the atmosphere (2008-2009) than other states (Delhi, Karnataka, Kerala), the levels steadily increased between 2010 and 2012. In large part, this is due to the increase in population density per square km, industries, vehicles, and the concentration of pollutants in the air.

- Pollution in Kerala was moderate in the early stages of the crisis (2008), but was controlled later (2009 - 2011). The decrease may be attributed to citizens' awareness and government policies.

- Between 2008 and 2012, Rajasthan's air pollution levels skyrocketed due to an increase in population density per square km, industries, vehicles, and particulate matter concentrations.

- While pollution levels in Sikkim have remained constant from 2008-2011, they increased by a very small factor in 2012, a factor that is attributable to the steady growth of industry, population and vehicles.

In light of the above data analysis approach, we conclude that data analysis is crucial to a better future. A striking aspect of this discussion is how data analysis and day-to-day instances are coherent, as well as how significant problems can be resolved by using data analysis.






