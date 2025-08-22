#  Advanced Customer Churn Analysis

**Objective:** Identify drivers of customer churn for a telecom provider, score at-risk customers, and recommend retention actions — using SQL, Excel and Power BI.

---

##  Tools
- PostgreSQL → queries in `SQL/sql-telco_churn_analysis queries.sql`
- Excel → churn scoring & pivot analysis (`Excel/telco_customer_churn_analysis_excel.xlsx`)
- Power BI → interactive dashboard (`PowerBI/Telco_customer_churn_analysis_powerBI.pbix`)

---

##  Repository Structure
- `Data/` → CSV exports (sanitized)
- `SQL/` → documented queries
- `Excel/` → scoring model & pivot analysis
- `PowerBI/` → Power BI dashboard
- `Screenshots/` → dashboard images
- `Docs/` → documentation
  - `data_dictionary.md`  
  - `methodology.md`

---

##  Workflow
1. Extract raw table `customer_churn` from PostgreSQL  
2. Export SQL query results → `Data/`  
3. Clean & enrich in Excel (add `Churn Risk Score`)  
4. Build Power BI dashboard with relationships & DAX measures  
5. Interpret results & propose business actions  

---

##  Key Insights
- **Overall churn rate:** ~27% (`n = 7,043 customers`)  
- **Highest-risk group:** Month-to-month contracts, tenure < 12 months → churn rate 42%  
- **Financial impact:** Estimated lost revenue ≈ $2.68M  
- **Recommendation:** Target ~1,869 customers with contract upgrades & proactive retention → projected churn reduction ~18%  

---

##  How to Reproduce
1. Open `SQL/sql-telco_churn_analysis queries.sql` in pgAdmin → run queries & export CSVs.  
2. Open `Excel/telco_customer_churn_analysis_excel.xlsx` → review churn score model.  
3. Open `PowerBI/Telco_customer_churn_analysis_powerBI.pbix` in Power BI Desktop → update data source to your local CSV/DB.  
4. Use slicers to interact with churn segments.  

---

##  Documentation
-  [Data Dictionary](Docs/data_dictionary.md)  
-  [Methodology](Docs/methodology.md)  

---

##  Screenshots Overview
See `Screenshots/` folder for sample visuals detailing:  
- Dashboard overview  
- Churn by contract type  
- Scatter: MonthlyCharges vs Tenure  
- Retention funnel  

---

**Contact:** B.S EKALAVYAN — GitHub: `github.com/BSEkalavyan`
