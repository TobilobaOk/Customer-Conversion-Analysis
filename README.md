# E-commerce Funnel Analysis (SQL + Excel)

# 1. Project Overview

This project analyzes the customer journey in an e-commerce environment, tracking user progression from session start to purchase. The goal is to identify drop-off points and provide actionable insights to improve conversion rates and business performance.

# 2. Business Objective
•Analyze user behavior across the sales funnel<br>
•Identify key drop-off stages<br>
•Evaluate performance by country and device type<br>
•Provide recommendations to improve conversion and revenue<br>

# 3.Tools & Technologies
•SQL – Data cleaning, transformation, and analysis<br>
•Excel – Data modeling, drop-off calculations, and funnel visualization<br>

# 4.Data Cleaning & Preparation (SQL)

Key data processing steps:<br>

Filtered relevant funnel stages:<br>
•session_start, view_item, add_to_cart, begin_checkout, add_payment_info, purchase<br>
•Removed duplicate user events using ROW_NUMBER()<br>
•Counted unique users per funnel stage<br>
Segmented data by:<br>
  •Device Category (Desktop, Mobile, Tablet)<br>
  •Top Countries (United States, India, Canada)<br>

# 5. Funnel Performance Summary
•Total Sessions: 1208<br>
•Purchases: 4<br>
•Conversion Rate: 0.33%<br>

 **Significant drop-offs occur at:**<br>
•Session → Product View<br>
•Checkout → Purchase<br>

# 6 Key Insights
**🔹 User Engagement Issues**<br>
Only 26% of users proceed to view products<br>
 Indicates weak landing page engagement<br>

 **🔹 Low Purchase Intent**<br>
Only 6% add items to cart<br>
 Suggests issues with pricing, product appeal, or trust<br>

 **🔹 Checkout Drop-Off (Critical)**<br>
Very few users complete purchases after initiating checkout<br>
 Indicates friction in payment or checkout process<br>

# 7.Country Insights
**•United States:** Highest traffic but low conversion<br>
**•India:** Engagement present but no purchases recorded<br>
**•Canada:** Low traffic but relatively better conversion<br>

# 8.Device Insights
**•Desktop:** Highest conversions<br>
**•Mobile:** Good engagement, poor conversion<br>
**•Tablet:** Highest drop-off rates<br>

# 9.Recommendations
•Improve landing page experience to increase engagement<br>
•Optimize product pages (reviews, pricing clarity)<br>
•Simplify checkout process (reduce steps, enable guest checkout)<br>
•Improve mobile responsiveness and payment experience<br>
•Introduce trust signals and multiple payment options<br>

# 10.Visualization

A funnel chart was created in Excel to visualize user drop-offs across each stage.


<img width="415" height="187" alt="image" src="https://github.com/user-attachments/assets/516d3c1a-d6b1-4e65-af1d-e197ccc71a11" />

<img width="416" height="103" alt="image" src="https://github.com/user-attachments/assets/2548475d-37f5-4d4a-a208-00b70c9b8c31" />

<img width="415" height="112" alt="image" src="https://github.com/user-attachments/assets/42a0f5c4-d263-46d2-8b1c-f780107cf3a0" />


# 11.Conclusion

Despite strong user traffic, the business experiences significant conversion loss across the funnel, particularly at the engagement and checkout stages. Addressing these issues can lead to substantial improvements in conversion rates and revenue.

# 12.Author

Oluwatobi. <br>
Data Analyst | SQL | Excel | Power BI.



















