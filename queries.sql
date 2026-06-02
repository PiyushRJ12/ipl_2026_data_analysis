-- ================================================
-- Project  : IPL 2026 Data Analysis
-- Author   : Piyush Singh
-- File     : queries.sql
-- Description: SQL queries for IPL analysis
-- ================================================

-- ================================================
-- BASIC QUERIES
-- ================================================

-- Show all matches
SELECT * FROM matches;

-- Total matches
SELECT COUNT(*) AS total_matches FROM matches;

-- Matches won by each team
SELECT winner, COUNT(*) AS total_wins
FROM matches
GROUP BY winner
ORDER BY total_wins DESC;

-- ================================================
-- BATTING ANALYSIS
-- ================================================

-- Orange Cap (Top Run Scorer)
SELECT batsman, SUM(runs) AS total_runs
FROM batting_stats
GROUP BY batsman
ORDER BY total_runs DESC;

-- Top 5 batsmen
SELECT TOP 5 batsman, SUM(runs) AS total_runs
FROM batting_stats
GROUP BY batsman
ORDER BY total_runs DESC;

-- Average runs per player
SELECT batsman, AVG(runs) AS avg_runs
FROM batting_stats
GROUP BY batsman;

-- ================================================
-- BOWLING ANALYSIS
-- ================================================

-- Purple Cap (Top Wicket Taker)
SELECT bowler, SUM(wickets) AS total_wickets
FROM bowling_stats
GROUP BY bowler
ORDER BY total_wickets DESC;

-- Best economy bowlers
SELECT bowler, AVG(economy) AS avg_economy
FROM bowling_stats
GROUP BY bowler
ORDER BY avg_economy ASC;

-- ================================================
-- MATCH ANALYSIS
-- ================================================

-- Matches won by MI
SELECT * 
FROM matches
WHERE winner = 'MI';

-- Tie matches (no winner)
SELECT *
FROM matches
WHERE winner IS NULL;

-- ================================================
-- ADVANCED (JOIN)
-- ================================================

-- Player performance with match details
SELECT m.match_id, m.team1, m.team2, b.batsman, b.runs
FROM matches m
JOIN batting_stats b ON m.match_id = b.match_id;

-- Total runs per team (basic logic)
SELECT team1 AS team, COUNT(*) AS matches_played
FROM matches
GROUP BY team1;
