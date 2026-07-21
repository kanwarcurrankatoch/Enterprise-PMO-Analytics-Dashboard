SELECT
    p.project_name,
    COUNT(c.change_id) AS total_changes
FROM pmo.projects p
LEFT JOIN pmo.change_requests c
    ON p.project_id = c.project_id
GROUP BY
    p.project_name
ORDER BY total_changes DESC;