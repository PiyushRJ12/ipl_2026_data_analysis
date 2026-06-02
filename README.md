# 🏏 IPL 2026 Data Analysis

### SQL Server + Power BI Project

---

## 📌 Overview

This project analyzes IPL 2026 cricket data using **SQL Server (SSMS)** for data processing and **Power BI** for visualization.

The goal is to transform raw cricket datasets into meaningful insights and present them through an interactive dashboard.

---

## 🛠️ Tech Stack

| Category         | Tools Used        |
| ---------------- | ----------------- |
| 🗄️ Database     | SQL Server (SSMS) |
| 📊 Visualization | Power BI          |
| 💻 Language      | SQL               |
| 📁 Data Format   | CSV Files         |

---

## 📂 Dataset

| File Name            | Description         |
| -------------------- | ------------------- |
| `matches.csv`        | Match details       |
| `deliveries.csv`     | Ball-by-ball data   |
| `batting_stats.csv`  | Batting performance |
| `bowling_stats.csv`  | Bowling statistics  |
| `fielding_stats.csv` | Fielding records    |
| `points_table.csv`   | Team standings      |

---

## 🧠 Key Analysis

* 🟠 Orange Cap (Top Run Scorer)
* 🟣 Purple Cap (Top Wicket Taker)
* 🏆 Match winners & team performance
* 📈 Batting strike rate analysis
* 🎯 Bowling economy & wickets
* ⚡ Powerplay (Overs 1–6) insights
* 🔥 Death overs (16–20) performance

---

## 📊 Power BI Dashboard

### Features:

* 📌 Team performance comparison
* 📌 Top batsmen & bowlers leaderboard
* 📌 Match-wise insights
* 📌 Interactive filters (Team, Player, Season)
* 📌 KPI Cards (Runs, Wickets, Strike Rate, Economy)

---

## 💡 Sample SQL Queries

```sql
-- 🟠 Orange Cap Winner
SELECT batsman, SUM(runs) AS total_runs
FROM batting_stats
GROUP BY batsman
ORDER BY total_runs DESC;

-- 🟣 Purple Cap Winner
SELECT bowler, SUM(wickets) AS total_wickets
FROM bowling_stats
GROUP BY bowler
ORDER BY total_wickets DESC;

-- 🏆 Matches won by each team
SELECT winner, COUNT(*) AS total_wins
FROM matches
GROUP BY winner
ORDER BY total_wins DESC;
```

---

## 🚀 Project Workflow

```text
CSV Files → SQL Server (SSMS) → Data Cleaning → SQL Analysis → Power BI → Dashboard
```

1. Imported CSV files into SQL Server
2. Created structured tables
3. Cleaned and transformed data
4. Performed SQL analysis
5. Connected database to Power BI
6. Built interactive dashboard

---

## 📊 Future Enhancements

* 📈 Player consistency analysis
* 🤖 Match prediction model
* 📊 Advanced KPIs (impact player, partnerships)
* 🔄 Real-time data integration

---

## 👤 Author

**Piyush Singh**
Aspiring Data Analyst
SQL | Power BI

---

## ⭐ Support

If you like this project, give it a ⭐ on GitHub!
