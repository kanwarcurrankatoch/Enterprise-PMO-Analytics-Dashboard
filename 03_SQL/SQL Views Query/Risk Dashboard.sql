CREATE OR REPLACE VIEW pmo.vw_risk_dashboard AS
SELECT
    project_id,
    COUNT(*) AS total_risks,
    MAX(risk_score) AS highest_risk
FROM pmo.risks
GROUP BY project_id;

SELECT * FROM pmo.vw_risk_dashboard;