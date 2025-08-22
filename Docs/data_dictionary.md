# 📘 Data Dictionary — Telco Customer Churn Dataset

| Column Name       | Data Type   | Description                                                                 |
|-------------------|-------------|-----------------------------------------------------------------------------|
| customerID        | String      | Unique identifier for each customer                                         |
| gender            | String      | Gender of the customer (`Male`, `Female`)                                   |
| SeniorCitizen     | Integer     | Indicates if the customer is a senior citizen (`0 = No`, `1 = Yes`)         |
| Partner           | String      | Whether the customer has a partner (`Yes`/`No`)                             |
| Dependents        | String      | Whether the customer has dependents (`Yes`/`No`)                            |
| tenure            | Integer     | Number of months the customer has stayed with the company                   |
| PhoneService      | String      | Whether the customer has a phone service (`Yes`/`No`)                       |
| MultipleLines     | String      | Whether customer has multiple phone lines (`Yes`/`No`/`No phone service`)   |
| InternetService   | String      | Type of internet service (`DSL`, `Fiber optic`, `No`)                       |
| OnlineSecurity    | String      | Whether online security service is subscribed                               |
| OnlineBackup      | String      | Whether online backup service is subscribed                                 |
| DeviceProtection  | String      | Whether device protection service is subscribed                             |
| TechSupport       | String      | Whether tech support service is subscribed                                  |
| StreamingTV       | String      | Whether streaming TV service is subscribed                                  |
| StreamingMovies   | String      | Whether streaming movies service is subscribed                              |
| Contract          | String      | Contract type (`Month-to-month`, `One year`, `Two year`)                    |
| PaperlessBilling  | String      | Whether customer uses paperless billing (`Yes`/`No`)                        |
| PaymentMethod     | String      | Payment method used by the customer (e.g., `Electronic check`, `Mailed check`) |
| MonthlyCharges    | Float       | Monthly amount billed to the customer                                       |
| TotalCharges      | Float       | Total charges billed to the customer (corrected for blanks/NaNs)            |
| Churn             | String      | Whether the customer churned (`Yes`/`No`)                                   |
