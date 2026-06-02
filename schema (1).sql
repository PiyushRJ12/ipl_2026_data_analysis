-- ================================================
-- Project  : IPL 2026 Data Analysis
-- Author   : Piyush Singh
-- File     : schema.sql
-- Description: Database schema for IPL cricket analysis
-- ================================================

-- Create Database
CREATE DATABASE ipl_2026_db;

-- Use Database
USE ipl_2026_db;

-- ================================================
-- Table: matches
-- ================================================
CREATE TABLE matches (
    match_id INT PRIMARY KEY,
    match_date DATE,
    team1 VARCHAR(50),
    team2 VARCHAR(50),
    venue VARCHAR(100),
    winner VARCHAR(50)
);

-- ================================================
-- Table: batting_stats
-- ================================================
CREATE TABLE batting_stats (
    match_id INT,
    batsman VARCHAR(100),
    runs INT,
    balls INT,
    fours INT,
    sixes INT,
    strike_rate FLOAT,
    FOREIGN KEY (match_id) REFERENCES matches(match_id)
);

-- ================================================
-- Table: bowling_stats
-- ================================================
CREATE TABLE bowling_stats (
    match_id INT,
    bowler VARCHAR(100),
    overs FLOAT,
    runs_conceded INT,
    wickets INT,
    economy FLOAT,
    FOREIGN KEY (match_id) REFERENCES matches(match_id)
);

-- ================================================
-- Table: fielding_stats
-- ================================================
CREATE TABLE fielding_stats (
    match_id INT,
    fielder VARCHAR(100),
    catches INT,
    run_outs INT,
    stumpings INT,
    FOREIGN KEY (match_id) REFERENCES matches(match_id)
);

-- ================================================
-- Table: points_table
-- ================================================
CREATE TABLE points_table (
    team VARCHAR(50),
    matches_played INT,
    wins INT,
    losses INT,
    points INT,
    net_run_rate FLOAT
);

-- ================================================
-- Table: deliveries (Ball-by-ball data)
-- ================================================
CREATE TABLE deliveries (
    match_id INT,
    over_num INT,
    ball INT,
    batsman VARCHAR(100),
    bowler VARCHAR(100),
    runs INT,
    extras INT,
    total_runs INT,
    FOREIGN KEY (match_id) REFERENCES matches(match_id)
);
