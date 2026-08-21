
CREATE DATABASE IF NOT EXISTS telco_churn_db;
USE telco_churn_db;
CREATE TABLE IF NOT EXISTS customer_churn (
    customerID VARCHAR(50) PRIMARY KEY,
    gender VARCHAR(10),
    SeniorCitizen INT,
    Partner VARCHAR(5),
    Dependents VARCHAR(5),
    tenure INT,
    PhoneService VARCHAR(5),
    MultipleLines VARCHAR(25),
    InternetService VARCHAR(25),
    OnlineSecurity VARCHAR(25),
    OnlineBackup VARCHAR(25),
    DeviceProtection VARCHAR(25),
    TechSupport VARCHAR(25),
    StreamingTV VARCHAR(25),
    StreamingMovies VARCHAR(25),
    Contract VARCHAR(25),
    PaperlessBilling VARCHAR(5),
    PaymentMethod VARCHAR(50),
    MonthlyCharges DECIMAL(10, 2),
    TotalCharges DECIMAL(10, 2),
    Churn VARCHAR(5),
    ChurnBinary INT,
    RiskScore INT,
    RiskCategory VARCHAR(20),
    CLV DECIMAL(10, 2)
);

-- Business Query: High Risk & High CLV Customer Extraction
SELECT 
    customerID, 
    Contract, 
    MonthlyCharges, 
    tenure, 
    CLV, 
    RiskCategory
FROM customer_churn
WHERE RiskCategory = 'High Risk' AND CLV > 2000
ORDER BY CLV DESC;

--  Business Query: Churn Rate by Contract Type
SELECT 
    Contract,
    COUNT(customerID) AS Total_Customers,
    SUM(ChurnBinary) AS Churned_Customers,
    ROUND((SUM(ChurnBinary) / COUNT(customerID)) * 100, 2) AS Churn_Rate_Percentage
FROM customer_churn
GROUP BY Contract
ORDER BY Churn_Rate_Percentage DESC;
