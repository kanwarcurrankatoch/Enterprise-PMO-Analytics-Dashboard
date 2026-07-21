WITH ProjectBudget AS
(
SELECT
project_id,
project_name,
budget_inr
FROM pmo.projects
WHERE budget_inr>50000000
)

SELECT *
FROM ProjectBudget;