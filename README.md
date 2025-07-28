# Restaurant SQL Basic Data Analysis

## 1. Project Background
This project focuses on basic data exploration using PostgreSQL to analyze customer behavior and menu performance from restaurant order data. The objective is to gain insights from restaurant transactional data by exploring ordering trends and menu profitability. This analysis helps in understanding customer preferences and optimizing menu offerings for better business outcomes.

## 2. Data Structure
The analysis utilizes a dataset provided by Maven Analytics, consisting of two main tables:

*   **`menu_items`**: Contains details about menu items, including `item_names`, `categories` (e.g., Italian, Asian), and `prices`.
*   **`order_details`**: Contains information about customer orders, including `order_IDs`, `order_time`, and `items_ordered`.

This structure allows for joining menu information with order details to analyze sales, popularity, and profitability of different dishes.

## 3. Executive Summary
This project explores restaurant transactional data to uncover insights into customer ordering trends and menu profitability. By analyzing menu items and order details, the project aims to provide a foundational understanding of which dishes are most popular, which are most profitable, and how customer spending habits relate to menu categories. The findings highlight key aspects of menu performance and customer behavior, offering actionable intelligence for restaurant management.

![SQL Preview](SQL-Restaurant-Data-Exploration/Preview-Restaurant.png)

## 4. Insights

Based on the data exploration, several key findings and insights emerged:

*   **Italian dishes are the priciest on the menu.** This indicates a higher revenue potential per order for these items.
*   **Hamburgers (American) and Edamame (Asian) are the most ordered items.** These dishes represent high-volume sellers, suggesting strong customer demand.
*   **Among the top 5 highest-spending orders, most items were Italian dishes.** This finding is crucial as it links higher-priced items with high-value customers.

**Insight:** Despite being more expensive, Italian food consistently attracts high-spending customers. This suggests that customers are willing to pay a premium for Italian dishes, making them a significant contributor to overall revenue, especially from high-value orders.

## 5. Recommendations

Based on the insights, the following recommendation is provided:

*   **Keep Italian dishes on the menu.** They are not just profitable due to their higher pricing, but they are also a top choice for high-value customers who generate significant revenue. Maintaining and potentially promoting these dishes can further enhance profitability and cater to a valuable customer segment.

