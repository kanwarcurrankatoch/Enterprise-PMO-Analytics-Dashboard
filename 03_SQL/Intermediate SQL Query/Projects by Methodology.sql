SELECT
methodology,
COUNT(*) AS total_projects
FROM pmo.projects
GROUP BY methodology
ORDER BY total_projects DESC;