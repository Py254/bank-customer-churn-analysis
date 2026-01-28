# Bank Customer Churn Analysis
Identifying key drivers of customer attrition using SQL

## Business Context
Customer churn directly impacts revenue and growth in retail banking. Understanding which customers are most likely to leave helps organizations focus retention efforts where they matter most.

This project analyzes historical bank customer data to uncover patterns associated with churn and highlight actionable retention opportunities.

## Business Questions
- What is the overall customer churn rate?
- Are customers more likely to churn early or later in their lifecycle?
- How does customer activity status relate to churn?
- Does holding more bank products reduce churn risk?
- Which customer age groups are most at risk?

## Data Overview
- **Dataset:** Public bank customer churn dataset  
- **Size:** 10,000 customers  
- **Churn definition:** `Exited = 1` indicates a customer who left the bank  
- **Key features:** Age, tenure, balance, number of products, activity status, churn indicator  

## Tools Used
- SQL for data exploration and segmentation

## Key Findings

- The overall customer churn rate is **20.37%**, indicating significant customer attrition.
- Customers with shorter tenure (0–1 years) show higher churn rates (≈22–23%), suggesting elevated risk early in the customer lifecycle.
- Inactive customers churn at nearly **2× the rate** of active customers (26.85% vs 14.27%), making engagement the strongest observable retention lever.
- Customers holding exactly **two products** have the lowest churn rate (7.58%), while single-product customers churn at much higher rates (27.71%).
- Churn increases sharply with age, with customers aged **50+** experiencing the highest churn rate (**45.45%**).

  
## Business Implications

- Strengthen onboarding and early-lifecycle engagement to reduce churn among new customers.
- Proactively re-engage inactive customers before disengagement leads to churn.
- Encourage cross-selling strategies that move customers from one product to two products, as this segment shows the strongest retention.
- Design targeted retention strategies for older customers, who represent the highest-risk demographic group.
  

## Limitations
- Results reflect correlations, not causation
- Snapshot data with no behavioral history
- No data is available on pricing, service interactions, or marketing exposure.
- Extremely high churn rates observed for customers with 3–4 products may be influenced by small sample sizes or selection effects.


## Next Steps
- Build a simple churn risk score to prioritize retention efforts.
- Analyze churn trends over time if longitudinal data becomes available.
- Test targeted retention strategies through controlled experiments.
