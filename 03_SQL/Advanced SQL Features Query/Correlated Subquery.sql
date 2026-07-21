SELECT
p1.project_name,
p1.department,
p1.actual_spend
FROM pmo.projects p1
WHERE actual_spend >
(
SELECT AVG(actual_spend)
FROM pmo.projects p2
WHERE p1.department=p2.department
);