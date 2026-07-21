CREATE TABLE pmo.benefits (
    benefit_id VARCHAR(20) PRIMARY KEY,
    project_id VARCHAR(20),
    benefit_name VARCHAR(100),
    benefit_category VARCHAR(50),
    expected_benefit_inr NUMERIC(18,2),
    realized_benefit_inr NUMERIC(18,2),
    benefit_owner VARCHAR(100),
    measurement_type VARCHAR(20),
    target_date DATE,
    status VARCHAR(20),

    CONSTRAINT fk_benefit_project
    FOREIGN KEY (project_id)
    REFERENCES pmo.projects(project_id)
);

SELECT COUNT(*) FROM pmo.benefits;

SELECT COUNT(DISTINCT project_id)
FROM pmo.benefits;

SELECT *
FROM pmo.benefits
LIMIT 5;

SELECT b.project_id
FROM pmo.benefits b
LEFT JOIN pmo.projects p
ON b.project_id = p.project_id
WHERE p.project_id IS NULL;