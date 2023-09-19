CREATE INDEX IDX_PUBLISHED_DATE ON example_1.product_prices(product_id,published_date);

SELECT (
    a.name,
    b.product_price,
    MAX(b.published_date)
)
FROM example_1.product_prices b
INNER JOIN example_1.products a on b.id=a.id
WHERE b.published_date <= '2022-06-10' and a.id IN (100,200,300,400)
GROUP BY a.name, b.product_price;