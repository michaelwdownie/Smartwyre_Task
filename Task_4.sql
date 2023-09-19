create MATERIALIZED VIEW mv_transactions as
Select id, organization_id from example_4.transactions
order by id ASC;

CREATE INDEX IDX_transactions ON mv_transactions (
   organization_id
);

select distinct organization_id from mv_transactions;

--Depending on the database used you could also create a Unique Index on the MV which would have the same effect but wouldn't require you to query distinct values after creating the view and index