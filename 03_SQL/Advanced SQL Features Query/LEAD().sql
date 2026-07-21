SELECT
    fiscal_month,
    actual_spend_inr,
    LEAD(actual_spend_inr)
    OVER(ORDER BY fiscal_month)
    AS next_month
FROM pmo.financials;