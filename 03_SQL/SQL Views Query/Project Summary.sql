CREATE OR REPLACE VIEW pmo.vw_project_summary AS
SELECT
    project_id,
    project_name,
    portfolio,
    department,
    project_manager,
    status,
    health,
    budget_inr,
    actual_spend,
    completion_percent
FROM pmo.projects;

SELECT * FROM pmo.vw_project_summary;