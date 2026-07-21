CREATE TABLE pmo.projects (
    project_id VARCHAR(20) PRIMARY KEY,
    project_name VARCHAR(100),
    portfolio VARCHAR(50),
    program VARCHAR(50),
    department VARCHAR(50),
    business_unit VARCHAR(100),
    project_manager VARCHAR(100),
    sponsor VARCHAR(100),
    client VARCHAR(100),
    country VARCHAR(50),
    region VARCHAR(50),
    project_type VARCHAR(50),
    project_size VARCHAR(20),
    methodology VARCHAR(50),
    priority VARCHAR(20),
    status VARCHAR(20),
    health VARCHAR(20),
    start_date DATE,
    end_date DATE,
    go_live_date DATE,
    duration_days INTEGER,
    budget_inr NUMERIC(18,2),
    actual_spend NUMERIC(18,2),
    completion_percent INTEGER,
    phase VARCHAR(50),
    risk_level VARCHAR(20),
    resource_count INTEGER,
    vendor VARCHAR(100),
    technology VARCHAR(100),
    strategic_objective VARCHAR(100));

SELECT * FROM pmo.projects
LIMIT 10; 

SELECT COUNT(*) FROM pmo.projects;