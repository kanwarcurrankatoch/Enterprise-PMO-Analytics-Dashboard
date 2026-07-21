CREATE TABLE pmo.resources (
    resource_id VARCHAR(20) PRIMARY KEY,
    resource_name VARCHAR(100),
    designation VARCHAR(50),
    department VARCHAR(50),
    project_id VARCHAR(20),
    allocation_percent INTEGER,
    billable VARCHAR(10),
    employee_type VARCHAR(20),
    joining_date DATE,
    experience_years INTEGER,
    primary_skill VARCHAR(50),
    secondary_skill VARCHAR(50),
    certification VARCHAR(50),
    location VARCHAR(50),
    manager VARCHAR(100),
    hourly_rate_inr NUMERIC(18,2),
    monthly_cost_inr NUMERIC(18,2),
    utilization_percent INTEGER,
    resource_status VARCHAR(20),

    CONSTRAINT fk_resource_project
    FOREIGN KEY (project_id)
    REFERENCES pmo.projects(project_id)
);