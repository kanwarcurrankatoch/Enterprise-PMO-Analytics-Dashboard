SELECT
department,
COUNT(*) AS total_projects
FROM pmo.projects
GROUP BY department
ORDER BY total_projects DESC;