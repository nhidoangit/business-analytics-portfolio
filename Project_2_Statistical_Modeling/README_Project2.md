## Project 2: Predictive Modeling & Experimental Design for Business Insights

_Project Overview:_
Executed two in-depth **statistical analyses** to guide business strategy. First, a **multiple regression** analysis identified the **key factors influencing real estate prices**, providing a model for accurate valuation. Second, an experimental design analysis determined the **optimal packaging and storage conditions** to maximize product freshness, directly informing supply chain and operational decisions. See full working report [here](FullReport.pdf)

_Key Responsibilities & Role:_

* **Data Analyst:** Performed comprehensive **data exploration**, **model building, validation, and interpretation** for both cases.
* **Statistical Modeler:** Constructed and refined **multiple linear regression** and **ANOVA models** to distill complex relationships into actionable insights.
* **Problem Solver:** Applied **hypothesis** testing to answer critical business questions: "What drives property prices?" and "How do we best preserve product freshness?"

_Technical Skills Demonstrated:_

* **Statistical Analysis:** Multiple Linear Regression, Two-Way ANOVA, Backward Elimination, Hypothesis Testing (F-tests, t-tests).
* **Diagnostic Testing:** Validated model assumptions of normality, homoscedasticity, and independence through residual analysis and QQ-plots.
* **Data Visualization:** Generated scatterplot matrices, correlation matrices, boxplots, and interaction plots using base R.
* **Statistical Programming:** Advanced R programming for statistical computing and analysis.
* **Interpretation:** Translated complex statistical outputs (coefficients, p-values, R-squared) into clear, business-ready recommendations.

**Tools Used: R, RStudio**

## Case Study 1: Real Estate Price Prediction
* **Objective:** To build a predictive model for property prices and identify the most significant drivers.
* **Process:**
  1. **Exploratory Data Analysis (EDA)**: Created a scatterplot matrix and correlation matrix to visualize relationships between variables (price, size, bedrooms, age).
  2. **Model Building**: Fit a full multiple linear regression model. The initial model indicated that size was a highly significant positive predictor, bedrooms was a modestly significant predictor, and age was not significant.
  3. **Model Refinement**: Performed backward elimination, removing the non-significant age variable. The final, optimal model was:

      Price = 459.87 + 4.93*(Size) + 53.73*(Bedrooms)

  4. **Inference & Conclusion**: Interpreted the coefficients: for every additional square meter, the price increases by $4,930, holding other factors constant. The model explains 61.7% (adjusted R²) of the variation in property prices.
     
* **Business Impact**: Provides a data-driven method for property valuation and highlights that living space (size) is a far greater price driver than the number of rooms (bedrooms).

## Case Study 2: Product Freshness Experiment
* **Objective:** To analyze the effects of Packaging (Paper/Plastic) and Storage (Refrigerated/Room Temperature) on the Freshness score of goods.
* **Process:**
  1. **Experimental Design:** Checked for balance in the study design and explored effects using boxplots and interaction plots.
  2. **ANOVA Modeling:** Fit a two-way ANOVA model with interaction. The interaction term was non-significant (p-value = 0.292), indicating the effect of one factor does not depend on the other.
  3. **Final Model:** Fit a two-way ANOVA model without interaction. Both Packaging and Storage were found to have extremely significant main effects (p-value < 2.2e-16) on freshness.
  4. **Diagnostics:** Verified ANOVA assumptions (normality and constant variance of residuals) were met.

* **Business Impact:** The analysis conclusively shows that both packaging type and storage condition independently and significantly impact product freshness. This evidence can be used to make strategic decisions in logistics and packaging material selection to reduce spoilage and improve quality.
