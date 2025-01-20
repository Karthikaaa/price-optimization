Optimal Pricing Project

Overview

This project focuses on analyzing and optimizing product pricing to maximize revenue. The journey involves multiple stages, including data analysis, visualization, and modeling, leveraging various tools and platforms.

Project Workflow

1. Data Analysis
   
    Initial data analysis was conducted using Jupyter Notebook, where we explored the dataset and performed preprocessing.
   
    Further data exploration and queries were executed using AWS Athena, providing an efficient way to analyze large datasets stored in the cloud.


2. Data Visualization
   
    Created insightful visualizations using Tableau and Power BI to better understand trends and patterns in the data.

   
3. Modeling
   
    Final modeling and price optimization were implemented in Google Colab. Two key models were developed:
   
     > Allow Loss Model: Permits losses for some products but ensures total revenue is profitable.
   
     > No Loss Model: Ensures no individual product is sold at a loss while still optimizing revenue.

   
4. Synthetic Data Generation
   
    The QUANTITY_SOLD column was synthetically generated using ChatGPT, adding variability to the dataset for modeling purposes.

Project Structure


      ├── code

      │   ├── aws

      │   │   ├── athena

      │   │       ├── AvailabilityAnalysis.sql   # SQL script for availability analysis

      │   │       ├── PricingAnalysis.sql       # SQL script for pricing analysis

      │   │       ├── TableCreation.sql         # SQL script for table creation

      │   ├── jupyter

      │       ├── primary_analysis.ipynb        # Jupyter Notebook for initial analysis

      │   ├── colab

      │       ├── allow_loss_model.ipynb        # Allows some products to incur losses

      │       ├── no_loss_model.ipynb           # Ensures no losses

      ├── data

      │   ├── Nordstrom_products_with_quantity_sold.csv   # Dataset with quantity sold

      │   ├── Nordstrom_products-2023-05-28.csv           # Original dataset

      ├── visualisation

      │   ├── Tableau_Visualisation.twbx       # Tableau visualization file

      │   ├── PowerBI_Visualisation.pbix       # Power BI visualization file


Data Source

   The data was obtained from AWS Data Exchange. It includes various product details, and the QUANTITY_SOLD column was synthetically generated for this project.


Tools and Technologies
    
  Jupyter Notebook: For initial data exploration and preprocessing.
  AWS Athena: For efficient querying of large datasets.
  Tableau & Power BI: For creating visual insights.
  Google Colab: For building and testing price optimization models.
  ChatGPT: For synthetic data generation.


Key Files

Colab Models:

   allow_loss_model.ipynb: Optimizes pricing with allowance for product-specific losses.

   no_loss_model.ipynb: Optimizes pricing without any losses for individual products.

 
 AWS Athena Scripts:

   AvailabilityAnalysis.sql: Analyzes product availability.

   PricingAnalysis.sql: Performs detailed pricing analysis.

   TableCreation.sql: Script to set up tables in AWS Athena.


Visualization Files:

   Tableau_Visualisation.twbx: Tableau visualizations.

   PowerBI_Visualisation.pbix: Power BI dashboards.


Results

   The **Allow Loss Model
