SELECT
    p.project_id,
    p.project_name,
    COUNT(i.issue_id) AS open_issues
FROM pmo.projects p
LEFT JOIN pmo.issues i
    ON p.project_id = i.project_id
WHERE i.status <> 'Closed'
GROUP BY
    p.project_id,
    p.project_name
ORDER BY open_issues DESC;