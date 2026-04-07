# Procurement Intelligence & Vendor Performance Dashboard
End-to-end procurement analytics project analyzing vendor performance, cost efficiency, quality risks, and compliance using SQL, Python, and Power BI.

## Overview
This project analyzes procurement operations to evaluate vendor performance across cost, quality, negotiation efficiency, and compliance.

The objective is to transform raw procurement data into actionable insights that help businesses:

Optimize vendor selection
Reduce procurement costs
Identify quality risks
Improve compliance monitoring

An end-to-end workflow was implemented using Python, SQL, and Power BI to build a decision-ready dashboard.

## Tools & Technologies
Python (Pandas) → Data cleaning & feature engineering

SQL → Vendor-level analysis & business queries

Power BI → Interactive dashboard & insights visualization

## Key Findings
### High-Risk Vendor Identified
Delta_Logistics recorded the highest defect rate (~10.87%)

Also had the highest non-compliance rate (~39%)

Despite this, it contributed significantly to total procurement spend

Indicates critical vendor risk impacting both cost and quality

### Spend Concentration
Vendors like Beta_Supplies and Epsilon_Group dominate procurement spend

Heavy dependency on a few suppliers increases operational risk

### Negotiation Inefficiency
Delta_Logistics provided the lowest savings relative to spend

Other vendors delivered significantly better negotiation outcomes

Opportunity to renegotiate or replace underperforming vendors

### Cost vs Quality Imbalance
Some high-spend vendors also show high defect rates

Indicates poor vendor performance monitoring

## Results

### The project successfully:

Identified high-risk vendors impacting procurement efficiency

Quantified cost savings opportunities through better negotiation

Highlighted compliance violations affecting operational reliability

Built a centralized dashboard for vendor performance tracking

## Methodology
### 1. Data Cleaning (Python)
Handled missing values (Delivery Dates, Defective Units)

Converted date columns into proper datetime format

Standardized categorical variables

### 2. Feature Engineering

Created key business metrics:

Delivery Time = Delivery_Date − Order_Date

Defect Rate = Defective_Units / Quantity

Negotiation Savings = Unit_Price − Negotiated_Price

Total Cost = Quantity × Negotiated_Price

Compliance Status classification

### 3. SQL Analysis

Performed vendor-level analysis to answer:

Who are the top vendors by spend?

Which vendors have the highest defect rates?

Who provides the best negotiation savings?

Which vendors violate compliance the most?

### 4. Dashboard Development (Power BI)

Built a 4-page interactive dashboard:

Vendor Overview

Cost vs Quality Analysis

Negotiation Performance

Vendor Risk Dashboard

## Tool-wise Insights
### Python
Cleaned and structured raw procurement data

Created meaningful business metrics for analysis

### SQL
Identified top vendors by spend

Ranked vendors based on defect rates and compliance

Evaluated negotiation effectiveness

### Power BI
Visualized vendor performance across multiple dimensions

Enabled interactive filtering and decision-making

Highlighted high-risk vendors through intuitive visuals

### Results
#### Which vendors contribute the most to procurement spend?
<img width="1344" height="770" alt="Screenshot (63)" src="https://github.com/user-attachments/assets/4e9395ff-a916-4ad1-9161-e5677baec6ce" />

#### Which vendors have the highest defect rates?
<img width="1356" height="659" alt="Screenshot (64)" src="https://github.com/user-attachments/assets/0c1650ee-861c-49a5-bf20-4fc92380c68f" />

#### Which vendors deliver the highest negotiation savings?
<img width="1338" height="678" alt="Screenshot (65)" src="https://github.com/user-attachments/assets/5057ef94-63fd-4a73-bb4a-06d98b30496e" />

#### Which vendors have the highest compliance violations?
<img width="1301" height="678" alt="Screenshot (66)" src="https://github.com/user-attachments/assets/f2b40899-7cab-4e42-9438-694703a380d0" />

#### Which high-spend vendors are underperforming overall?
<img width="1212" height="681" alt="Screenshot (67)" src="https://github.com/user-attachments/assets/e8233019-ae01-43ab-8e47-8835f1660744" />



### Dashboard Screenshots
#### Vendor Overview
<img width="1349" height="750" alt="1" src="https://github.com/user-attachments/assets/839d8418-a60c-4a10-979f-5bb31c92aed9" />

#### Cost vs Quality Analysis
<img width="1335" height="732" alt="2" src="https://github.com/user-attachments/assets/479a818a-717e-4efc-9853-a363ce95653b" />

#### Negotiation Performance
<img width="1338" height="760" alt="3" src="https://github.com/user-attachments/assets/f26e5370-e9bc-4ef4-8d4e-320f774934b3" />

#### Vendor Risk Dashboard
<img width="1346" height="739" alt="4" src="https://github.com/user-attachments/assets/e945b740-36bf-47ad-b7e2-65e5fc897fdb" />

## Recommendations
 Reduce dependency on Delta_Logistics due to high defect and compliance risk
 
 Renegotiate contracts with underperforming vendors
 
 Prioritize vendors like Epsilon_Group with strong performance metrics
 
 Implement continuous vendor monitoring using dashboards
 
 Balance cost vs quality when selecting vendors

## Future Improvements
Build a vendor scoring model

Introduce predictive analytics for defect risk

Automate procurement monitoring with real-time dashboards

Integrate external supplier performance data

## Final Note

### This project demonstrates the ability to:

Translate raw data into business insights

Build end-to-end analytical workflows

Deliver decision-focused dashboards








































