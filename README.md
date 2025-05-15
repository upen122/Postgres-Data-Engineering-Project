# Delivery Analytics Dashboard Project

---

## 🚀 Project Overview

This project demonstrates a complete end-to-end delivery analytics solution using:

- **PostgreSQL** for database storage and SQL querying
- **Power BI Desktop** for building interactive dashboards and visualizations

The project focuses on analyzing delivery performance metrics such as average delivery time, total deliveries by city and gender, revenue per restaurant, and delivery status breakdown. This enables data-driven decision-making for business stakeholders.

---

## 📋 Features

- Relational database with normalized tables: `deliveries`, `restaurant_dim`, and `customer_dim`
- Sample data simulating real-world delivery transactions and restaurant details
- SQL queries for aggregations and insights (average delivery time, deliveries by city/gender, revenue)
- Interactive Power BI dashboard with charts such as stacked bar, line, and pie charts
- Dynamic reporting connected directly to PostgreSQL data source

---

## 🛠️ Tech Stack

| Technology         | Purpose                          |
|--------------------|---------------------------------|
| PostgreSQL         | Data storage & SQL querying      |
| pgAdmin            | PostgreSQL GUI database management|
| Power BI Desktop   | Business Intelligence & reporting |

---

## 📂 Repository Structure

```plaintext
/
├── sql/                   # SQL scripts for schema, data, and queries
│   ├── create_tables.sql
│   ├── insert_data.sql
│   └── example_queries.sql
├── powerbi/               # Power BI report files
│   └── DeliveryDashboard.pbix
├── images/                # Screenshots and visuals for documentation
│   └── dashboard_preview.png
└── README.md              # Project documentation
