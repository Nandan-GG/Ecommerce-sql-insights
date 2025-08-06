# 🛒 E-Commerce Insights with SQL  
### 📊 Real-World Data Analytics Project

This project is a deep-dive into SQL-driven analytics for an e-commerce business. Covering 3 core business areas— Sales, Customers, and Products — the goal is to deliver actionable insights using real SQL queries on realistic data.

---

## 🧱 Schema Overview

**Tables Used**:  
- `customers`  
- `orders`  
- `order_items`  
- `products`

**Relationships**:  
- `orders.customer_id` → `customers.customer_id`  
- `order_items.order_id` → `orders.order_id`  
- `order_items.product_id` → `products.product_id`

---

## 🔍 Module Breakdown

### ✅ Module 1: Sales & Revenue Analytics
- Total revenue generated
- Monthly revenue trends
- Average order value
- Top 5 customers by spend
- Order count per customer
- Product-wise revenue

### ✅ Module 2: Customer Behavior Insights
- Returning vs new customers
- Active customers monthly
- Churned customers
- Last order date per customer

### ✅ Module 3: Product & Inventory Insights
- Best-selling categories
- Unsold products
- Product ranking by quantity sold (window functions)

---

## 💡 Key Learnings
- Hands-on experience with `JOINs`, `GROUP BY`, `WINDOW FUNCTIONS`
- Used `RANK()`, `DENSE_RANK()`, `CASE`, `DATE_FORMAT()` and subqueries
- Solved real-world analytics problems using SQL alone

---

## 📂 Files Included

| File                          | Description                            |
|-------------------------------|----------------------------------------|
| `ecommerce_schema.sql`        | CREATE TABLE + INSERT statements       |
| `module1_sales_queries.sql`   | Queries for Module 1                   |
| `module2_customer_queries.sql`| Queries for Module 2                   |
| `module3_product_queries.sql` | Queries for Module 3                   |

---

## 🚀 How to Use

1. Import `ecommerce_schema.sql` into any MySQL database.
2. Run the `.sql` files from each module to get analytical insights.
3. Customize/extend queries based on your use case.

---

## 📌 Tools Used

- MySQL 8+ (in sqlize.online)
- Sqlize.online(for testing)
- GitHub (for version control and sharing)

---

## 🧠 Ideal For

- Aspiring SQL/Data Analysts
- Interview Practice
- Data Analytics Portfolio Projects

---

## 🔗 Connect with Me

- **LinkedIn**: [Nandan Bhagath Roja Kumar Gudapati](https://www.linkedin.com/in/nandan-bhagath-roja-kumar-gudapati-9b7658193)



---

## ⭐ Give it a star if you find it useful!

