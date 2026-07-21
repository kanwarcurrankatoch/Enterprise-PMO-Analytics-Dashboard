SELECT
    ROW_NUMBER() OVER(ORDER BY budget_inr DESC) AS row_num,
    project_name,
    budget_inr
FROM pmo.projects;