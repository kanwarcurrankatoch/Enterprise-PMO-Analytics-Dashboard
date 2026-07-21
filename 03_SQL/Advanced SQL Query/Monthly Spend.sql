SELECT
    fiscal_month,
    ROUND(SUM(actual_spend_inr),2) AS monthly_spend
FROM pmo.financials
GROUP BY fiscal_month
ORDER BY fiscal_month;