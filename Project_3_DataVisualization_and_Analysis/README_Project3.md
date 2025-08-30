## Project 3: Financial Anomaly Detection & Multi-Tier Fraud Dashboard
_Project Overview:_
Led the development of a tiered fraud analytics solution for state procurement card transactions. To serve different stakeholder needs, I designed two distinct interactive Power BI dashboards from a single dataset. This project involved end-to-end analysis of over $72 million in FY2017 spending: from statistical anomaly detection using Z-scores, to building the interactive dashboards, and finally authoring a detailed report with actionable recommendations for auditors and management.

* Full [Fraud Detection Report](Fraud_Detection_Report.pdf)
* View the [Interactive Dashboard](https://app.powerbi.com/view?r=eyJrIjoiNmNkMGExYTQtNWRiOC00NjBjLWJjMTgtOGI1MTZiMDMyODFiIiwidCI6IjgyYzUxNGMxLWE3MTctNDA4Ny1iZTA2LWQ0MGQyMDcwYWQ1MiJ9&pageName=b24f41c5f358ef0ac3b8) for  internal auditors and the general public.

_Key Responsibilities & Role:_

* **Business Analyst & Data Storyteller:** Conducted stakeholder analysis to define requirements and authored a comprehensive report to translate data insights into a strategic narrative for decision-makers.
* **BI Architect & Developer:** Designed and built a multi-tier dashboard strategy to serve both internal investigators and the general public from a single source of truth.
* **Data Analyst:** Engineered a statistical anomaly detection system and performed deep-dive analysis into temporal, departmental, and vendor-based patterns.

_Technical Skills Demonstrated:_

* **Power BI Advanced Development:** DAX, data modeling, interactive reporting, drill-throughs, bookmarks, and dynamic visibility settings to create tailored user experiences.
* **Stakeholder Management:** Designing different dashboards based on user roles and data sensitivity requirements.
* **Data Governance:** Understanding and implementing appropriate levels of data granularity and disclosure for different audiences.
* **Statistical Analysis:** Anomaly detection using Z-scores and the 3-sigma rule.
* **Tools: Microsoft Power BI, Excel**

_Deliverables & Strategy:_

 ** 1. Internal Investigator Dashboard:**

  * **Audience**: Fraud analysts and internal auditors.
  * **Key Features**:
    * **Daily Spend Timeline**: Interactive line chart with outliers highlighted, enabling precise identification of anomalous days like July 25th and February 2nd.
    * **Advanced Filtering**: Dynamic filters by Merchant, Department, and Date allow for deep-dive root cause analysis.
    * **Granular Metrics**: Direct readouts of high-risk entities (e.g., Department of Corrections: $8.52M flagged).
    *** Drill-Through Capability**: Architecture allows users to click on a visual to see the underlying transaction details.
      
  **2. General Public / Executive Dashboard:**

* **Audience**: Taxpayers, executives, and public officials.
* **Key Features**:
    * **Aggregated Views**: High-level charts showing Flagged Amount by Month and by Category protect privacy while showing trends.
    * **Departmental Overview**: Bar chart ranking departments by flagged transactions provides clear accountability.
    * **Transparency Metrics**: Clear KPI cards show the overall scale of the issue (30.04%, $21.72M flagged).
    * **Simplified Story**: Focuses on the "what" and "so what" without operational details.

## Comprehensive Analysis Report:

_Key Findings from Analysis:_

* **Scale of Anomalies**: Flagged $21.72 million (30.04%) of all transactions as anomalous using the 3-sigma rule, a rate indicating significant control issues.
* **High-Risk Entities**: Identified Discount Crowd and Expedia as vendors with a 100% flag rate, and the Department of Correction as a high-risk department with over $8.5M in flagged spend.
* **Temporal Patterns**: Discovered that anomalies spike predictably during holiday periods (July, Nov, Dec) but also occur off-cycle (e.g., a major spike on February 2nd), and are concentrated on weekdays.

_Actionable Recommendations:_
* Implement **automated alerts** for non-seasonal spending spikes.
* **Impose merchant-specific spending caps** and mandatory dual approvals for high-risk departments.
* Conduct mandatory **monthly audits** for departments with **a >25% flag rate**.
* Advance the dashboard with **machine learning-based scoring** for **predictive alerts**.

_Business Impact & Value:_
This project provides a complete framework for proactive financial oversight. The dashboards offer real-time monitoring tools, while the report delivers a data-backed strategy for strengthening internal controls. The findings align with official state audit reports, validating the methodology and underscoring the urgency of the recommendations. This work enables investigators to focus resources effectively, provides executives with clear oversight, and promotes public transparency.
