SELECT
technology,
ROUND(SUM(budget_inr),2) AS total_budget
FROM pmo.projects
GROUP BY technology
ORDER BY total_budget DESC;