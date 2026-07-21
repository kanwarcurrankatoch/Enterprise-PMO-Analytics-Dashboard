SELECT
project_id,
project_name,
start_date
FROM pmo.projects
WHERE EXTRACT(YEAR FROM start_date)=2025;