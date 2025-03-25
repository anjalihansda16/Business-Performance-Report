-- creating a working table as view for ease of reference
create view working_tb as
select 
	InvoiceNo,
	InvoiceDate,
	CustomerID,
	sum(Quantity*UnitPrice) as reveune
from retail_data
where CustomerID is not null
group by InvoiceNo, InvoiceDate, CustomerID;

select *
from working_tb;


-- finding average customer latency 
with purchase_gaps as
(
select 
	CustomerID,
	InvoiceDate,
	lag(InvoiceDate) over(partition by CustomerID order by InvoiceDate) as previous_purchase_date
from working_tb
)
select 
	avg(datediff(day, previous_purchase_date, InvoiceDate)) as avg_latency_days
from purchase_gaps
where previous_purchase_date is not null;


-- finding % of customers with customer latency less than or equal to average customer latency
with purchase_gaps as
(
select 
	CustomerID,
	InvoiceDate,
	lag(InvoiceDate) over(partition by CustomerID order by InvoiceDate) as previous_purchase_date
from working_tb
)
select 
	cast(count(distinct case when datediff(day, previous_purchase_date, InvoiceDate) <= 40 then CustomerID end) * 100.0 / count(distinct CustomerID) as decimal(10,2)) as pct_of_cust_within_40_days
from purchase_gaps
where previous_purchase_date is not null;



