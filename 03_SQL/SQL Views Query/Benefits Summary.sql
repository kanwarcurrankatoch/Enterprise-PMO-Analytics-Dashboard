CREATE OR REPLACE VIEW pmo.vw_benefits_summary AS
SELECT
    project_id,
    SUM(expected_benefit_inr) AS expected_benefits,
    SUM(realized_benefit_inr) AS realized_benefits
FROM pmo.benefits
GROUP BY project_id;

SELECT * FROM pmo.vw_benefits_summary;