-- Telco Churn Analysis SQL Queries
-- Author: B.S EKALAVYAN
-- Description: Exploratory & segmentation SQL for churn insights

SELECT * FROM customer_churn LIMIT 10;

-- Churn rate summary
SELECT
  COUNT(*) AS total_customers,
  SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
  ROUND(100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
FROM customer_churn;

-- Churn rate by contract
SELECT
  contract,
  COUNT(*) AS total,
  SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
  ROUND(100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_percent
FROM customer_churn
GROUP BY contract
ORDER BY churn_percent DESC;

-- Tenure distribution for churned users
SELECT
  FLOOR(tenure / 6) * 6 AS tenure_range_start,
  COUNT(*) AS churned_users
FROM customer_churn
WHERE churn = 'Yes'
GROUP BY 1
ORDER BY 1;

-- Churn Rate by Internet Service Type
SELECT
  internetservice,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
  ROUND(100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
FROM customer_churn
GROUP BY internetservice
ORDER BY churn_rate DESC;

-- Churn Rate by Payment Method
SELECT
  paymentmethod,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
  ROUND(100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
FROM customer_churn
GROUP BY paymentmethod
ORDER BY churn_rate DESC;

-- Churn Rate by Senior Citizen (0 = No, 1 = Yes)
SELECT
  CASE WHEN seniorcitizen = 1 THEN 'Senior' ELSE 'Non-Senior' END AS customer_type,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
  ROUND(100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
FROM customer_churn
GROUP BY customer_type
ORDER BY churn_rate DESC;

--  Churn Rate by Monthly Charges Buckets (20-unit intervals)
SELECT
  CONCAT(
    FLOOR(monthlycharges / 20) * 20, 
    ' - ', 
    FLOOR(monthlycharges / 20) * 20 + 19.99
  ) AS charge_range,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
  ROUND(
    100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS churn_rate
FROM customer_churn
GROUP BY 
  FLOOR(monthlycharges / 20)
ORDER BY 
  FLOOR(monthlycharges / 20);







