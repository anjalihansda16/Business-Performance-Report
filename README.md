
## Table of Contents
- [Background](#background)
- [Business Questions](#business-questions)
- [Executive Summary](#executive-summary)
- [Detailed Insights](#detailed-insights)
   - [Monthly Sales Revenue for the Year](#monthly-sales-revenue-for-the-year)
   - [Top and Bottom Countries by Sales Revenue Performance](#top-and-bottom-countries-by-sales-revenue-performance)
   - [Global Average Sales Performance](#global-average-sales-performance)
   - [Average Order Value of Countries](#average-order-value-of-countries)
   - [Purchase Behaviour of Top 3 Countries by Sales Revenue](#purchase-behaviour-of-top-3-countries-by-sales-revenue)
   - [Sales Revenue Pareto of Countries](#sales-revenue-pareto-of-countries)
   - [Best and Worst Performing Products](#best-and-worst-performing-products)
   - [Customer Purchase Frequency](#customer-purchase-frequency)
   - [Customer Purchase Latency](#customer-purchase-latency)
   - [Understanding the Customer Base](#understanding-the-customer-base)
   - [Product Performance by Revenue vs Purchase Volume](#product-performance-by-revenue-vs-purchase-volume)
   - [List of Top 10 Customers](#list-of-top-10-customers)
- [Recommendations](#recommendations) 
   
## Background
An online retail store has hired you as a consultant to review the data provided by the client and find out insights valuable to the CEO and CMO. The business is performing well and the management wants to analyse what the major contributing factors are to the revenue so they can strategically plan for next year's expansion. They would also like to view different metrics based on the demographic information that is available in the data.

## Business Questions
1. Identify the countries with the highest customer engagement and transaction volumes in our online retail platform.
2. Highlight the top-performing countries in terms of sales revenue outside our primary market, the UK.
3. Analyze the differences in customer purchasing trends among our top three revenue-generating countries.
4. Determine the key markets that account for the majority of our revenue to guide resource allocation.
5. Identify our best and worst-performing products globally, to optimize inventory and focus on profitability.
6. What are the distribution and trends of purchase frequency among our customers?
7. Based on the purchase history, when is the optimal time to re-engage customers to encourage repeat purchases?
8. What insights can we gain from customer purchase patterns to classify them into actionable segments for retention and growth?
9. Which products are selling well but generating lower sales revenue, and which are selling less but generating higher sales revenue?
10. Who are our top 10 customer with highest sales revenue?

## Executive Summary

## Detailed Insights
### Monthly Sales Revenue for the Year
![Monthly Sales Revenue](https://github.com/anjalihansda16/Business-Performance-Report/blob/master/viz/Monthly_Sales_Revenue.png)
#### 1. Revenue Peaks and Lows
##### **Peak Revenue Month:** October (196,972)
  - October marks the highest revenue, indicating strong customer engagement or possible seasonality factors such as promotions or holidays.
##### **Lowest Revenue Month:** December (45,134)
  - A steep drop occurs in December, which is unusual since December often sees high sales due to holiday shopping. This may warrant an investigation into supply chain disruptions, inventory issues, or reduced marketing efforts.
#### 2. Monthly Revenue Fluctuations
##### **Steady Decline in Early Q1:**
  - Revenue decreases from January (128,583) to February (91,793) and then to April (52,274). This may indicate slower post-holiday shopping trends or weaker demand in the early months.
##### **Mid-Year Recovery (May to August):**
  - A consistent increase in revenue is seen from May (125,813) to August (148,874). This could correspond to back-to-school shopping or seasonal demand.
##### **Sharp Growth in Q4:**
  - Revenue peaks in October (196,972), likely driven by major events like Halloween sales or early holiday promotions. November also retains high sales at 179,017 before the sharp decline in December.
#### 3. Seasonal and Trend Analysis
##### **Seasonality Effects:**
- Low in early spring (March-April).
- Gradual growth during summer.
- Peak in autumn (October).
- Uncharacteristic drop in December.
##### **Possible Campaign Impacts:**
- Revenue spikes could be attributed to well-timed promotional campaigns, whereas the dips might point to gaps in marketing or inventory planning.
#### 4. Anomalies
The steep decline from November (179,017) to December (45,134) is a major anomaly. Given that December is typically a high-revenue month, this requires further analysis:
1. Was there a lack of inventory or shipping constraints?
2. Did customers shift to competitors during the holiday season?
3. Were there external factors (e.g., economic slowdown, weather disruptions)?

### Top and Bottom Countries by Sales Revenue Performance
![Top and Bottom Performing Countries](https://github.com/anjalihansda16/Business-Performance-Report/blob/master/viz/Top_and_Bottom_Countries.png)
The top five markets are —Netherlands, EIRE, Germany, France, and Australia—collectively driving a significant portion of our sales revenue.
- Netherlands leads in both revenue and quantity, indicating high sales performance overall.
- EIRE generates the second-highest revenue, along with slight dip in the quantity sold. 
- Germany and France follow afterward, with similar quantities sold. However, Germany outperforms France in revenue, as reflected by its higher median order value and the upper range of order revenue, indicating stronger sales performance compared to France.
- Australia has the lowest revenue and quantity among the top 5.

At the other end of the spectrum, we see countries such as Saudi Arabia, USA, and Bahrain, where sales revenue is considerably lower with only a few hundreds of dollars.

- Brazil, followed by South Africa (RSA), leads in revenue among the bottom five markets, despite lower quantities sold. This is due to their higher average order value (AOV), which contributes to stronger sales revenue compared to the other countries in this group.
- The Czech Republic and Bahrain exhibit similar revenue patterns, although the quantity sold in the Czech Republic is nearly double that of Bahrain. This difference is attributed to Bahrain’s higher average order value (AOV), which compensates for the lower sales volume.
- Saudi Arabia performs the lowest in both revenue and quantity.
  
### Global Average Sales Performance
![Average Sales](https://github.com/anjalihansda16/Business-Performance-Report/blob/master/viz/Average_Sales_Revenue_of_Countries.png)

### Average Order Value of Countries
![AOV](https://github.com/anjalihansda16/Business-Performance-Report/blob/master/viz/AOV_of_Countries.png)
- The average AOV varies significantly across countries, with most values concentrated between $16 and $50, as indicated by the interquartile range. This range highlights a standard pattern of customer spending across the majority of countries.
- Japan, Netherlands, Australia, and Sweden stand out with notably high AOVs, appearing as outliers. Among these, Japan has the highest AOV, showcasing its dominance in premium purchasing behavior. Additionally, Netherlands and Australia, both of which rank in the top 5 countries by sales revenue, align their high revenue with elevated AOVs. Sweden and Japan, while not in the top 5, still maintain a strong position, ranking 9th and 10th in sales revenue, respectively.
- Germany and France, ranked 3rd and 4th in the top 5 countries by sales revenue, display a different trend. Their AOV falls on the lower end of the range, at $25, indicating a focus on high-volume transactions rather than premium, high-value purchases.
  
### Purchase Behaviour of Top 3 Countries by Sales Revenue
![Top_3_Countries](https://github.com/anjalihansda16/Business-Performance-Report/blob/master/viz/Top_3_Countries_Performance.png)
#### 1. Performance by Country:
##### **EIRE:**
- Revenue peaks in July (~40K) and September (~35K), with noticeable troughs in March (~10K) and November (~10K).
- Order Count follows a similar pattern, with peaks in September (~1,000 orders) and November (~950 orders), indicating high customer activity.
- Quantity Sold also spikes in July (~27K) and September (~25K), suggesting these months are critical for maximizing sales.
##### **Germany:**
- Revenue peaks in July (~30K) and September (~30K) but does not dip as sharply during the off-season compared to EIRE.
- Order Count remains consistently higher than EIRE, peaking in September (~1,050 orders).
- Quantity Sold shows a steady upward trend until July (~23K), with a slight dip afterward, followed by another peak in September (~22K).
##### **Netherlands:**
- Performance is relatively flat for Order Count whereas Revenue and Quantity Sold metrics exceeds both the other nations, except for the lowest performance in April. This reflects that the AOV is higher for the Netherlands compared to the other two leading nations.
#### 2. Seasonality:
- Mid-Year Peak: All countries see a sharp rise in sales metrics around July, driven by higher Quantities Sold.
- Late-Year Peak: Another spike occurs in September for EIRE, October for Netherlands and Germany, indicating potential seasonal campaigns or higher consumer demand during these months.
- Year-End Drop: December shows a decline across all metrics, suggesting reduced market activity during this period.
#### 3. Country Rankings:
- EIRE dominates Revenue, consistently outperforming Germany and the Netherlands in most months.
- Germany leads in Order Count, indicating a high number of smaller transactions compared to EIRE.
- Netherlands takes the lead for the Quantity Sold and competes head on with EIRE in Revenue. 

### Sales Revenue Pareto of Countries
![Sales Revenue Pareto of Countries](https://github.com/anjalihansda16/Business-Performance-Report/blob/master/viz/Sales_Revenue_Pareto_for_Countries.png)
- The top 8 countries, Netherlands, EIRE, Germany, France, Australia, Spain, Switzerland, and Belgium account for 80% of total sales, while the remaining countries collectively contribute just 20%.

### Best and Worst Performing Products
![Best and Worst Performing Products](https://github.com/anjalihansda16/Business-Performance-Report/blob/master/viz/Top_and_Bottom_Products.png)

### Customer Purchase Frequency
![Customer Purchase Frequency](https://github.com/anjalihansda16/Business-Performance-Report/blob/master/viz/Purchase_Frequency.png)

Each bin represents the frequency of distinct customers based on their total purchases, grouped in intervals of 5.
- The first bin has a huge count of 3,224 customers, indicating that the majority of customers made between 1 and 5 purchases.
- The second bin (6–10 purchases) has 713 customers, which is a significant drop-off from the first bin.
- Beyond the 10th bin (50+ purchases), the counts become negligible, with very few customers making extremely high numbers of purchases.

### Customer Purchase Latency 
![Customer Purchase Latency](https://github.com/anjalihansda16/Business-Performance-Report/blob/master/viz/Purchase_Latency.png)
#### 1. Months with the Highest Same-Month Repeat Purchases
- **April:** Stands out with 13.28% repeat purchases in the same month, the highest among all months.
- **June:** Has a notable 9.09% repeat purchase in the same month, reflecting strong initial engagement.
- **May:** Follows closely with 8.75% of customers repeating in the same month.
#### 2. Months with Overall Good Repeat Percentage (High Frequency and High %)
- **April:** Performs exceptionally well with high percentages across all months, peaking at 41.37% in the third month. It has consistent repeat purchases through months 1 (35.67%), 2 (36.24%), 4 (30.74%), and 5 (31.31%).
- **February:** Shows a strong early repeat purchase rate with 24.81% in the first month and good consistency over subsequent months, with 20.93% by the fourth month.
- **May:** Despite a slow start, the third month sees a strong recovery at 25.84%, maintaining consistency through months 4 to 6 (22.50% by month 6).
#### 3. Months with Least Repeat Purchase of Customers
- **March:** Has the lowest same-month repeat rate at 4.76%, and overall repeat activity is weaker, peaking at only 18.61% in the fourth month.
- **June:** Faces a significant drop to 0.96% in the second month before recovering, indicating a delay in repeat purchase behavior.
- **January:** Although it starts with a decent same-month repeat rate (7.37%), it does not sustain strong repeat percentages across months, tapering off to 12.11% by the sixth month.

### Understanding the Customer Base
![RFM Segments](viz/RFM_Customer_Segments.png) 
![RFM Segment Details](viz/RFM_Segment_Details.png)
![Sales over Time](viz/Sales_over_Time_for_RFM_Customer_Segments.png)

#### Best Customers:
The most valuable customers who purchase frequently, have made recent purchases, and spend significantly more compared to others.
- Highest revenue among all segments, with a significant spike in November and another high in September.
- March, May, and August show noticeable dips.
#### Loyal Customers:
Customers who purchase regularly and are likely to maintain their loyalty to the business.
- Moderate revenue contribution, with a clear peak in November and a slight dip in March and August.
- Consistent throughout the year but shows no extreme variability like Best Customers.
#### Big Spenders:
Customers who spend a lot of money but may not purchase as frequently or recently as the best customers.
- Consistent revenue generation throughout the year.
#### Look Out Buyers:
These customers have moderate purchasing activity, but they are at risk of becoming inactive due to declining recency or frequency.
- Minimal contribution, with slight activity during October and November and exhibits irregular purchasing behavior.
- Flat and declining trends in other months while no purchase after October.
#### Lost Customer:
Lost Cheap Customers: These are inactive customers who spent little and purchased infrequently when they were active.

Lost Best Customers: These were once among the best customers but have stopped purchasing recently.
- A distinct segment of customers has completely stopped purchasing, particularly during the last two months of the year (October, November, and December).
#### Potential to Become Loyal Customers:
These customers have shown recent interest in purchasing and could become loyal if nurtured.
- Slow revenue growth from October, with a significant rise in November and a peak in December.
- Minimal contributions before October.
#### Occasional Buyers: 
Customers who purchase sporadically, with average spending and relatively low purchase frequency.
- Very minimal contribution, with no noticeable peaks or trends throughout the year.

### Product Performance by Revenue vs Purchase Volume 
![Product Performance](https://github.com/anjalihansda16/Business-Performance-Report/blob/master/viz/Sales_Revenue_vs_Quantity_Purchased_of_Products.png)
###### For interactive report [visit Tableau account](https://public.tableau.com/app/profile/anjali.hansda/vizzes)
- Products such as 22423, 47566 and, 85123A are high-revenue drivers despite lower purchase volumes, suggesting they cater to niche or premium segments.
- Product 23843 and 23166 stands out as a high-volume, high-revenue item, indicating strong mass-market appeal.
- Product 84077 have high-volume albeit being a low-revenue product, i.e. a frequently purchased low-cost item. Its consistent demand could make it essential for driving overall transaction volumes, even if its individual contribution to revenue is limited.

### List of top 10 Customers
![Top 10](https://github.com/anjalihansda16/Business-Performance-Report/blob/master/viz/Top_10_Customers.png)

## Recommendations
