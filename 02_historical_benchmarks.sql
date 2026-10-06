SELECT 
    team_name,
    year,
    goals_for,
    AVG(goals_for) OVER (PARTITION BY year) AS yearly_baseline_average,
    goals_for - AVG(goals_for) OVER (PARTITION BY year) AS performance_deviation
FROM market_performance_history
ORDER BY year DESC, performance_deviation DESC;
