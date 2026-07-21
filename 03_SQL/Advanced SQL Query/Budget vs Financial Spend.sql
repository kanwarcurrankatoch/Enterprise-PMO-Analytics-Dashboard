SELECT
    p.project_id,
    p.project_name,
    p.budget_inr,
    SUM(f.actual_spend_inr) AS total_actual_spend,
    p.budget_inr - SUM(f.actual_spend_inr) AS variance
FROM pmo.projects p
JOIN pmo.financials f
    ON p.project_id = f.project_id
GROUP BY
    p.project_id,
    p.project_name,
    p.budget_inr
ORDER BY variance;