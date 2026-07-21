SELECT
portfolio,
ROUND(SUM(budget_inr),2) AS total_budget
FROM pmo.projects
GROUP BY portfolio
ORDER BY total_budget DESC;