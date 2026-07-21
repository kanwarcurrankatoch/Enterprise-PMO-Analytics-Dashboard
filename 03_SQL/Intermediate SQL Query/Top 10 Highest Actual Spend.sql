SELECT
project_id,
project_name,
actual_spend
FROM pmo.projects
ORDER BY actual_spend DESC
LIMIT 10;