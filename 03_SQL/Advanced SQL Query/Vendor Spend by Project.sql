SELECT
    p.project_name,
    SUM(v.contract_value_inr) AS vendor_cost
FROM pmo.projects p
JOIN pmo.vendors v
    ON p.project_id = v.project_id
GROUP BY
    p.project_name
ORDER BY vendor_cost DESC;