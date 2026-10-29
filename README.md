

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


- 🏥 **Low Appointment Completion:** Out of **200 appointments**, only **46 (23%)** were completed, while **52 (26%)** were no-shows and **51 (25.5%)** were cancelled — resulting in **51.5% of appointments being lost** to no-shows or cancellations.

  
- 👨‍⚕️ **Top Doctor:** **Sarah Taylor** handled the highest number of appointments with **29**, making her the top doctor by appointment volume.

  
- 🩺 **Specialization Demand:** **Pediatrics (47 patients)** had the highest patient volume, followed by **Dermatology (37)** and **Oncology (22)**.

  
- 💊 **Treatment Volume:** **Chemotherapy (~32 patients)** and **ECG (~31 patients)** were the most frequently administered treatments.

  
- 💰 **Major Revenue Contributors:** **Chemotherapy ($128.85K)** generated the highest treatment value, followed by **MRI ($116.10K)** and **X-Ray ($110.65K)**. Together, they contributed approximately **64.5% of the total $551.25K**.

  
- 🧲 **Highest Average Treatment Cost:** **MRI** had the highest average treatment cost at approximately **$3.2K**, despite having lower treatment volume (~22 patients).

  
- 💳 **Payment Risk:** **Failed payments (~$192K)** were higher than pending (~$185K) and paid (~$173K), highlighting a significant payment collection issue.

  
- 📅 **Monthly Demand Fluctuation:** Appointments peaked at **25 in April** and fell to approximately **11 in September**, showing substantial variation in monthly demand.

  
- 🛡️ **Insurance Distribution:** **MedCare Plus (18 patients)** and **WellnessCorp (16 patients)** were the largest insurance providers, together accounting for **68% of the 50 patients shown**.

  
- 🎯 **Overall Business Insight:** The biggest opportunity is to **reduce the 26% no-show and 25.5% cancellation rates**, while improving payment collection and optimizing high-value treatments such as **Chemotherapy and MRI**.
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
