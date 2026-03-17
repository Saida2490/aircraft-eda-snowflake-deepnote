# ✈️ Aircraft Analytics – Data Analysis with Snowflake & Deepnote
📊 SQL • Snowflake • Deepnote • Data Analysis • Business Insights

## 🚀 Key Results

- Identified the most used aircraft type (**Goose – 1008 flights**)
- Highlighted strong passenger concentration in major airports
- Analyzed airline performance using **RPM metrics**
- Identified growth trends using **ASM indicators**

End-to-end data analysis project conducted as part of the Jedha Fullstack Data Analyst program.
The objective is to analyze airline activity using SQL in Snowflake and build clear, business-oriented visualizations in Deepnote.
---

## 🎯 Project Objectives

- Analyze aviation data using SQL  
- Extract business insights from airline operations  
- Answer key analytical questions about aircraft usage, airport traffic, and airline performance  
- Build clear visualizations to support decision-making  
- Publish a structured and professional project on GitHub  

---
## 💼 Business Value

This analysis helps:

- Airlines optimize fleet usage and operational efficiency  
- Identify high-traffic airports for strategic planning  
- Understand revenue performance trends  
- Support data-driven decision-making in airline operations  

---

## 🏗️ Technical Architecture

### Data Warehouse
- **Snowflake** → storage of raw and aggregated aviation data  

### Analysis
- **SQL** → data extraction and transformation  
- **Deepnote** → analysis and visualization  

### Environment
- **GitHub** → version control and project presentation  
- **VS Code** → development environment  

---

## 📊 Business Questions & Analysis


### ✈️ 1. Which aircraft is used the most?

| Number of Flights by Aircraft | 
| :---: | 
| ![Flights by aircraft](screenshots/Q1_aircraft.png) | 

### 🔍 Insight

- The **Goose aircraft dominates operations**, indicating standardized fleet usage for efficiency

### 💡 Interpretation

- Airlines rely on a limited number of aircraft types  
- Indicates strong operational optimization and cost efficiency  

---

### 🛫 2. Which airport transported the most passengers?

| Passenger Volume | 
| :---: | 
| ![Passengers](screenshots/Q2_airports.png) | 

### 🔍 Insight

- Passenger traffic is concentrated in a few major airports  

### 💡 Interpretation

- Strong **hub-and-spoke network model**  
- A small number of airports dominate total traffic  

---

### 📊 3. Best RPM Year per Airline

| Peak RPM Performance |
| :---: |
| ![RPM](screenshots/Q3_rpm_A.png) |

### 🔍 Insight

- Airline **GA** shows the highest overall performance  

---

| Domestic vs International RPM |
| :---: |
| ![RPM Comparison](screenshots/Q3_rpm_B.png) |

### 💡 Interpretation

- Domestic traffic dominates across all airlines  
- International traffic plays a secondary but strategic role  

---

### 📈 4. Best Growth Year (ASM) per Airline

| Peak Growth Year |
| :---: |
| ![Growth](screenshots/Q4_rpm_A.png) |

### 🔍 Insight

- **AA peaked in 2002**  
- **FA and GA peaked in 2016**

---

| Growth Trend Over Time |
| :---: |
| ![Trend](screenshots/Q4_rpm_B.png) |

### 💡 Interpretation

- Airlines follow different expansion strategies  
- GA shows the most consistent long-term growth  
- FA and GA experienced more recent expansion  

---

## 📊 Key Metrics

- **RPM (Revenue Passenger Miles)**  
- **ASM (Available Seat Miles)**  
- **Number of flights**  
- **Passenger estimates**  

---

## 📁 Repository Structure
- `/docs` → Project summary 
- `/sql` → SQL queries used for analysis  
- `/screenshots` → visualizations from Deepnote  
- `README.md` → project documentation
- `.gitignore` 

---

## 📈 Results

This project provides a clear overview of airline operations:

- Identification of most used aircraft  
- Detection of dominant airports  
- Analysis of airline performance (RPM)  
- Understanding of growth strategies (ASM)  

It demonstrates how structured SQL analysis can generate actionable business insights.

---

## ⚠️ Limitations

- Dataset is educational and simplified  
- Growth analysis is based only on **domestic ASM**  
- Passenger numbers are estimated based on aircraft capacity  
- Analysis remains descriptive (no predictive modeling)  

---

## 🚀 Future Improvements

- Add **Load Factor (RPM / ASM)**  
- Include **international ASM analysis**  
- Perform **time-series forecasting**  
- Integrate **geospatial analysis (GIS)**  
- Build a complete data pipeline (dbt / automation)  

---
## 🧠 Skills Demonstrated

- SQL data analysis (joins, aggregations, CTEs)  
- Data exploration and business interpretation  
- KPI analysis (RPM, ASM)  
- Data visualization and storytelling  
- Structuring a professional data project  

## 👩‍💻 Author

**Saida Hadhraoui**  
Data Analyst | Urban Planning & Geospatial Data  

