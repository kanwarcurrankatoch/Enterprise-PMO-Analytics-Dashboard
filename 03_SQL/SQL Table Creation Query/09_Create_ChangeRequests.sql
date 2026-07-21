CREATE TABLE pmo.change_requests (

    change_id VARCHAR(20) PRIMARY KEY,
    project_id VARCHAR(20),
    change_title VARCHAR(100),
    change_description VARCHAR(255),
    change_category VARCHAR(50),
    requested_by VARCHAR(100),
    change_date DATE,
    approval_status VARCHAR(20),
    impact_on_cost_inr NUMERIC(18,2),
    impact_on_schedule_days INTEGER,
    priority VARCHAR(20),
    approver VARCHAR(100),
    implementation_date DATE,
    status VARCHAR(20),

    CONSTRAINT fk_change_project
    FOREIGN KEY (project_id)
    REFERENCES pmo.projects(project_id)

);

SELECT COUNT(*)
FROM pmo.change_requests;

SELECT COUNT(DISTINCT project_id)
FROM pmo.change_requests;

SELECT *
FROM pmo.change_requests
LIMIT 5;

SELECT c.project_id
FROM pmo.change_requests c
LEFT JOIN pmo.projects p
ON c.project_id = p.project_id
WHERE p.project_id IS NULL;