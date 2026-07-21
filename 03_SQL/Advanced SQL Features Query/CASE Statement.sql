SELECT
    project_id,
    project_name,
    completion_percent,
    CASE
        WHEN completion_percent >= 90 THEN 'Completed'
        WHEN completion_percent >= 70 THEN 'Near Completion'
        WHEN completion_percent >= 40 THEN 'In Progress'
        ELSE 'Needs Attention'
    END AS project_stage
FROM pmo.projects;