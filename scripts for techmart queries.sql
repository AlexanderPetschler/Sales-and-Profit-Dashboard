-- monthly revenue and profit for techmart
SELECT
	DATE_FORMAT(sale_date, '%Y-%m') AS month,
    ROUND(SUM(total_sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit
FROM techmart_db.sales
GROUP BY month
ORDER BY month;

-- annual top 10 best-selling products for techmart
SELECT
	product_name,
    category,
    ROUND(SUM(total_sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    SUM(units_sold) AS total_units
FROM techmart_db.sales
GROUP BY product_name, category
ORDER BY total_revenue DESC
LIMIT 10;

-- annual revenue and profits by category for techmart
SELECT
	category,
    ROUND(SUM(total_sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(total_sales) * 100, 2) AS profit_margin_pct
FROM techmart_db.sales
GROUP BY category
ORDER BY total_revenue DESC;

-- annual regional sales performance for techmart
SELECT
	region,
    ROUND(SUM(total_sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit
FROM techmart_db.sales
GROUP BY region
ORDER BY total_revenue DESC;

-- annual sales by channel (online vs retail vs wholesale) for techmart
SELECT
	channel,
    ROUND(SUM(total_sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(total_sales) * 100, 2) AS profit_margin_pct
FROM techmart_db.sales
GROUP BY channel
ORDER BY  total_revenue DESC;

-- annual discount impact on profit for techmart
SELECT
	CASE
		WHEN discount = 0 THEN 'no discount'
        WHEN discount BETWEEN 0.01 AND 0.10 THEN '0-10%'
        WHEN discount BETWEEN 0.11 AND 0.20 THEN '11-20%'
        ELSE '21%+'
	END AS discount_band,
    ROUND(SUM(total_sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(total_sales) * 100, 2) AS profit_margin_pct
From techmart_db.sales
GROUP BY discount_band
ORDER BY discount_band DESC;

-- top products by profit in each category
SELECT category, product_name, total_profit
FROM (
	SELECT
		category, 
        product_name,
        ROUND(SUM(profit), 2) AS total_profit,
        RANK()OVER(PARTITION BY category ORDER BY SUM(profit) DESC) AS rnk
	FROM techmart_db.sales
    GROUP BY category, product_name
) ranked
Where rnk <= 5
ORDER BY category, total_profit DESC;