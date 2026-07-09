# IPL Player Performance & Team Strategy Analyzer

## Overview
Analyzed 170,000+ ball-by-ball IPL records across 13 seasons (2008–2020) to identify player performance, team strategies, and auction insights using SQL, Python, and Power BI. The project culminates in an interactive Power BI dashboard featuring KPI cards, dynamic slicers, and a custom color theme for clear, recruiter-ready storytelling.

## Tools Used
- **SQL (MySQL)** — Data extraction and business queries
- **Python (Pandas, Matplotlib, Seaborn)** — Exploratory Data Analysis
- **Power BI** — Interactive dashboard creation
- **Jupyter Notebook** — Python EDA documentation

## Dataset
- Source: Kaggle — IPL Complete Dataset 2008–2020
- `matches.csv` — 1,076 IPL matches
- `deliveries.csv` — 170,170 ball-by-ball records

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

## Dashboard Preview
![IPL Dashboard](dashboard_screenshot.png)

*Interactive Power BI dashboard featuring KPI cards (Total Matches, Total Runs, Total Players), a top run-scorers chart with distinct player colors, a toss-decision breakdown, season-wise match trends, and dynamic venue/season filters.*

## Project Structure
```
├── ipl_queries.sql          # 5 business SQL queries
├── ipl_analysis.ipynb       # Python EDA with 5 charts
├── ipl_dashboard.pbix       # Power BI dashboard
├── dashboard_screenshot.png # Dashboard preview
└── README.md
```

## Dashboard Features
- **KPI Cards** — Total Matches, Total Runs, and Total Players at a glance
- **Bar Chart** — Top run scorers, each player color-coded for quick visual distinction
- **Donut Chart** — Toss decision breakdown (Bat vs Field)
- **Column Chart** — Matches played by season, with a gradient color scheme highlighting the timeline
- **Table** — Player-wise run comparison with totals
- **Slicers** — Dynamic filters for venue/winner and season, styled as compact dropdowns
- **Custom Theme** — Dark navy background with a cohesive accent color palette

## SQL Concepts Used
- JOINs, GROUP BY, ORDER BY, HAVING
- Window Functions — RANK(), PARTITION BY
- Subqueries and CTEs
- CASE WHEN statements
- Aggregate functions

## Python Libraries Used
- Pandas — Data manipulation
- Matplotlib — Data visualization
- Seaborn — Statistical charts
- MySQL Connector — Database connection

## How to View
1. Clone this repository
2. Open `ipl_dashboard.pbix` in Power BI Desktop to explore the interactive dashboard
3. Review `ipl_analysis.ipynb` for the Python-based exploratory analysis
4. Check `ipl_queries.sql` for the underlying business SQL queries

## Author
**Vanipenti Kojith Nagendra Reddy**
B.Tech Computer Science Engineering — 2026
kojithreddy@gmail.com
