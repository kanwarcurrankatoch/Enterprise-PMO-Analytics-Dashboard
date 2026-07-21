SELECT
    project_id,
    MAX(risk_score) AS highest_risk
FROM pmo.risks
GROUP BY project_id
ORDER BY highest_risk DESC;