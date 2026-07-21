CREATE TABLE pmo.issues (

    issue_id VARCHAR(20) PRIMARY KEY,
    project_id VARCHAR(20),
    issue_name VARCHAR(100),
    issue_description VARCHAR(255),
    category VARCHAR(50),
    severity VARCHAR(20),
    priority VARCHAR(20),
    issue_owner VARCHAR(100),
    status VARCHAR(20),
    raised_date DATE,
    due_date DATE,
    closed_date DATE,
    resolution VARCHAR(255),

    CONSTRAINT fk_issue_project
    FOREIGN KEY (project_id)
    REFERENCES pmo.projects(project_id)

);

SELECT COUNT(*)
FROM pmo.issues;

SELECT COUNT(DISTINCT project_id)
FROM pmo.issues;

SELECT *
FROM pmo.issues
LIMIT 5;

SELECT i.project_id
FROM pmo.issues i
LEFT JOIN pmo.projects p
ON i.project_id = p.project_id
WHERE p.project_id IS NULL;