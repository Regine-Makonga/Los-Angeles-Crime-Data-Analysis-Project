# Los-Angeles-Crime Analysis Using Python And SQL

## Table of Contents
- [Project Overview](#project-overview)
- [Project Structure](#project-structure)
- [Data Cleaning and Preparation](#data-cleaning-and-preparation)
- [Data Analysis](#data-analysis)
- [Data Visualization](#data-visualization)
- [Analysis Results and Recommendations](#analysis-results-and-recommendations)
- [Limitations](#limitations)
- [Access the files](#access-the-files)
- [References](#references)
## Project Overview

Welcome to the Los Angeles crime analysis project! This project is focuses on analyzing crimes that occurred in Los Angeles from 2020 to 2024. The aim of this project is to provide the stastical insights and trends regarding  crimes that occurre in Los Angeles, in order to support the police department operations and development of crime prevention initiatives.

## Project Structure
 - LA Crime dataset is the primary dataset for this analysis, the dataset contains the LA data crimes covers the time period of 2020 to 2024 which hasn't been included in the repository due to its large size. download the file directly [here](https://data.lacity.org/Public-Safety/Crime-Data-from-2020-to-Present/2nrs-mtv8/about_data)
 - [LACrime_Analysis_Visualization.ipynb](LACrime_Analysis_Visualization.ipynb): Python file containing the data prepartion, data analysis and data visualization
 - [LACrime_Analysis.sql](LACrime_Data_Analysis.sql): SQL file containing the data analysis
   
## Data Cleaning and Preparation
The raw data was cleaned and preprocessed using python. This step involved dealing with missing values and outliers, data type conversion, and data transformations. The clean, ready-for-analysis dataset was then loaded into a SQL database for exploratory data analysis.
 - Dealing with missing values: We Drop columns that contain so many nulls because they would have affected the accuracy of any conclusion from analysis
 - Dealing with outliers: After performing the statistical description, we noticed the negative values ​​in the Vict Age column, which is not normal because we cannot have a negative age, so we removed all the negative values ​​in this column
 - Data conversion: we convert TIME OCC from int to time format, update datatypes of Date Rptd and DATE OCC to datetime format
 - Data transformation: We extracted the Year and Month in DATA OCC and then create news columns Year and Month
## Data Analysis

Data Analysis involved exploring the clean LA Crime data, the process was carried out with SQL and  Python to answer a variety of key questions such as:
 - How many crimes are occurred per month?
 - How many crimes are occurred per year?
 - How many crimes are occurred per Age?
 - How many crimes are occurred Over Time (Year and Month)?
 - What is the most common type of crime based on crimedescription ('Crm Cd Desc') in each area ?
 - How does the time of occurrence relate to the type of crime? Are certain crimes more likely at certain times of day?
 - What is the average age of victims for each type of crime?
 - Are men, women, or others sex more likely to be victims of certain types of crimes?
 - Which area has the most crimes?
## Data Visualization
The data visualization process was carried out with Python by creating plots and dashboard to visualize the results obtained from the data analysis process.

Here are some graphs and dashboard:

#### Dashboard
<img width="427" alt="LA Crime Dashboard" src="https://github.com/user-attachments/assets/d1f694db-e3eb-4bb9-aa13-7120739fc186" />



#### Plots
<img width="470" alt="Crime per Month" src="https://github.com/user-attachments/assets/514c13ce-d7b8-4453-9565-0b5590cf0fe3" />

<img width="462" alt="Crime per Year" src="https://github.com/user-attachments/assets/b8eac637-3de9-4111-b43d-1f8ee13a92f4" />

<img width="645" alt="Most Common type of Crime per Area" src="https://github.com/user-attachments/assets/28b6ddef-414b-4f1f-975c-838c8cf45626" />

<img width="643" alt="Crime frequency by time period" src="https://github.com/user-attachments/assets/86f7e265-c976-43fc-bec3-803ac645d4b5" />

<img width="557" alt="Victim sex by crime type" src="https://github.com/user-attachments/assets/617adb85-3122-4dae-ae1d-91579ec95816" />

## Analysis Results and Recommendations

#### Analysis Results
 - During the last 4 years we have noticed that there is an increase in crimes at the beginning of the year than at the end of the year.
 - There was an increase in crimes in 2022 than in 2024 where noticed fewer crimes than in other years
 - Vehicle Stolen is the most committed crime over the last 4 years.
 - The people most exposed to crime are people between the ages of 20 and 50.
 - We were able to noticed which types of crimes are more likely to happen during certain hours of the day, as in case of (Battery simple assault) which happens often in afternoon and (Burglary from vehicle stolen) which happens often in the evening.
 - We observed that there are certain people of certain sexes who are more exposed to crimes than others, as in the case of (Assault with deadly weapon, aggravated assault) where there are more male victims than other sexes.
#### Recommendations
 - Inform patrol schedules, resource allocation, and strategic planning for crime prevention in certain area for specific crime types.
 - Targeted law enforcement and public safety campaigns in the area most affected by certain types of crime.
 - Encourage residents to use safety apps with real-time alerts for high-crime areas.
 - Police can increase patrols during high-risk months.
 - Run campaigns to educate the population about the most frequent crimes in each period and the people of the age and gender most exposed to certain types of crime and how to prevent them.
 - Burglaries from vehicle stolen peak at evening, police should increase patrols at this time of day.

## Limitations
I had to remove all the columns containing so many null values, so that it did not affect the accuracy of the analysis, certain information contained in certain columns was going to be very important to analyze as in case of Weapon used(Weapon Used Cd') and Weapon description ('Weapon Desc), unfortunately they contained a lot of nulls which was going to affect the accuracy in the analyzes.


The finding are may not capture the full complexity of crime patterns in Los Angeles because they were based on available data

## Access the files
 - To run the project, make sure you have installed  SQL to perform analysis, and Python with pandas, seaborn, matplotlib for data analysis and data visualization.
 - Download the LA Crime dataset which hasn't been included in the repository due to its large size you can Download it from [data.lacity.org](https://data.lacity.org/Public-Safety/Crime-Data-from-2020-to-Present/2nrs-mtv8/about_data).
 - Using python in jupyter notebook to perform data cleaning and data Preparation then export data for data analysis 
 - Create a database in MySQL Workbench, create table, load clean and prepared export from python and follow the queries in [data_analysis.sql](LACrime_Data_Analysis.sql) then perform the analysis.
 - For the data visualizations you can use python in jupyter notebook the [visualizations.ipynb](LACrime_Analysis_Visualization.ipynb)

## References
[Pandas.pydata.org](https://pandas.pydata.org/docs/user_guide/index.html)


[Matplotlib.org](https://matplotlib.org/stable/users/index.html)


[seaborn.pydata.org](https://seaborn.pydata.org/)



   







   

