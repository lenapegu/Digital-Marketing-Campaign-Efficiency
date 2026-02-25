
-- 1. Data Validation

-- Check for NULL values
SELECT *
FROM marketing_clean
WHERE spend IS NULL 
   OR revenue IS NULL 
   OR customers IS NULL;

-- Check for negative values
SELECT *
FROM marketing_clean
WHERE spend < 0 
   OR revenue < 0 
   OR customers < 0;

-- Check date range
SELECT 
    MIN(date) AS min_date,
    MAX(date) AS max_date
FROM marketing_clean;


-- 2. Channel-Level Performance

-- ROAS by Channel
SELECT
    channel,
    ROUND(SUM(revenue) / NULLIF(SUM(spend), 0), 2) AS roas
FROM marketing_clean
GROUP BY channel
ORDER BY roas DESC;

-- CAC by Channel
SELECT
    channel,
    ROUND(SUM(spend) / NULLIF(SUM(customers), 0), 2) AS cac
FROM marketing_clean
GROUP BY channel
ORDER BY cac ASC;


-- 3. Campaign-Level Performance

SELECT
    campaign,
    SUM(spend) AS total_spend,
    SUM(revenue) AS total_revenue,
    ROUND(SUM(revenue) / NULLIF(SUM(spend), 0), 2) AS roas
FROM marketing_clean
GROUP BY campaign
ORDER BY total_spend DESC;


-- 4. Create The View for Tableau

CREATE VIEW marketing_metrics AS
SELECT
    date,
    channel,
    campaign,
    SUM(spend) AS spend,
    SUM(revenue) AS revenue,
    SUM(customers) AS customers,
    ROUND(SUM(revenue) / NULLIF(SUM(spend), 0), 2) AS roas,
    ROUND(SUM(spend) / NULLIF(SUM(customers), 0), 2) AS cac
FROM marketing_clean
GROUP BY date, channel, campaign;

