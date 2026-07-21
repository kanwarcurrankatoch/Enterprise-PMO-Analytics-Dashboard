CREATE TABLE pmo.vendors (

    vendor_id VARCHAR(20) PRIMARY KEY,
    vendor_name VARCHAR(100),
    vendor_category VARCHAR(50),
    project_id VARCHAR(20),
    contract_value_inr NUMERIC(18,2),
    contract_start_date DATE,
    contract_end_date DATE,
    vendor_manager VARCHAR(100),
    sla_status VARCHAR(20),
    performance_rating NUMERIC(3,1),
    payment_status VARCHAR(20),
    country VARCHAR(50),

    CONSTRAINT fk_vendor_project
    FOREIGN KEY (project_id)
    REFERENCES pmo.projects(project_id)

);

SELECT COUNT(*)
FROM pmo.vendors;

SELECT COUNT(DISTINCT project_id)
FROM pmo.vendors;

SELECT *
FROM pmo.vendors
LIMIT 5;

SELECT v.project_id
FROM pmo.vendors v
LEFT JOIN pmo.projects p
ON v.project_id = p.project_id
WHERE p.project_id IS NULL;