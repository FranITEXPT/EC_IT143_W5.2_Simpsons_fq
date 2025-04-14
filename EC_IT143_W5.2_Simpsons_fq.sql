/*
--------------------------------------------------
Filename: EC_IT143_W5.2_Simpsons_fq.sql
Community: Simpsons


-- Question 1 
-- List all unique characters in the show.
SELECT DISTINCT name 
FROM characters;

-- Question 2 
-- Show the top 5 characters with the most spoken lines.
SELECT character, COUNT(*) AS total_lines
FROM quotes
GROUP BY character
ORDER BY total_lines DESC
LIMIT 5;

-- Question 3 
-- Count the number of episodes in each season.
SELECT season, COUNT(*) AS episode_count
FROM episodes
GROUP BY season
ORDER BY season;

-- Question 4 
-- Find the episode with the most lines.
SELECT e.episode_title, COUNT(*) AS total_lines
FROM quotes q
JOIN episodes e ON q.episode_id = e.episode_id
GROUP BY e.episode_title
ORDER BY total_lines DESC
LIMIT 1;
