SELECT
    fiscal_month,
    actual_spend_inr,
    SUM(actual_spend_inr)
    OVER(ORDER BY fiscal_month)
    AS running_total
FROM pmo.financials;