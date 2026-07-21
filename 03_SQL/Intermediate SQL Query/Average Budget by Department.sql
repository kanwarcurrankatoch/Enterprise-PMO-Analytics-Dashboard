SELECT
department,
ROUND(AVG(budget_inr),2) AS avg_budget
FROM pmo.projects
GROUP BY department
ORDER BY avg_budget DESC;