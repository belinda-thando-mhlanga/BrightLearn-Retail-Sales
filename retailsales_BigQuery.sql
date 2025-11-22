-- Learning on BigQuery 

SELECT  * FROM `glossy-mason-478118-g6.sales.data` LIMIT 1000;

SELECT Age FROM `glossy-mason-478118-g6.sales.data` ;

SELECT `Product Category` FROM `glossy-mason-478118-g6.sales.data` ;

SELECT DISTINCT `Product Category` FROM `glossy-mason-478118-g6.sales.data` ;

SELECT FORMAT_DATE('%Y-%m', Date) AS year_month,
  COUNT(DISTINCT `Transaction ID`) AS number_of_sales,
  COUNT(DISTINCT `Customer ID`) AS number_of_customers,
  CASE 
    WHEN Age BETWEEN 0 AND 18 THEN '01, 0-18 Junior'
    WHEN Age BETWEEN 19 AND 30 THEN '02, 19-30 Adult'
    WHEN Age BETWEEN 31 AND 50 THEN '03, 31-50 Middle-Aged Adult'
    WHEN Age > 50 THEN '04, 50+ Senior Adult'
  END AS age_bucket,
  SUM(IFNULL(`Total amount`, 0)) AS Revenue,
  SUM(IFNULL(`Quantity`, 0)) AS Quantity
FROM `glossy-mason-478118-g6.sales.data` 
WHERE Gender != 'Female'
GROUP BY ALL;
