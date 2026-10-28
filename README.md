

# 🏥 Hospital Management Data Analytics

A **Hospital Management Data Analytics project** built using **MySQL and Power BI** to analyze appointments, doctors, patients, treatments, and billing data and convert the analysis into an interactive dashboard.

## 📌 Project Overview

The project follows an end-to-end analytics workflow:

**Raw Data → Data Cleaning → SQL Analysis → SQL Views → Power BI Data Model → Interactive Dashboard → Insights**

The main objective was to understand hospital operations, identify important patterns, and present them through an easy-to-use Power BI dashboard.

## 🛠️ Tools & Technologies

- 🗄️ **MySQL** — Data cleaning, transformation and analysis
- 📊 **Power BI** — Data modeling, visualization and dashboard development
- 🔗 **SQL Views** — Prepared analytical results for Power BI

## 🔍 SQL Analysis

Performed analysis such as:

- 📅 Total appointments and appointment-status distribution
- 👨‍⚕️ Doctor-wise appointment volumes
- 🩺 Specialization-wise appointment demand
- 👥 Patients with the highest number of appointments
- 💰 Total, average, minimum and maximum treatment costs
- 💳 Billing amount by payment status
- 📈 Appointment completion, cancellation and no-show percentages
- 📆 Monthly appointment trends
- 🚨 Doctor-wise cancellation/no-show rates
- 🏆 Ranking doctors within each specialization using SQL `RANK()`
- 💵 Treatment-wise total and average costs

The data was also prepared by converting relevant text fields into appropriate **DATE, TIME and numeric data types** before analysis.

## 📊 Power BI Dashboard

The SQL analysis was transformed into an interactive Power BI dashboard containing:

- 📌 KPI cards
- 📊 Appointment and treatment visualizations
- 👨‍⚕️ Doctor and specialization analysis
- 💰 Billing and cost analysis
- 🎛️ Interactive filters and slicers
- 🔄 Cross-filtering and cross-highlighting between visuals
- 📄 Multiple dashboard pages

## 💡 Key Insights

- 👨‍⚕️ **Doctor Demand:** Identify which doctors handle the highest number of appointments and understand workload distribution.
- 🩺 **Specialization Trends:** Discover which medical specializations have the greatest patient demand.
- 📅 **Appointment Patterns:** Track monthly appointment trends and identify periods of higher hospital activity.
- 🚦 **Appointment Status:** Compare completed, scheduled, cancelled and no-show appointments to understand appointment efficiency.
- ⚠️ **No-Show & Cancellation Watch:** Identify doctors or areas with relatively higher cancellation/no-show rates that may require attention.
- 👥 **Patient Activity:** Find patients with frequent appointments and understand recurring hospital usage.
- 💰 **Treatment Cost:** Compare treatment types based on total and average costs to identify major cost contributors.
- 💳 **Billing Overview:** Analyze billing amounts and payment statuses to understand the hospital's financial activity.
- 🏆 **Doctor Ranking:** Rank doctors within their specializations to compare appointment performance using SQL window functions.

## 🧠 What I Learned

This project helped me understand more than just writing SQL queries:

- 🔗 How to build a proper **data model and relationships between tables**
- 🔄 How table relationships affect **cross-filtering and cross-highlighting** across Power BI visuals
- 📊 How to select appropriate visualizations for different analytical questions
- 🧩 How to convert SQL analysis into a Power BI-ready structure using views
- 🧠 How different tables work together to create meaningful insights
- ♿ Added **Alt Text to every dashboard page and chart** to improve accessibility
- 💡 Improved my ability to move from **raw data → analysis → visualization → business insights**

## 🎥 Dashboard Demonstration

A video demonstration of the interactive Power BI dashboard is included in the repository.

## 📸 Dashboard Screenshots

Screenshots are included to provide a quick preview of the final dashboard and its visualizations.

---

### 🚀 Project Outcome

This project gave me practical experience in building an **end-to-end data analytics solution**, combining SQL analysis, data modeling, Power BI visualization, interactive reporting, and accessibility considerations.
