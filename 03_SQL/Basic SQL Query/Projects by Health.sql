SELECT
health,
COUNT(*) AS total_projects
FROM pmo.projects
GROUP BY health
ORDER BY total_projects DESC;