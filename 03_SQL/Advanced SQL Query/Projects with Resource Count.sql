SELECT
    p.project_id,
    p.project_name,
    COUNT(r.resource_id) AS total_resources
FROM pmo.projects p
LEFT JOIN pmo.resources r
    ON p.project_id = r.project_id
GROUP BY
    p.project_id,
    p.project_name
ORDER BY total_resources DESC;