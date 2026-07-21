CREATE TABLE pmo.milestones (

    milestone_id VARCHAR(20) PRIMARY KEY,
    project_id VARCHAR(20),
    milestone_name VARCHAR(100),
    milestone_type VARCHAR(50),
    planned_date DATE,
    actual_date DATE,
    status VARCHAR(20),
    delay_days INTEGER,
    owner VARCHAR(100),

    CONSTRAINT fk_milestone_project
    FOREIGN KEY (project_id)
    REFERENCES pmo.projects(project_id)

);

SELECT COUNT(*)
FROM pmo.milestones;

SELECT COUNT(DISTINCT project_id)
FROM pmo.milestones;

SELECT *
FROM pmo.milestones
LIMIT 5;

SELECT m.project_id
FROM pmo.milestones m
LEFT JOIN pmo.projects p
ON m.project_id = p.project_id
WHERE p.project_id IS NULL;