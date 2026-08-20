# telco-churn-analytics
# Telco Customer Churn BI & Risk Segmentation Dashboard

## Executive Summary
This project delivers an end-to-end Business Intelligence and customer risk segmentation solution for a telecommunications provider. By combining Python data engineering with interactive Power BI dashboards, the project identifies high-risk churn segments, evaluates Customer Lifetime Value (CLV), and isolates drivers behind revenue loss to enable proactive retention strategies.

---

## Technical Architecture & Workflow
1. **Data Pipeline & Preprocessing (Python)**:
   - Cleaned raw customer records, handled missing `TotalCharges` values, and transformed data structures.
   - Engineered a custom **Risk Scoring Model** evaluating contract type, internet service tier, payment method, and account tenure.
   - Formulated a **Customer Lifetime Value (CLV)** metric to measure financial exposure per churn risk segment.

2. **Business Intelligence & Data Modeling (Power BI)**:
   - Designed a relational data model with custom DAX measures for real-time KPI tracking.
   - Built interactive executive visuals with dynamic slicers for deep-dive exploratory analysis.

---

## Key Business Insights & Findings
- **High Contract Volatility**: Month-to-month contract holders account for the vast majority of account drop-offs compared to 1-year and 2-year subscribers.
- **Service-Tier Risk**: Fiber Optic subscribers exhibit disproportionately high churn rates when paired with electronic check payment configurations.
- **Tenure Threshold**: Churn risk drops significantly after 12 months of service, highlighting the critical importance of early-stage customer onboarding retention campaigns.

---

## Technical Stack
- **Languages**: Python (Pandas, NumPy)
- **Database & Querying**: SQL (MySQL)
- **Visualization & BI**: Power BI, DAX, MS Excel
- **Version Control**: Git, GitHub

---

