# E-commerce Funnel Analysis Report

# 1. Business Objective

The goal of this analysis was to evaluate the customer journey from session start to purchase, identify key drop-off points, and uncover opportunities to improve conversion rates and overall revenue.

# 2. Data Preparation & Methodology

Raw event-level data was extracted and processed using SQL to ensure accuracy and consistency.

Key steps included:

•Filtering relevant funnel stages: session_start → purchase <brb>
•Removing duplicate user interactions using ROW_NUMBER() to ensure each user is counted once per stage <br>
•Aggregating unique users at each stage to accurately reflect funnel progression <br>
•Segmenting data by device category (desktop, mobile, tablet) and top 3 countries (United States, India, Canada) <br>
•Exporting cleaned data to Excel for drop-off rate calculations and funnel visualization <br>
