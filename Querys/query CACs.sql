SELECT
    spend / NULLIF(total_conversions, 0) AS CAC
FROM (
    SELECT 
        SUM(spend) AS spend,
        SUM(conversions) AS total_conversions
    FROM ads_spend
) AS sub;
