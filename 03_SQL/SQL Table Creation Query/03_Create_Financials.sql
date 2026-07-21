CREATE TABLE pmo.financials (
    financial_id VARCHAR(20) PRIMARY KEY,
    project_id VARCHAR(20),
    fiscal_year INTEGER,
    fiscal_month VARCHAR(20),
    budget_inr NUMERIC(18,2),
    forecast_inr NUMERIC(18,2),
    actual_spend_inr NUMERIC(18,2),
    capital_expense_inr NUMERIC(18,2),
    operational_expense_inr NUMERIC(18,2),
    planned_revenue_inr NUMERIC(18,2),
    actual_revenue_inr NUMERIC(18,2),
    variance_inr NUMERIC(18,2),
    cost_status VARCHAR(20),
    finance_manager VARCHAR(100),

    CONSTRAINT fk_financial_project
    FOREIGN KEY (project_id)
    REFERENCES pmo.projects(project_id)
);

SELECT COUNT(*) FROM pmo.financials;
SELECT COUNT(DISTINCT project_id)
FROM pmo.financials;