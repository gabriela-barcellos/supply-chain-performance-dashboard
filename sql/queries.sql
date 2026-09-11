-- Total Revenue by Product Type

SELECT
    product_type,
    SUM(revenue_generated) AS total_revenue
FROM supply_chain
GROUP BY product_type
ORDER BY total_revenue DESC;

-- Total products sold by product type

SELECT
    product_type,
    SUM(products_sold) AS total_products_sold
FROM supply_chain
GROUP BY product_type
ORDER BY total_products_sold DESC;

-- Average product price by product type

SELECT
    product_type,
    ROUND(AVG(price), 2) AS average_price
FROM supply_chain
GROUP BY product_type
ORDER BY average_price DESC;

-- Average manufacturing cost by product type

SELECT
    product_type,
    ROUND(AVG(manufacturing_costs), 2) AS average_manufacturing_cost
FROM supply_chain
GROUP BY product_type
ORDER BY average_manufacturing_cost DESC;

-- Average stock level by product type

SELECT
    product_type,
    ROUND(AVG(stock_levels), 2) AS average_stock_level
FROM supply_chain
GROUP BY product_type
ORDER BY average_stock_level DESC;

-- Average lead time by product type

SELECT
    product_type,
    ROUND(AVG(lead_times), 2) AS average_lead_time
FROM supply_chain
GROUP BY product_type
ORDER BY average_lead_time DESC;

-- Total revenue by supplier

SELECT
    supplier_name,
    ROUND(SUM(revenue_generated), 2) AS total_revenue
FROM supply_chain
GROUP BY supplier_name
ORDER BY total_revenue DESC;

-- Average defect rate by supplier

SELECT
    supplier_name,
    ROUND(AVG(defect_rates), 4) AS average_defect_rate
FROM supply_chain
GROUP BY supplier_name
ORDER BY average_defect_rate DESC;

-- Average shipping cost by carrier

SELECT
    shipping_carriers,
    ROUND(AVG(shipping_costs), 2) AS average_shipping_cost
FROM supply_chain
GROUP BY shipping_carriers
ORDER BY average_shipping_cost DESC;

-- Average manufacturing cost by supplier

SELECT
    supplier_name,
    ROUND(AVG(manufacturing_costs), 2) AS average_manufacturing_cost
FROM supply_chain
GROUP BY supplier_name
ORDER BY average_manufacturing_cost DESC;

-- Average revenue by supplier

SELECT
    supplier_name,
    ROUND(AVG(revenue_generated), 2) AS average_revenue
FROM supply_chain
GROUP BY supplier_name
ORDER BY average_revenue DESC;

-- Average products sold by supplier

SELECT
    supplier_name,
    ROUND(AVG(products_sold), 2) AS average_products_sold
FROM supply_chain
GROUP BY supplier_name
ORDER BY average_products_sold DESC;

-- Average stock level by supplier

SELECT
    supplier_name,
    ROUND(AVG(stock_levels), 2) AS average_stock_level
FROM supply_chain
GROUP BY supplier_name
ORDER BY average_stock_level DESC;

-- Average lead time by supplier

SELECT
    supplier_name,
    ROUND(AVG(lead_times), 2) AS average_lead_time
FROM supply_chain
GROUP BY supplier_name
ORDER BY average_lead_time DESC;

-- Average order quantity by supplier

SELECT
    supplier_name,
    ROUND(AVG(order_quantities), 2) AS average_order_quantity
FROM supply_chain
GROUP BY supplier_name
ORDER BY average_order_quantity DESC;

-- Total revenue by customer demographics

SELECT
    customer_demographics,
    ROUND(SUM(revenue_generated), 2) AS total_revenue
FROM supply_chain
GROUP BY customer_demographics
ORDER BY total_revenue DESC;

-- Total products sold by customer demographics

SELECT
    customer_demographics,
    SUM(products_sold) AS total_products_sold
FROM supply_chain
GROUP BY customer_demographics
ORDER BY total_products_sold DESC;

-- Average product price by customer demographics

SELECT
    customer_demographics,
    ROUND(AVG(price), 2) AS average_price
FROM supply_chain
GROUP BY customer_demographics
ORDER BY average_price DESC;

-- Average manufacturing cost by customer demographics

SELECT
    customer_demographics,
    ROUND(AVG(manufacturing_costs), 2) AS average_manufacturing_cost
FROM supply_chain
GROUP BY customer_demographics
ORDER BY average_manufacturing_cost DESC;

-- Average stock level by customer demographics

SELECT
    customer_demographics,
    ROUND(AVG(stock_levels), 2) AS average_stock_level
FROM supply_chain
GROUP BY customer_demographics
ORDER BY average_stock_level DESC;

-- Average lead time by customer demographics

SELECT
    customer_demographics,
    ROUND(AVG(lead_times), 2) AS average_lead_time
FROM supply_chain
GROUP BY customer_demographics
ORDER BY average_lead_time DESC;

-- Average order quantity by customer demographics

SELECT
    customer_demographics,
    ROUND(AVG(order_quantities), 2) AS average_order_quantity
FROM supply_chain
GROUP BY customer_demographics
ORDER BY average_order_quantity DESC;

-- Revenue by customer demographics and product type

SELECT
    customer_demographics,
    product_type,
    ROUND(SUM(revenue_generated), 2) AS total_revenue
FROM supply_chain
GROUP BY customer_demographics, product_type
ORDER BY customer_demographics, total_revenue DESC;

-- Products sold by customer demographics and product type

SELECT
    customer_demographics,
    product_type,
    SUM(products_sold) AS total_products_sold
FROM supply_chain
GROUP BY customer_demographics, product_type
ORDER BY customer_demographics, total_products_sold DESC;

-- Average price by customer demographics and product type

SELECT
    customer_demographics,
    product_type,
    ROUND(AVG(price), 2) AS average_price
FROM supply_chain
GROUP BY customer_demographics, product_type
ORDER BY customer_demographics, average_price DESC;

-- Revenue by shipping carrier and product type

SELECT
    shipping_carriers,
    product_type,
    ROUND(SUM(revenue_generated), 2) AS total_revenue
FROM supply_chain
GROUP BY shipping_carriers, product_type
ORDER BY shipping_carriers, total_revenue DESC;

-- Average shipping cost by product type

SELECT
    product_type,
    ROUND(AVG(shipping_costs), 2) AS average_shipping_cost
FROM supply_chain
GROUP BY product_type
ORDER BY average_shipping_cost DESC;

-- Average defect rate by product type

SELECT
    product_type,
    ROUND(AVG(defect_rates), 4) AS average_defect_rate
FROM supply_chain
GROUP BY product_type
ORDER BY average_defect_rate DESC;