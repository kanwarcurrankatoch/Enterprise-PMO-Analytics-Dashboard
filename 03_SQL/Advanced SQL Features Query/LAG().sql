SELECT
    fiscal_month,
    actual_spend_inr,
    LAG(actual_spend_inr)
    OVER(ORDER BY fiscal_month)
    AS previous_month
FROM pmo.financials;