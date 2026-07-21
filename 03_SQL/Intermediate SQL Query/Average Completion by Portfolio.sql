SELECT
portfolio,
ROUND(AVG(completion_percent),2) AS avg_completion
FROM pmo.projects
GROUP BY portfolio
ORDER BY avg_completion DESC;