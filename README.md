# IPL Player Performance & Team Strategy Analyzer

## Overview
Analyzed 170,000+ ball-by-ball IPL records across 13 seasons (2008-2020) 
to identify player performance, team strategies, and auction insights 
using SQL, Python, and Power BI.

## Tools Used
- **SQL (MySQL)** - Data extraction and business queries
- **Python (Pandas, Matplotlib, Seaborn)** - Exploratory Data Analysis
- **Power BI** - Interactive dashboard creation
- **Jupyter Notebook** - Python EDA documentation

## Dataset
- Source: Kaggle - IPL Complete Dataset 2008-2020
- matches.csv - 1,076 IPL matches
- deliveries.csv - 170,170 ball-by-ball records

## Key Business Questions Answered
1. Who are the top 10 run scorers in IPL history?
2. Which batsmen have the highest strike rates (min 500 runs)?
3. Does winning the toss help win the match?
4. Who are the top 10 wicket takers in IPL history?
5. Who were the top 3 batsmen in each IPL season?

## Key Findings
- Virat Kohli is the all-time leading run scorer with 5,156 runs
- Andre Russell has the highest strike rate of 176.47 among top batsmen
- Teams choosing to field first win 54% of matches vs 45% when batting first
- Harbhajan Singh is the all-time leading wicket taker
- Toss decision significantly impacts match outcomes

## Project Structure
- ipl_queries.sql - 5 business SQL queries
- ipl_analysis.ipynb - Python EDA with 5 charts
- ipl_dashboard.pbix - Power BI dashboard
- dashboard_screenshot.png - Dashboard preview

## SQL Concepts Used
- JOINs, GROUP BY, ORDER BY, HAVING
- Window Functions - RANK(), PARTITION BY
- Subqueries and CTEs
- CASE WHEN statements
- Aggregate functions

## Python Libraries Used
- Pandas - Data manipulation
- Matplotlib - Data visualization
- Seaborn - Statistical charts
- MySQL Connector - Database connection

## Dashboard Visuals
- KPI Card - Total matches played
- Bar Chart - Top 10 run scorers
- Donut Chart - Toss decision analysis
- Line Chart - Season wise match trend
- Table - Player wise run comparison

## Author
Vanipenti Kojith Nagendra Reddy
B.Tech Computer Science Engineering - 2026
kojithreddy@gmail.com