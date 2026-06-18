# Digital-Marketing-Campaign-Efficiency
Digital-Marketing-Analysis-SQL-Tableau
# Marketing Performance Analysis: From Raw Data to Actionable Insights

**View Tableau Dashboard: https://public.tableau.com/views/DigitalMarketingCampaignEfficiency/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

## Objective
The objective of this analysis was to evaluate marketing efficiency across channels and campaigns and determine whether budget allocation aligns with performance.

### Key Questions:
* Which channels generate the highest Return on Ad Spend (ROAS)?
* What is the Customer Acquisition Cost (CAC) for each campaign?
* Where should budget be reallocated to maximize profit based on Month-over-Month (MoM) trends?

## Methodology
To transform raw, fragmented data into a clean, interactive dashboard, the following steps were taken:

1. **Centralizing Data in SQL**
   Data was migrated from static files into PostgreSQL to improve reliability, scalability, and query performance.
2. **Data Cleaning & Quality Assurance**
   * Fixed naming inconsistencies and normalized platform names.
   * Removed duplicates and validated missing values.
   * Ensured logical integrity (no negative spend or revenue values).
3. **Marketing Efficiency Metrics Calculation**
   Using SQL, core performance indicators were engineered:
   * ROAS (Return on Ad Spend)
   * CAC (Customer Acquisition Cost)
   * Profit (Revenue - Spend)
4. **BI Performance Optimization**
   Created a database view that pre-aggregates data by date and channel to ensure the Tableau dashboard remains responsive and fast.
5. **Adding Historical Context**
   Integrated January data to enable Month-over-Month (MoM) performance comparisons.
6. **Building the Interactive Dashboard**
   Connected the structured data to Tableau to provide a high-level marketing overview with deep-dive drill-down capabilities.

## February Performance Summary (vs January)
In February, marketing performance scaled significantly, though efficiency remained stable:

* Revenue: $42.9M (+48.5% MoM)
* Spend: $30.6M (+49.4% MoM)
* Profit: $12.3M (+46.3% MoM)
* ROAS: 1.4 (Stable)
* Avg. CAC: $466

Insight: Revenue growth was driven by increased budget. However, stable ROAS indicates that higher spending did not yet improve structural efficiency.


## Highest-Performing Channel
Influencer Marketing is the primary profit driver, led by the YouTube Blogger campaign:
* Revenue: $15.3M | Profit: $11.3M
* ROAS: 3.8
* CAC: $409 (Below average)
  


## Lowest-Performing Channels
Social Media — Structurally Inefficient
* Channel ROAS: 0.9 (Negative contribution to total profit)
* Underperformers: 
    * Facebook LAL: ROAS 0.1 | CAC $1,384
    * Instagram Tier 2: ROAS 0.6
    * Facebook Tier 2: ROAS 0.8

Note: Facebook Retargeting performs strongly (ROAS 2.6), suggesting the issue lies in targeting strategy, not the channel itself.


## Strategic Budget Recommendations

### Scale Up
Focus on campaigns with strong unit economics and high LTV/CAC ratios:
* YouTube Blogger (ROAS 3.8)
* Facebook Retargeting (ROAS 2.6)
* Google Hot & Instagram Tier 1 (ROAS 1.8)
Action: Increase budgets gradually (10–20%) while monitoring marginal ROAS.

### Reduce or Pause 
 Re-evaluate or pause low-efficiency campaigns:
* Facebook LAL (ROAS 0.1)
* Google Wide (ROAS 0.7)
Action: Shift from broad prospecting to narrower audience segments and refined bidding.


## Final Conclusion
1. Concentrated Profitability: Marketing is profitable, but success is concentrated in a small number of high-performing campaigns.
2. Efficiency Gap: Broad prospecting (Social & Search) is currently inefficient.
3. Opportunity: Strategic reallocation to Influencer scale, Retargeting, and High-intent Search can improve overall ROAS without increasing total spend.



   
