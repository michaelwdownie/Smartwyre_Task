create index IDX_PRODUCT on example_3.products (unit_of_measure);

create index IDX_PRODUCT_PRICE on example_3.product_prices (unit_of_measure);

create view VW_VALID_PRICE as
SELECT
    a.id,
    a.name,
    b.product_id,
    b.product_price,
    b.published_date

FROM example_3.products a FULL JOIN example_3.product_prices b on a.id=b.id
where a.unit_of_measure = b.unit_of_measure;