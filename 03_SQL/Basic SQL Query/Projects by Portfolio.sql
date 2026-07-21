SELECT
portfolio,
COUNT(*) AS total_projects
FROM pmo.projects
GROUP BY portfolio
ORDER BY total_projects DESC;