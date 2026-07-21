CREATE OR REPLACE VIEW pmo.vw_vendor_summary AS
SELECT
    project_id,
    COUNT(*) AS total_vendors,
    SUM(contract_value_inr) AS vendor_cost
FROM pmo.vendors
GROUP BY project_id;

SELECT * FROM pmo.vw_vendor_summary;