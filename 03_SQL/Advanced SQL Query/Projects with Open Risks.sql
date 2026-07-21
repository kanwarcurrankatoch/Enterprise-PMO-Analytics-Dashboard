SELECT
    p.project_id,
    p.project_name,
    COUNT(r.risk_id) AS open_risks
FROM pmo.projects p
LEFT JOIN pmo.risks r
    ON p.project_id = r.project_id
WHERE r.status = 'Open'
GROUP BY
    p.project_id,
    p.project_name
ORDER BY open_risks DESC;SELECT
    p.project_id,
    p.project_name,
    COUNT(r.risk_id) AS open_risks
FROM pmo.projects p
LEFT JOIN pmo.risks r
    ON p.project_id = r.project_id
WHERE r.status = 'Open'
GROUP BY
    p.project_id,
    p.project_name
ORDER BY open_risks DESC;