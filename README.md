# Customer Segmentation Machine Learning Project
## Overview : 
This project aims to perform customer segmentation using a combination of SQL for data preparation and Python for applying machine learning techniques. The workflow involves data extraction, cleaning, analysis using SQL queries, data loading into Jupyter Notebook for further analysis, segmentation using K-means clustering, visualization of results, and saving the segmented data.

## Workflow :
### Using SQL : 
1. Data Extraction: Upload the data into the MS SQL database.
2. Data Cleaning and Analysis: Utilize SQL queries to clean and analyze the data. Perform 10 query-based analyses to understand the dataset.

### Using Python :
1. Import Data Using Pyodbc and Pandas: Access the data stored in the MS SQL Server using the Pyodbc Python module and load it into a Pandas DataFrame in a Jupyter Notebook.
2. Segmentation with K-means Clustering: Apply the K-means clustering algorithm to segment customers based on selected features.
3. Visualization and Interpretation of the Results: Visualize the clustered results to interpret and understand the segments created.
4.Save Result File in CSV Format: Save the segmented data into a CSV file for future use or analysis.

## Tools and Libraries :
* SQL: Used for data preparation and initial analysis.
* Python: Utilized with various libraries such as Pandas for data manipulation and Pyodbc for database connectivity.
* Jupyter Notebook: Used as an environment for Python coding and visualization.
* Scikit-learn: Employed for the implementation of the K-means clustering algorithm.

## Files :
* Data Preparation:
  SQL files for data cleaning and analysis.
* Jupyter Notebook:
  Python code for data loading, K-means clustering, and result visualization.
* CSV File:
  Contains the segmented data after clustering.

## Usage :
* SQL Section:
  Execute the SQL files in your preferred SQL environment to prepare and analyze the data.
* Python Section:
  Open the Jupyter Notebook and execute the code cells step by step.
* Result Analysis:
  Analyze the clustered results and visualizations in the Jupyter Notebook.
* Saving Results:
  Utilize the generated CSV file for any future analysis or reporting.

## Conclusion :
* This project illustrates the process of customer segmentation using a combination of SQL and Python, providing a structured approach to understanding, clustering, and interpreting customer data.

