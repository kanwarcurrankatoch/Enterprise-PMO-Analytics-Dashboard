SELECT
    p.project_name,
    SUM(b.expected_benefit_inr) AS expected_benefits,
    SUM(b.realized_benefit_inr) AS realized_benefits
FROM pmo.projects p
JOIN pmo.benefits b
    ON p.project_id = b.project_id
GROUP BY
    p.project_name
ORDER BY expected_benefits DESC;