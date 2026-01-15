<div align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=00BFFF&height=250&section=header&text=Sales%20Performance%20&fontSize=70&fontColor=ffffff&animation=fadeIn&fontAlignY=35" width="100%" alt="Project Header" />

  <br />

  <img src="https://img.shields.io/badge/Status-Completed-success?style=for-the-badge" alt="Status" />
  <img src="https://img.shields.io/badge/SQL-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL" />
  <img src="https://img.shields.io/badge/Python-3.8+-3776AB?style=for-the-badge&logo=python&logoColor=white" alt="Python" />
  <img src="https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau&logoColor=white" alt="Tableau" />

  <h1 align="center">📊 Sales Performance & Territory Optimization</h1>
  <p align="center"><strong>End-to-End Data Analytics Project</strong></p>

  <p align="center">
    <a href="#-project-overview">Overview</a> •
    <a href="#-dataset">Dataset</a> •
    <a href="#-business-objectives">Objectives</a> •
    <a href="#-key-insights">Insights</a> •
    <a href="#-dashboard-overview-tableau">Dashboard</a> •
    <a href="#-repository-structure">Structure</a>
  </p>
</div>

---

## 📌 Project Overview

This project analyzes **e-commerce sales performance** to identify revenue concentration risks, territory inefficiencies, and seller dependency patterns. Using cleaned transactional data, the analysis focuses on **where revenue comes from**, **who drives it**, and **where scalable growth opportunities exist**.

### 🔄 Production-Style Analytics Workflow

<table align="center" width="100%">
  <tr style="background-color: #f8f9fa;">
    <th align="center" width="20%">Stage</th>
    <th align="center" width="20%">Tool</th>
    <th align="left">Purpose</th>
  </tr>
  <tr>
    <td align="center">🗄️</td>
    <td align="center"><strong>SQL</strong></td>
    <td>Data modeling and core analysis</td>
  </tr>
  <tr>
    <td align="center">🐍</td>
    <td align="center"><strong>Python</strong></td>
    <td>Validation and analytical reasoning</td>
  </tr>
  <tr>
    <td align="center">📊</td>
    <td align="center"><strong>Tableau</strong></td>
    <td>Executive-level visualization</td>
  </tr>
</table>

---

## 🗂️ Dataset

<div align="center">

| Source | Scope | Type |
| :--- | :--- | :--- |
| **Olist Brazilian E-commerce Public Dataset** | ~99K orders, ~112K items, 1M+ geolocation records | Historical transactional sales data |

</div>

---

## 🎯 Business Objectives

- [x] Measure overall sales performance using core KPIs
- [x] Identify customer-side and seller-side territory concentration
- [x] Detect seller dependency and underperformance patterns
- [x] Highlight regions with scalable growth potential

---

## 🏗️ Data Modeling Approach

### ETL Strategy
Implemented a **staging → clean table** pattern to handle data integrity:

> [!TIP]
> **Data Integrity Steps:**
> - 📥 Handling missing numeric values
> - 📥 Correcting empty timestamps
> - 📥 Resolving precision issues in geographic data

Built a unified `sales_fact` table at **order-item granularity** to support all downstream analysis. Each row represents one delivered order item enriched with customer/seller geography and revenue metrics.

---

## 📐 Key Metrics (Validated)

<div align="center">

| Metric | Value |
| :--- | :--- |
| 📦 **Total Orders** | `98,666` |
| 👥 **Total Customers** | `98,666` |
| 💰 **Total Sales Revenue** | `₹13.59M` |
| 📈 **Gross Revenue** (incl. freight) | `₹15.84M` |
| 🏷️ **Average Item Price** | `₹120.65` |

</div>

---

## 🔍 Key Business Insights (Validated)

