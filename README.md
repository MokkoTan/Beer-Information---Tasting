# Beer Information - Tasting Profiles
 _Top-Rated Beer Information for Tasting Profiles_

![Music Banner](https://t4.ftcdn.net/jpg/05/61/77/43/360_F_561774374_FcP5tPdPHoa7uTYDFjwkYyKoSxK7GbAv.jpg)

##### Data source from _Kaggle.com_ 
.

>
>Kaggle is an online community platform for data scientists and machine learning enthusiasts. Kaggle allows users to collaborate with other users, find and publish datasets, use GPU integrated notebooks, and compete with other data scientists to solve data science challenges.

.
#### Data Origin
Source Name:		Beer Information - Tasting Profiles
Format:		‘CSV’
Created on:		Jan 10, 2020
Coverage:		Jan 10, 2020 to Jan 12, 2020
Source(s):		BeerAdvocate.com
Collection Methodology:     Scraped information on rated beers and their reviews. Word counts from reviews were used to define a beer's features
Records:		5558
.


[![N|Solid](https://imgur.com/h8JYpQ7.jpg)](https://www.kaggle.com/datasets/stephenpolozoff/top-beer-information?select=beer_data_set.csv)  

## Context
The goal of the project was to create a tasting profile on beer based on word counts for a classification and recommendation system. The first ten columns are information on the beer provided by the source, along with contributed information like a unique key for each beer and style. The last eleven columns represent the tasting profile features of the beer, and are defined by word counts found in up to 25 reviews of each beer. The assumption is that people writing reviews are more than likely describing what they do experience rather than what they do not.

A dataset of up to 50 top-rated beers across 112 styles, 5558 beers in total. Source: BeerAdvocate.com. This information was collected for a class project, maybe someone else might find it useful for another project.

## My Role and Objectives 

A beer sommelier, also known as a cicerone in the United States, is a trained professional, working in the hospitality and alcoholic beverage industry, who specializes in the service and knowledge of beer.

#### Use data analysis skill to find out :
 - Top 5 Beer & it’ Brewery
-  Determine the most popular beer style
-  Analyzing the properties that make a highly-rated beer 
-  Suggest Beer Style, Mouthfeel, Taste, Flavor & Aroma for upcoming OktoberFest!

## Techniques used in this study

- Rename Table
- Remove Column
- Alter Column Name
- Alter Column Data Type
- Create Table

![Dashboard Design](https://imgur.com/dbNyBIw.jpg)

## Insights

- Most popular Beer Style is IPA New England
- Most popular Brewery based on top 50 Beer is Tree House Brewing Company
- Highest rating Mouthfeel is body of beer
- Highest rating Taste is sweet
- Highest rating Flavor and Aroma is malty


.

[![N|Solid](data:image/png;base64,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)](https://www.linkedin.com/in/mokko-tan-3222b91b4/)  
