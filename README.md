# LA-Crime Analysis Using Python And SQL

## Table of Contents
- [Project Overview](#project-overview)
- [Project Structure](#project-structure)
- [Data Cleaning and Preparation](#data-cleaning-and-preparation)
- [Data Analysis](#data-analysis)
- [Data Visualization](#data-visualization)
- [Analysis Results](#analysis-results)
- [Recommendations](#recommendations)
- [Limitations](#limitations)
- [Access the files](#access-the-files)
- [References](#references)
### Project Overview
---
Welcome to the Los Angeles crime analysis project! This project is focuses on analyzing crimes that occurred in Los Angeles from 2020 to 2024. The aim of this project is to provide the stastical insights and trends regarding  crimes that occurre in Los Angeles, in order to support the police department operations and development of crime prevention initiatives.

### Project Structure

 - LA Crime dataset is the primary dataset for this analysis, the dataset contains the LA data crimes covers the time period of 2020 to 2024 which hasn't been included in the repository due to its large size. download the file directly [here](https://data.lacity.org/Public-Safety/Crime-Data-from-2020-to-Present/2nrs-mtv8/about_data)
 - [LACrime_Analysis_Visualization.ipynb](LACrime_Analysis_Visualization.ipynb): Python file containing the data prepartion, data analysis and data visualization
 - [LACrime_Analysis.sql](LACrime_Data_Analysis.sql): SQL file containing the data analysis
   
### Data Cleaning and Preparation
The raw data was cleaned and preprocessed using python. This step involved dealing with missing values and outliers, data type conversion, and data transformations. The clean, ready-for-analysis dataset was then loaded into a SQL database for exploratory data analysis.
 - Dealing with missing values: We Drop columns that contain so many nulls because they would have affected the accuracy of any conclusion from analysis
 - Dealing with outliers: After performing the statistical description, we noticed the negative values ​​in the Vict Age column, which is not normal because we cannot have a negative age, so we removed all the negative values ​​in this column
 - Data conversion: we convert TIME OCC from int to time format, update datatypes of Date Rptd and DATE OCC to datetime format
 - Data transformation: We extracted the Year and Month in DATA OCC and then create news columns Year and Month
### Data Analysis
Data Analysis involved exploring the clean LA Crime data, the process was carried out with SQL and  Python to answer a variety of key questions such as:
 - How many crimes are occurred per month?
 - How many crimes are occurred per year?
 - How many crimes are occurred per Age?
 - How many crimes are occurred Over Time (Year and Month)?
 - What is the most common type of crime based on crimedescription ('Crm Cd Desc') in each area ?
 - 
   

