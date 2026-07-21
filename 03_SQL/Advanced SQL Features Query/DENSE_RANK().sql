SELECT
    project_name,
    budget_inr,
    DENSE_RANK() OVER(ORDER BY budget_inr DESC) AS dense_rank
FROM pmo.projects;