<details>
<summary><b>1️⃣ Revenue Is Highly Concentrated Geographically</b></summary>
<br>
<blockquote>
<b>Finding:</b> Top 3 customer states (SP, RJ, MG) contribute <b>~63%</b> of total revenue.<br>
<b>Impact:</b> Heavy reliance on single state (São Paulo contributes <b>~38%</b> revenue).<br>
<b>💡 Implication:</b> Strong demand but significant geographic concentration risk.
</blockquote>
</details>

<details>
<summary><b>2️⃣ Seller-Side Concentration Exceeds Customer Demand</b></summary>
<br>
<blockquote>
<b>Finding:</b> Sellers based in São Paulo generate <b>~64%</b> of total platform revenue.<br>
<b>Impact:</b> Revenue risk is driven more by seller concentration than customer demand.<br>
<b>💡 Implication:</b> Significant supply-side dependency.
</blockquote>
</details>

<details>
<summary><b>3️⃣ A Small Group of Sellers Dominates Revenue</b></summary>
<br>
<blockquote>
<b>Pattern:</b> Top Performers generate <b>₹200K+</b> individually, while Low Performers generate <b><₹1,000</b> despite multiple orders.<br>
<b>💡 Implication:</b> High dependency on top sellers and inefficiency among low-value sellers.
</blockquote>
</details>

<details>
<summary><b>4️⃣ Mid-Tier States Offer the Best Growth Opportunity</b></summary>
<br>
<blockquote>
<b>Target Regions:</b> RS, PR, SC, BA.<br>
<b>Characteristics:</b> Meaningful revenue without heavy saturation.<br>
<b>💡 Implication:</b> Higher ROI for seller expansion and regional marketing.
</blockquote>
</details>

---

## 📊 Dashboard Overview (Tableau)

The Tableau dashboard enables stakeholders to monitor high-level sales KPIs, compare demand vs. supply by territory, and assess product category concentration.

**Interactivity Features:**
- 🔘 **Customer State** filter
- 🔘 **Seller State** filter  
- 🔘 **Top-N Seller** parameter

---

## 🧠 Tools & Technologies

<div align="center">

![MySQL](https://img.shields.io/badge/MySQL-Data_Cleaning_&_Modeling-4479A1?style=flat-square&logo=mysql&logoColor=white)
![Pandas](https://img.shields.io/badge/pandas-Validation-150458?style=flat-square&logo=pandas&logoColor=white)
![Tableau](https://img.shields.io/badge/Tableau-Dashboard-E97627?style=flat-square&logo=tableau&logoColor=white)

</div>

---

## ⚠️ Assumptions & Limitations

> [!IMPORTANT]
> - Analysis includes **delivered orders only**.
> - Revenue used as a proxy (no cost or margin data available).
> - Freight included in gross revenue, not treated as profit.
> - Geographic analysis limited to **state-level** granularity.
> - Results reflect the historical dataset time period only.

---

## 📌 Key Takeaway

> **🎯 Sales growth is constrained not by demand, but by execution concentration and seller dependency.**
> 
> Optimizing seller distribution, reducing over-reliance on a few regions, and focusing on **mid-tier states** can unlock scalable growth without increasing acquisition costs.

---

## 📁 Repository Structure


```
📦 Sales Performance & Territory Optimization
├── 📂 data/              # Raw and processed datasets
├── 📂 sql/               # SQL scripts for data modeling
├── 📂 notebooks/         # Python validation notebooks
├── 📂 tableau_outputs/   # Exported CSVs for Tableau
├── 📂 dashboard/         # Dashboard assets
├── 📂 reports/           # Analysis reports
└── 📄 README.md          # Project documentation
```

---

<p align="center">
  <img src="https://img.shields.io/badge/Made_with-❤️-red?style=flat-square" alt="Made with love"/>
  <img src="https://img.shields.io/badge/License-MIT-green?style=flat-square" alt="License"/>
</p>

<p align="center">
  <sub>Built with SQL, Python & Tableau | Data Analytics Portfolio Project</sub>
</p>
