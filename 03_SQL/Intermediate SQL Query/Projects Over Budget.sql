SELECT
project_id,
project_name,
budget_inr,
actual_spend,
(actual_spend - budget_inr) AS budget_overrun
FROM pmo.projects
WHERE actual_spend > budget_inr
ORDER BY budget_overrun DESC;