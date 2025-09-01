SELECT
    CASE
        WHEN spend = 0 THEN NULL
        ELSE (conversions * 100) / spend
    END AS ROAS
FROM (
    SELECT
        SUM(spend) AS spend,
        SUM(conversions) AS conversions
    FROM ads_spend
) AS sub;
