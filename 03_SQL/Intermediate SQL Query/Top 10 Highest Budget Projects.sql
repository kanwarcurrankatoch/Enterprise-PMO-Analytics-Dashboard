SELECT
project_id,
project_name,
budget_inr
FROM pmo.projects
ORDER BY budget_inr DESC
LIMIT 10;