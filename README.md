🏏 IPL 2026 Data Analysis (SQL + Power BI Project)
📌 Overview

This project analyzes IPL 2026 cricket data using SQL Server (SSMS) for data processing and Power BI for visualization.

The objective is to extract meaningful insights from raw cricket datasets and present them in an interactive dashboard.

🛠️ Tools & Technologies
🗄️ Database: SQL Server Management Studio (SSMS)
📊 Visualization: Microsoft Power BI
📁 Data Format: CSV Files
💻 Language: SQL
📂 Dataset Used
matches.csv → Match details
deliveries.csv → Ball-by-ball data
batting_stats.csv → Batting performance
bowling_stats.csv → Bowling stats
fielding_stats.csv → Fielding stats
points_table.csv → Team rankings
🧠 Key SQL Analysis Performed
🟠 Orange Cap (Top Run Scorer)
🟣 Purple Cap (Top Wicket Taker)
🏆 Match winners & team performance
📈 Strike rate & batting analysis
🎯 Bowling economy & wicket stats
⚡ Powerplay (Overs 1–6) analysis
🔥 Death overs (16–20) performance
📊 Power BI Dashboard Features
📌 Team performance comparison
📌 Top batsmen & bowlers leaderboard
📌 Match-wise analysis
📌 Interactive filters (team, player, season)
📌 KPIs (runs, wickets, strike rate, economy)
💡 Sample SQL Queries
-- Orange Cap Winner
SELECT batsman, SUM(runs) AS total_runs
FROM batting_stats
GROUP BY batsman
ORDER BY total_runs DESC;

-- Purple Cap Winner
SELECT bowler, SUM(wickets) AS total_wickets
FROM bowling_stats
GROUP BY bowler
ORDER BY total_wickets DESC;

-- Matches won by each team
SELECT winner, COUNT(*) AS total_wins
FROM matches
GROUP BY winner
ORDER BY total_wins DESC;
🚀 Project Workflow
Imported CSV data into SQL Server
Created structured tables
Performed data cleaning & transformation
Wrote SQL queries for analysis
Connected SQL Server to Power BI
Built interactive dashboards
📊 Future Enhancements
Player consistency analysis
Match prediction model
Advanced KPIs (impact player, partnerships)
Real-time data integration

📜 License
This project is for educational and portfolio purposes.

🙌 Author

Piyush Singh
Aspiring Data Analyst | SQL | Power BI

⭐ Support

If you like this project, give it a ⭐ on GitHub!
