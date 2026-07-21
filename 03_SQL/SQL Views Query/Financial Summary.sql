CREATE OR REPLACE VIEW pmo.vw_financial_summary AS
SELECT
    p.project_id,
    p.project_name,
    SUM(f.budget_inr) AS budget,
    SUM(f.actual_spend_inr) AS actual_spend,
    SUM(f.variance_inr) AS variance
FROM pmo.projects p
JOIN pmo.financials f
ON p.project_id=f.project_id
GROUP BY
    p.project_id,
    p.project_name;

SELECT * FROM pmo.vw_financial_summary;