<p align="center">
  <img src="https://img.shields.io/badge/Status-Completed-success?style=for-the-badge" alt="Status"/>
  <img src="https://img.shields.io/badge/SQL-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL"/>
  <img src="https://img.shields.io/badge/Python-3.8+-3776AB?style=for-the-badge&logo=python&logoColor=white" alt="Python"/>
  <img src="https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau&logoColor=white" alt="Tableau"/>
</p>

<h1 align="center">📊 Sales Performance & Territory Optimization</h1>

<p align="center">
  <strong>End-to-End Data Analytics Project</strong><br>
  <code>SQL</code> • <code>Python</code> • <code>Tableau</code>
</p>

<p align="center">
  <a href="#-project-overview">Overview</a> •
  <a href="#-dataset">Dataset</a> •
  <a href="#-business-objectives">Objectives</a> •
  <a href="#-key-insights">Insights</a> •
  <a href="#-dashboard">Dashboard</a> •
  <a href="#-repository-structure">Structure</a>
</p>

---

## 📌 Project Overview

This project analyzes **e-commerce sales performance** to identify revenue concentration risks, territory inefficiencies, and seller dependency patterns. Using cleaned transactional data, the analysis focuses on **where revenue comes from**, **who drives it**, and **where scalable growth opportunities exist**.

<table>
<tr>
<td>

### 🔄 Production-Style Analytics Workflow

| Stage | Tool | Purpose |
|:---:|:---:|:---|
| 🗄️ | **SQL** | Data modeling and core analysis |
| 🐍 | **Python** | Validation and analytical reasoning |
| 📊 | **Tableau** | Executive-level visualization |

</td>
</tr>
</table>

---

## 🗂️ Dataset

<table>
<tr>
<td width="120"><strong>📦 Source</strong></td>
<td>Olist Brazilian E-commerce Public Dataset</td>
</tr>
<tr>
<td><strong>📏 Scope</strong></td>
<td>~99K delivered orders, ~112K order items, 1M+ geolocation records</td>
</tr>
<tr>
<td><strong>📋 Type</strong></td>
<td>Historical transactional sales data</td>
</tr>
</table>

---

## 🎯 Business Objectives

<table>
<tr>
<td>✅</td>
<td>Measure overall sales performance using core KPIs</td>
</tr>
<tr>
<td>✅</td>
<td>Identify customer-side and seller-side territory concentration</td>
</tr>
<tr>
<td>✅</td>
<td>Detect seller dependency and underperformance patterns</td>
</tr>
<tr>
<td>✅</td>
<td>Highlight regions with scalable growth potential</td>
</tr>
</table>

---

## 🏗️ Data Modeling Approach

### ETL Strategy

Implemented a **staging → clean table** pattern to handle:

```
📥 Missing numeric values
📥 Empty timestamps  
📥 Precision issues in geographic data
```

Built a unified `sales_fact` table at **order-item granularity** to support all downstream analysis.

### Core Fact Table

> Each row in `sales_fact` represents:
> - One delivered order item
> - Enriched with customer state, seller state, product category, and revenue metrics

---

## 📐 Key Metrics (Validated)

<p align="center">

| Metric | Value |
|:---|:---:|
| 📦 **Total Orders** | `98,666` |
| 👥 **Total Customers** | `98,666` |
| 💰 **Total Sales Revenue** | `₹13.59M` |
| 📈 **Gross Revenue** (incl. freight) | `₹15.84M` |
| 🏷️ **Average Item Price** | `₹120.65` |

</p>

---

## 🔍 Key Business Insights (Validated)

<details>
<summary><strong>1️⃣ Revenue Is Highly Concentrated Geographically</strong></summary>

<br>

| Finding | Impact |
|:---|:---|
| Top 3 customer states (SP, RJ, MG) contribute **~63%** of total revenue | Geographic concentration risk |
| São Paulo alone contributes **~38%** of revenue and **~42%** of total orders | Heavy reliance on single state |

> **💡 Implication:** Strong demand but significant geographic concentration risk.

</details>

<details>
<summary><strong>2️⃣ Seller-Side Concentration Exceeds Customer Demand</strong></summary>

<br>

| Finding | Impact |
|:---|:---|
| Sellers based in São Paulo generate **~64%** of total platform revenue | Supply-side dependency |
| This exceeds SP's customer-side contribution | Revenue risk driver |

> **💡 Implication:** Revenue risk is driven more by seller concentration than customer demand.

</details>

<details>
<summary><strong>3️⃣ A Small Group of Sellers Dominates Revenue</strong></summary>

<br>

| Seller Segment | Revenue Pattern |
|:---|:---|
| 🏆 Top Performers | Generate **₹200K+** individually |
| ⚠️ Low Performers | Generate **<₹1,000** despite multiple orders |

> **💡 Implication:** High dependency on top sellers and inefficiency among low-value sellers.

</details>

<details>
<summary><strong>4️⃣ Mid-Tier States Offer the Best Growth Opportunity</strong></summary>

<br>

| Target States | Characteristics |
|:---|:---|
| RS, PR, SC, BA | Meaningful revenue without heavy saturation |

> **💡 Implication:** These regions offer higher ROI for seller expansion and regional marketing.

</details>

---

## 📊 Dashboard Overview (Tableau)

The Tableau dashboard enables stakeholders to:

<table>
<tr>
<td>📈</td>
<td>Monitor high-level sales KPIs</td>
</tr>
<tr>
<td>🗺️</td>
<td>Compare customer demand vs seller supply by territory</td>
</tr>
<tr>
<td>👤</td>
<td>Identify top and underperforming sellers</td>
</tr>
<tr>
<td>📦</td>
<td>Assess product category revenue concentration</td>
</tr>
</table>

### 🎛️ Interactivity

```
🔘 Customer State filter
🔘 Seller State filter  
🔘 Top-N Seller parameter
```

---

## 🧠 Tools & Technologies

<p align="center">
  <img src="https://img.shields.io/badge/MySQL-Data_Cleaning_&_Modeling-4479A1?style=flat-square&logo=mysql&logoColor=white" alt="MySQL"/>
  <img src="https://img.shields.io/badge/pandas-Validation-150458?style=flat-square&logo=pandas&logoColor=white" alt="Pandas"/>
  <img src="https://img.shields.io/badge/matplotlib-Visualization-11557c?style=flat-square" alt="Matplotlib"/>
  <img src="https://img.shields.io/badge/Tableau-Dashboard-E97627?style=flat-square&logo=tableau&logoColor=white" alt="Tableau"/>
</p>

| Tool | Purpose |
|:---|:---|
| **SQL (MySQL)** | Data cleaning, modeling, aggregations |
| **Python (pandas, matplotlib)** | Validation & sanity checks |
| **Tableau** | Interactive dashboard & storytelling |

---

## ⚠️ Assumptions & Limitations

> [!NOTE]
> - Analysis includes **delivered orders only**
> - Revenue used as a proxy (no cost or margin data available)
> - Freight included in gross revenue, not treated as profit
> - Geographic analysis limited to **state-level** granularity
> - Results reflect the historical dataset time period only

---

## 📌 Key Takeaway

<table>
<tr>
<td>
<p align="center">
<strong>🎯 Sales growth is constrained not by demand, but by execution concentration and seller dependency.</strong>
</p>

Optimizing seller distribution, reducing over-reliance on a few regions, and focusing on **mid-tier states** can unlock scalable growth without increasing acquisition costs.

</td>
</tr>
</table>

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
