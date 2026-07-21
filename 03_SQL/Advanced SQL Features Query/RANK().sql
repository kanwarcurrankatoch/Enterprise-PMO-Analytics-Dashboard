SELECT
    project_name,
    budget_inr,
    RANK() OVER(ORDER BY budget_inr DESC) AS budget_rank
FROM pmo.projects;