-- Overall Churn Rate
SELECT COUNT(*) AS total_customers,SUM(Exited) AS churned_customers, ROUND(AVG(Exited) * 100, 2) AS churn_rate_pct
FROM bank_churn;


-- Churn by Tenure
SELECT Tenure, COUNT(*) AS customers,SUM(Exited) AS churned_customers, ROUND(AVG(Exited) * 100, 2) AS churn_rate_pct
FROM bank_churn
GROUP BY Tenure
ORDER BY Tenure;


-- Churn by Activity Status
SELECT IsActiveMember, COUNT(*) AS customers, SUM(Exited) AS churned_customers, ROUND(AVG(Exited) * 100, 2) AS churn_rate_pct
FROM bank_churn
GROUP BY IsActiveMember;


-- Churn by Number of Products
SELECT NumOfProducts, COUNT(*) AS customers, SUM(Exited) AS churned_customers, ROUND(AVG(Exited) * 100, 2) AS churn_rate_pct
FROM bank_churn
GROUP BY NumOfProducts
ORDER BY NumOfProducts;


-- Churn by Age Group
SELECT
    CASE
        WHEN Age < 30 THEN '<30'
        WHEN Age BETWEEN 30 AND 39 THEN '30–39'
        WHEN Age BETWEEN 40 AND 49 THEN '40–49'
        ELSE '50+'
    END AS age_group,
    COUNT(*) AS customers,
    SUM(Exited) AS churned_customers,
    ROUND(AVG(Exited) * 100, 2) AS churn_rate_pct
FROM bank_churn
GROUP BY age_group
ORDER BY age_group;

