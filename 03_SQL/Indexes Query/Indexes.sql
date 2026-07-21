-- =====================================================
-- PMO Analytics Database - Indexes
-- =====================================================

-- Projects
CREATE INDEX idx_projects_status
ON pmo.projects(status);

CREATE INDEX idx_projects_department
ON pmo.projects(department);

CREATE INDEX idx_projects_portfolio
ON pmo.projects(portfolio);

CREATE INDEX idx_projects_project_manager
ON pmo.projects(project_manager);

CREATE INDEX idx_projects_country
ON pmo.projects(country);

-- Resources
CREATE INDEX idx_resources_project_id
ON pmo.resources(project_id);

CREATE INDEX idx_resources_department
ON pmo.resources(department);

CREATE INDEX idx_resources_resource_status
ON pmo.resources(resource_status);

-- Financials
CREATE INDEX idx_financials_project_id
ON pmo.financials(project_id);

CREATE INDEX idx_financials_fiscal_year
ON pmo.financials(fiscal_year);

CREATE INDEX idx_financials_fiscal_month
ON pmo.financials(fiscal_month);

-- Benefits
CREATE INDEX idx_benefits_project_id
ON pmo.benefits(project_id);

CREATE INDEX idx_benefits_status
ON pmo.benefits(status);

-- Vendors
CREATE INDEX idx_vendors_project_id
ON pmo.vendors(project_id);

CREATE INDEX idx_vendors_country
ON pmo.vendors(country);

CREATE INDEX idx_vendors_sla_status
ON pmo.vendors(sla_status);

-- Risks
CREATE INDEX idx_risks_project_id
ON pmo.risks(project_id);

CREATE INDEX idx_risks_status
ON pmo.risks(status);

CREATE INDEX idx_risks_risk_score
ON pmo.risks(risk_score);

-- Issues
CREATE INDEX idx_issues_project_id
ON pmo.issues(project_id);

CREATE INDEX idx_issues_status
ON pmo.issues(status);

CREATE INDEX idx_issues_priority
ON pmo.issues(priority);

-- Milestones
CREATE INDEX idx_milestones_project_id
ON pmo.milestones(project_id);

CREATE INDEX idx_milestones_status
ON pmo.milestones(status);

-- Change Requests
CREATE INDEX idx_change_requests_project_id
ON pmo.change_requests(project_id);

CREATE INDEX idx_change_requests_status
ON pmo.change_requests(status);

CREATE INDEX idx_change_requests_approval_status
ON pmo.change_requests(approval_status);






SELECT
schemaname,
tablename,
indexname
FROM pg_indexes
WHERE schemaname='pmo'
ORDER BY tablename, indexname;

