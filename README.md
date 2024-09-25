# O-List E-Commerce Analytics
# Project Overview

This project involves analyzing e-commerce data using SQL, Excel, Tableau and Power BI to derive insights and visualize key metrics. The main objectives will explore key performance indicators (KPIs) for Olist, an e-commerce platform. We will analyse various aspects of the business, including payment statistics, order delivery times, and customer reviews.
We Will Explore and identify trends, track sales performance, and provide a comprehensive overview of business operations.

# Introduction to Olist E-Commerce
![Olist image](https://github.com/user-attachments/assets/4234099b-a7ff-4234-943a-1ad4db79f3df)

Olist is a leading Brazilian e-commerce platform that connects thousands of small businesses with consumers nationwide. In this section, we'll dive into an in-depth analysis of the products sold on the Olist marketplace. We'll explore trends in product categories, pricing, customer reviews, and more to uncover insights that can help businesses optimize their product offerings and marketing strategies.

# The Goals of this Challenge
Validate and clean the data to improve accuracy and usability.
Analyze the data to address the problem statement and KPIs.
Offer recommendations to Olist company.

# Objective

![Objectives](https://github.com/user-attachments/assets/76a8108f-0947-4ebe-b07a-c06a149558a7)

# Tools and Technologies

**SQL:** For querying the database to extract and manipulate data.

**Excel:** For creating pivot charts and analyzing data from SQL queries.

**Power BI:** For building interactive dashboards to visualize the data.

**Tableau:** For building dashboard and data driven decisions.

**Mathematical Statistics:** For Predictive analytics which is used to analyze historical data and predict future outcomes. This helps businesses forecast trends and identify risks and opportunities. 

# Dataset and Data Modelling
The Olist dataset comprises nine separate datasets, all of which are stored in CSV format:

- olist_order_items_dataset
- olist_orders_dataset
- olist_order_payments_dataset
- olist_order_reviews_dataset
- olist_products_dataset
- olist_customers_dataset
- olist_sellers_dataset
- olist_geolocation_dataset
- olist_category_dataset

![daatabase schema](https://github.com/user-attachments/assets/9d70f998-4165-4c03-9eae-2ca5320e49dd)



# Data Exploration and Cleaning
As I examined the 9 worksheets, I discovered they contained issues such as
inconsistencies, missing values, duplicates, Null Values, Empty Colums, Spelling Mistakes and other issues that could potentially impact the analysis and Difficult to form a relationship between the tables.

The cleaning process involved handling missing values by imputing or removing them, standardizing formats, correcting inconsistencies, removing duplicates, and addressing any other data quality issues. As a result, the cleaned table provides a solid foundation for conducting meaningful analysis and extracting valuable insights from the dataset.

a. **Null and empty columns:** To clean them, I replaced them with the correct data using excel **“Find and replace”** functions.

b. **Irrelevant columns:** I validated them completely after taking all the necessary precautions.

c. **Duplicates:** Erased every duplicate the help of the excel **“Filter”** function.

d. **Data types:** They were converted using the **“Format cells”** menu in excel.

e. **Missing values:** I used the mean and mode to fill all the necessary columns.

f. **Spelling Errors:** I replace them with correct data using **"Find and Replace"** function in excel.

# SQL Queries, Insights and Solutions

KPI-1 Weekend vs. Weekday Payment Statistics:

Discover how Olist Store's performance varies between weekends and weekdays. Uncover trends, spot patterns, and identify opportunities for growth by analyzing sales, customer engagement, and website traffic during different days of the week.

![Kpi-1 ](https://github.com/user-attachments/assets/43ded4b9-3584-493f-b14d-5123d35fdcd3)


KPI-2 Review Score and Payment Type Analysis:

Delve into the correlation 
between review scores and payment types. Gain insights into customer satisfaction levels based on the payment methods they choose. Identify any possible trends or preferences that could impact payment strategy or customer service.

![KPI-2](https://github.com/user-attachments/assets/a7667669-86b0-402a-8e36-2ff522911b6c)

 
KPI-3 Products and Shipping Days Analysis:

Explore the relationship between products and shipping days. Understand how different product categories impact delivery times and customer satisfaction. Identify any discrepancies or bottlenecks in the supply chain and streamline operations accordingly

![KPI-3](https://github.com/user-attachments/assets/1f8e565c-b23c-451d-9a0d-66ef0092267c)

KPI-4  Payment and Price Analysis:

Examine the connection between payment behavior and pricing. Analyze the effect of pricing strategies on payment methods chosen by customers. Uncover opportunities to optimize pricing structures and tailor payment options for enhanced customer satisfaction.

![KPI-4](https://github.com/user-attachments/assets/14272fed-649a-44dd-983a-45c0b9b73651)

KPI-5 Review Score and Shipping Days Relationship:

Discover the correlation between review scores and shipping times. Understand the impact of timely deliveries on customer satisfaction levels and online reviews. Identify areas where improvements can be made to ensure faster shipping without compromising quality.

![KPI-5](https://github.com/user-attachments/assets/c0419c9f-1b72-41f5-92f2-734ea027ae2f)

# PowerBI Dashboard

![powerbi dashboard](https://github.com/user-attachments/assets/169572f7-6c34-4998-abb3-91ead3425152)

# Excel Dashboard

![ms excel dashboard](https://github.com/user-attachments/assets/e563a1fe-ec3d-4445-be79-e0706883c9d5)

# Tableau Dashboard

![tableau dashboard](https://github.com/user-attachments/assets/f2850cef-8c40-4e53-a039-4cd4fde1961e)

# Key Insights
1.Order Behavior:
Weekdays vs. Weekends: Analysis reveals that weekdays see higher order volumes, with a peak on Monday and a gradual decline towards midweek. This trend indicates that customers are more active during weekdays, suggesting an opportunity for targeted promotions.

2.Payment Preferences:
Dominance of Credit Cards: Credit cards are the preferred payment method, especially for 5-star reviews, followed by boleto. This highlights the importance of secure and convenient payment options in driving customer satisfaction.

3.Delivery Times:
Category Variations: Office furniture has the longest delivery time, while arts and craftsmanship have the shortest. On average, deliveries take 12 days, with pet shop products averaging 11 days. Streamlining delivery processes for categories with longer times could enhance overall efficiency.

4.Geographical Insights:
City-wise Trends: Sao Paulo and Rio de Janeiro record the highest order counts. In Sao Paulo, the average payment surpasses the average price, likely due to high order density. Tailored marketing strategies for these regions could further boost sales.

5.Shipping Duration and Reviews:
Negative Correlation: A clear negative correlation exists between shipping duration and review scores. Faster shipping times are associated with higher review scores, emphasizing the need for efficient logistics.

# Strategic Recommendations

1.Targeted Weekday Promotions:
Capitalize on higher weekday order volumes by launching specific promotions and offers to boost sales during these peak periods.

2.Enhance Payment Security:
Prioritize measures to further secure credit card transactions, maintaining customer trust and encouraging repeat business.

3.Streamline Delivery Processes:
Optimize logistics operations by improving route planning and inventory management, particularly for categories with longer delivery times.

4.Localized Marketing Strategies:
Develop region-specific marketing campaigns for high-order cities like Sao Paulo and Rio de Janeiro, leveraging local insights to connect with customers more effectively.

5.Improve Shipping Efficiency:
Address bottlenecks in the shipping process by enhancing warehouse workflows and forming strategic carrier partnerships to reduce delivery times.

6.Diversify Payment Options:
Expand payment options to include alternatives like debit cards and promote the use of boleto, catering to diverse customer preferences and expanding market reach.

# Conclusion

Olist's exploratory data analysis provides valuable insights into customer behavior, payment preferences, and operational efficiencies. By leveraging these findings, Olist can implement targeted strategies to enhance customer satisfaction, streamline operations, and drive growth. As e-commerce continues to evolve, data-driven decision-making will remain a cornerstone of success in the competitive digital marketplace.


