SELECT
status,
COUNT(*) AS total_projects
FROM pmo.projects
GROUP BY status
ORDER BY total_projects DESC;