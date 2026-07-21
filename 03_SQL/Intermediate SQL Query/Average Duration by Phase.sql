SELECT
phase,
ROUND(AVG(duration_days),2) AS avg_duration_days
FROM pmo.projects
GROUP BY phase
ORDER BY avg_duration_days DESC;