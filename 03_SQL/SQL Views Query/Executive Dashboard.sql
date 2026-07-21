CREATE OR REPLACE VIEW pmo.vw_executive_dashboard AS
SELECT

    p.project_id,
    p.project_name,
    p.status,
    p.health,

    p.budget_inr,

    p.actual_spend,

    COALESCE(r.total_resources,0) AS resources,

    COALESCE(k.total_risks,0) AS risks,

    COALESCE(i.total_issues,0) AS issues,

    p.completion_percent

FROM pmo.projects p

LEFT JOIN pmo.vw_resource_utilization r
ON p.project_id=r.project_id

LEFT JOIN pmo.vw_risk_dashboard k
ON p.project_id=k.project_id

LEFT JOIN pmo.vw_issue_dashboard i
ON p.project_id=i.project_id;


SELECT *
FROM pmo.vw_executive_dashboard;