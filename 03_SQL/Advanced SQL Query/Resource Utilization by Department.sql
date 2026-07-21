SELECT
    department,
    ROUND(AVG(utilization_percent),2) AS avg_utilization
FROM pmo.resources
GROUP BY department
ORDER BY avg_utilization DESC;