# Automated Market Performance Pipeline & Metrics Dashboard
An end-to-end data pipeline architecture that automates the daily extraction, data transformation, storage, and visualization of historical sports and market operational data.

## 📊 Live Interactive Dashboard
👉 (https://public.tableau.com/app/profile/kaitlin.marakoff/viz/HistoricalPerformanceIntelligenceDashboard/TotalWinsKPI#1)

## 🛠️ System Architecture & Data Lifecycle
1. **Automation Layer (UiPath RPA):** A background workflow sequence that targets dynamic web structures, extracts multi-column catalog records, and securely appends live data directly into a cloud storage environment via GSuite APIs.
2. **Programming Layer (Python / Pandas):** A modular data cleaning pipeline built inside Google Colab. The script handles data type casting and executes advanced **Conditional Grouped Median Imputation** (`groupby('Year').transform(...)`) to accurately resolve missing dataset attributes based on temporal clusters.
3. **Relational Database Layer (SQL / DataGrip):** A relational SQLite database schema built inside JetBrains DataGrip. Clean data loads are queried using advanced **SQL Window Functions** (`AVG() OVER (PARTITION BY year)`) to compute historical baseline averages and operational performance deviations.
4. **Visualization Layer (Tableau Public):** An executive metrics workspace featuring volume KPI tracking blocks, continuous historical dimension trend lines, and sorted operational category ledgers.
