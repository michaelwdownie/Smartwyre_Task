create index IDX_trans on example_2.transactions(id, product_id, transaction_type, unit_of_measure);

select (
    id, 
    product_id, 
    transaction_type, 
    unit_of_measure
)
FROM example_2.transactions
WHERE
product_id = 50
and ship_date BETWEEN '2022-06-01' and '2022-06-30';