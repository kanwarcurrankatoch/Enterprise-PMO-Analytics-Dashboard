SELECT
project_name,
budget_inr
FROM pmo.projects
WHERE budget_inr >
(
SELECT AVG(budget_inr)
FROM pmo.projects
);