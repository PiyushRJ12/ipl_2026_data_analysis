-- ================================================
-- Project  : IPL 2026 Data Analysis
-- Author   : Piyush Kumar
-- GitHub   : https://github.com/PiyushRJ12
-- File     : ipl_2026_analysis.sql
-- ================================================

USE ipl2026;

-- ------------------------------------------------
-- MATCHES ANALYSIS
-- ------------------------------------------------

-- Q1. Total number of matches played
SELECT COUNT(*) AS total_matches 
FROM matches;

-- Q2. Total matches won by each team
SELECT match_winner, COUNT(*) AS total_wins
FROM matches
GROUP BY match_winner
ORDER BY total_wins DESC;

-- Q3. How many times toss winner also won the match
SELECT match_winner, toss_winner, COUNT(*) AS total_winner
FROM matches
WHERE toss_winner = match_winner
GROUP BY match_winner, toss_winner;

-- Q4. Matches won by batting first vs bowling first
SELECT toss_decision, COUNT(*) AS total_wins
FROM matches
WHERE toss_winner = match_winner
GROUP BY toss_decision;

-- Q5. Player with most Player of the Match awards
SELECT TOP 1 player_of_the_match, COUNT(*) AS total_awards
FROM matches
GROUP BY player_of_the_match
ORDER BY total_awards DESC;

-- Q6. Number of matches won by each team in each stage
SELECT stage, match_winner, COUNT(match_winner) AS total_match_winner
FROM matches
GROUP BY stage, match_winner
ORDER BY total_match_winner DESC;

-- Q7. Number of times each player won POTM in each stage
SELECT stage, player_of_the_match, COUNT(player_of_the_match) AS total_potm
FROM matches
GROUP BY stage, player_of_the_match
ORDER BY total_potm DESC;

-- ------------------------------------------------
-- BATTING ANALYSIS
-- ------------------------------------------------

-- Q8. Top 5 run scorers
SELECT TOP 5 batsman, runs
FROM batting_stats
ORDER BY runs DESC;

-- Q9. Players with highest strike rate (minimum 100 runs)
SELECT batsman, strike_rate
FROM batting_stats
WHERE runs > 100
ORDER BY strike_rate DESC;

-- Q10. Top 5 batsmen with most sixes
SELECT TOP 5 batsman, sixes
FROM batting_stats
ORDER BY sixes DESC;

-- Q11. Batsman with highest individual score in a match
SELECT TOP 1 batsman, high_score
FROM batting_stats
ORDER BY high_score DESC;

-- Q12. Total fours hit by each team
SELECT team, SUM(fours) AS total_fours
FROM batting_stats
GROUP BY team
ORDER BY total_fours DESC;

-- Q13. Batsman who faced the most balls
SELECT TOP 1 batsman, SUM(balls_faced) AS faced_the_most_balls
FROM batting_stats
GROUP BY batsman
ORDER BY faced_the_most_balls DESC;

-- Q14. Total runs scored by each team
SELECT team, SUM(runs) AS total_runs
FROM batting_stats
GROUP BY team
ORDER BY total_runs DESC;

-- ------------------------------------------------
-- BOWLING ANALYSIS
-- ------------------------------------------------

-- Q15. Bowler with most wickets
SELECT TOP 1 bowler, wickets
FROM bowling_stats
ORDER BY wickets DESC;

-- Q16. Bowlers with best economy rate (minimum 10 overs)
SELECT bowler, economy
FROM bowling_stats
WHERE overs >= 10
ORDER BY economy ASC;

-- Q17. Total dot balls bowled by each bowler
SELECT bowler, SUM(dot_balls) AS total_dot_balls
FROM bowling_stats
GROUP BY bowler
ORDER BY total_dot_balls DESC;

-- Q18. Bowler who bowled most wides
SELECT TOP 1 bowler, SUM(CAST(wide AS INT)) AS most_wides
FROM deliveries
GROUP BY bowler
ORDER BY most_wides DESC;

-- ------------------------------------------------
-- POINTS TABLE ANALYSIS
-- ------------------------------------------------

-- Q19. Current points table standings
SELECT * FROM points_table
ORDER BY position ASC;

-- Q20. Teams with positive NRR
SELECT team, nrr, points
FROM points_table
WHERE nrr > 0
ORDER BY nrr DESC;

-- Q21. Teams with winning percentage greater than 50%
SELECT team, wins, matches, (wins * 100) / matches AS win_percentage
FROM points_table
WHERE (wins * 100) / matches > 50
GROUP BY team, wins, matches
ORDER BY win_percentage DESC;

-- Q22. Total matches played by each team
SELECT team, SUM(matches) AS total_matches_played
FROM points_table
GROUP BY team
ORDER BY total_matches_played DESC;

-- ------------------------------------------------
-- DELIVERIES ANALYSIS
-- ------------------------------------------------

-- Q23. Total runs scored in the tournament
SELECT SUM(runs_of_bat) AS total_runs
FROM deliveries;

-- Q24. Total wickets taken in the tournament
SELECT COUNT(wicket_type) AS total_wickets
FROM deliveries
WHERE wicket_type IS NOT NULL;

-- Q25. Total runs scored by each batsman
SELECT striker, SUM(runs_of_bat) AS total_runs
FROM deliveries
GROUP BY striker
ORDER BY total_runs DESC;

-- Q26. Total wickets taken by each bowler
SELECT bowler, wicket_type, COUNT(*) AS total_wickets
FROM deliveries
WHERE wicket_type IS NOT NULL
GROUP BY bowler, wicket_type
ORDER BY total_wickets DESC;

-- Q27. Total extras given by each bowling team
SELECT bowling_team, SUM(extras) AS total_extras
FROM deliveries
GROUP BY bowling_team
ORDER BY total_extras DESC;

-- Q28. Top 3 venues with highest total runs scored
SELECT TOP 3 venue, SUM(runs_of_bat) AS total_runs_scored
FROM deliveries
GROUP BY venue
ORDER BY total_runs_scored DESC;

-- Q29. Total runs and wickets by each team
SELECT batting_team, SUM(runs_of_bat) AS total_runs, COUNT(wicket_type) AS total_wickets
FROM deliveries
WHERE wicket_type IS NOT NULL
GROUP BY batting_team
ORDER BY total_runs DESC;

-- ------------------------------------------------
-- SQUADS ANALYSIS
-- ------------------------------------------------

-- Q30. Total number of players in each team
SELECT team_name, COUNT(player) AS total_players
FROM squads
GROUP BY team_name
ORDER BY total_players DESC;
