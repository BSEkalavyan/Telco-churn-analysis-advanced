# 📑 Methodology — Customer Churn Analysis

## 1. Data Extraction
- Source: Telco customer churn dataset (CSV).  
- Imported into PostgreSQL (`customer_churn` table).  
- Structured queries written and stored in `SQL/sql-telco_churn_analysis queries.sql`.

## 2. Data Cleaning
- `TotalCharges` column: handled blank values → converted to numeric.  
- Casted columns into correct data types (e.g., `SeniorCitizen` as integer, charges as float).  
- Removed duplicates in `customerID`.  

## 3. Data Transformation (SQL Segmentation)
- Segmented churn by:
  - Contract type  
  - Internet Service  
  - Payment Method  
  - Senior Citizen status  
  - MonthlyCharges ranges  
- Exported query results into `Data/` for reproducibility.  

## 4. Data Enrichment (Excel)
- Imported SQL exports into Excel workbook (`Excel/telco_customer_churn_analysis_excel.xlsx`).  
- Created calculated column: **Churn Risk Score** = weighted score of (contract type, tenure, monthly charges).  
- Built PivotTables & KPIs for churn segmentation.  

## 5. Data Visualization (Power BI)
- Imported raw + segmented data into `PowerBI/Telco_customer_churn_analysis_powerBI.pbix`.  
- Built model relationships and DAX measures for churn KPIs.  
- Created visuals:
  - KPI cards (Total Customers, Churn %, Revenue Lost)  
  - Scatter (MonthlyCharges vs Tenure, colored by churn)  
  - Funnel chart (Retention stages)  
  - Histogram (Tenure distribution for churned)  
  - Churn by Contract, Payment Method, Internet Service  
- Enabled slicers for Gender, Contract type, and Internet Service.

## 6. Insights & Recommendations
- Month-to-month contracts → **highest churn rate**.  
- Fiber optic internet users → **more likely to churn** than DSL users.  
- Payment via **Electronic check** shows strong churn association.  
- Senior citizens churn at higher rates.  
- Retention strategy: Target top-risk 1,800+ customers with contract discounts, loyalty perks, and proactive engagement.

## 7. Deliverables
- SQL queries → `SQL/sql-telco_churn_analysis queries.sql`  
- Excel workbook → `Excel/telco_customer_churn_analysis_excel.xlsx`  
- Power BI dashboard → `PowerBI/Telco_customer_churn_analysis_powerBI.pbix`  
- Data dictionary → `Docs/data_dictionary.md`  
- Methodology → `Docs/methodology.md`  
- Dashboard screenshots → `Screenshots/`
