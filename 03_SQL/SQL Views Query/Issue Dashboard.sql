CREATE OR REPLACE VIEW pmo.vw_issue_dashboard AS
SELECT
    project_id,
    COUNT(*) AS total_issues
FROM pmo.issues
GROUP BY project_id;

SELECT * FROM pmo.vw_issue_dashboard;