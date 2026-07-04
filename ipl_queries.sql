-- Query 1: Top 10 Run Scorers All Time
SELECT batter,
       SUM(batsman_runs) AS total_runs
FROM deliveries
GROUP BY batter
ORDER BY total_runs DESC
LIMIT 10;



-- Query 2: Best Strike Rates (minimum 500 runs)
SELECT batter,
       SUM(batsman_runs) AS total_runs,
       COUNT(ball) AS balls_faced,
       ROUND((SUM(batsman_runs) / COUNT(ball)) * 100, 2) AS strike_rate
FROM deliveries
GROUP BY batter
HAVING total_runs >= 500
ORDER BY strike_rate DESC
LIMIT 10;



-- Query 3: Toss Impact on Winning
SELECT toss_decision,
       COUNT(*) AS total_matches,
       SUM(CASE WHEN toss_winner = winner THEN 1 ELSE 0 END) AS toss_winner_won,
       ROUND(SUM(CASE WHEN toss_winner = winner THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS win_percentage
FROM matches
GROUP BY toss_decision;



-- Query 4: Top 10 Wicket Takers
SELECT bowler,
       COUNT(*) AS total_wickets
FROM deliveries
WHERE dismissal_kind NOT IN ('run out', 'retired hurt', 'obstructing the field')
AND dismissal_kind IS NOT NULL
AND dismissal_kind != ''
GROUP BY bowler
ORDER BY total_wickets DESC
LIMIT 10;



-- Query 5: Top 3 Batsmen Per Season (Window Function)
SELECT season, batter, total_runs, season_rank
FROM (
    SELECT m.season, d.batter,
           SUM(d.batsman_runs) AS total_runs,
           RANK() OVER (PARTITION BY m.season 
                        ORDER BY SUM(d.batsman_runs) DESC) AS season_rank
    FROM deliveries d
    JOIN matches m ON d.match_id = m.id
    GROUP BY m.season, d.batter
) ranked
WHERE season_rank <= 3
ORDER BY season, season_rank;