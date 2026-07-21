CREATE TABLE pmo.risks (

    risk_id VARCHAR(20) PRIMARY KEY,
    project_id VARCHAR(20),
    risk_name VARCHAR(100),
    risk_description VARCHAR(255),
    category VARCHAR(50),
    probability INTEGER,
    impact INTEGER,
    risk_score INTEGER,
    risk_owner VARCHAR(100),
    status VARCHAR(20),
    mitigation_plan VARCHAR(255),
    target_date DATE,
    created_date DATE,
	closed_date DATE,
    residual_risk VARCHAR(20),

    CONSTRAINT fk_risk_project
    FOREIGN KEY (project_id)
    REFERENCES pmo.projects(project_id)

);

SELECT COUNT(*)
FROM pmo.risks;

SELECT COUNT(DISTINCT project_id)
FROM pmo.risks;

SELECT *
FROM pmo.risks
LIMIT 5;

SELECT r.project_id
FROM pmo.risks r
LEFT JOIN pmo.projects p
ON r.project_id = p.project_id
WHERE p.project_id IS NULL;