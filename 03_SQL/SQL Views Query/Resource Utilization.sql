CREATE OR REPLACE VIEW pmo.vw_resource_utilization AS
SELECT
    project_id,
    COUNT(*) AS total_resources,
    ROUND(AVG(utilization_percent),2) AS avg_utilization
FROM pmo.resources
GROUP BY project_id;

SELECT * FROM pmo.vw_resource_utilization;