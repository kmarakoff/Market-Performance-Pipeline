SELECT 
    team_name,
    year,
    goals_for,
    -- This calculates the baseline average goals for ONLY that specific historical year
    AVG(goals_for) OVER (PARTITION BY year) AS yearly_baseline_average,
    -- This calculates the operational delta (above or below baseline)
    goals_for - AVG(goals_for) OVER (PARTITION BY year) AS performance_deviation
FROM market_performance_history
ORDER BY year DESC, performance_deviation DESC;
