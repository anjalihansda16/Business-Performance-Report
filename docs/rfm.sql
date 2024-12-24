-- RFM Analysis
---Preparing data for rfm analysis
--1. recency: InvoiceDate
--2. frequency: Number of InvoiceId
--3. monetary value: Money Spent 




select 
	CustomerID,
	(select max(InvoiceDate) from retail_data) as last_order,
	max(InvoiceDate) as last_purchase,
	datediff(dd,max(InvoiceDate), (select max(InvoiceDate) from retail_data)) as recency,
	count(InvoiceNo) as purchase_frequency,
	round(sum(UnitPrice*Quantity), 2) as total_money_spent
from retail_data
where CustomerID is not null
group by CustomerID
order by sum(UnitPrice*Quantity) desc, count(InvoiceNo) desc, max(InvoiceDate) asc



drop table if exists #rfm;

with rfm as
(
select 
	CustomerID,
	datediff(dd,max(InvoiceDate), (select max(InvoiceDate) from retail_data)) as purchase_recency,
	count(InvoiceNo) as purchase_frequency,
	round(sum(UnitPrice*Quantity), 2) as total_money_spent
from retail_data
where CustomerID is not null
group by CustomerID
),
rfm_calc as
(
select *,
	ntile(4) over(order by purchase_recency desc) rfm_recency,
	ntile(4) over(order by purchase_frequency) rfm_frequency,
	ntile(4) over(order by total_money_spent) rfm_monetary_value
from rfm
)
select *,
	rfm_recency+rfm_frequency+rfm_monetary_value as rfm_cell,
	cast(rfm_recency as varchar)+cast(rfm_frequency as varchar)+cast(rfm_monetary_value as varchar) as rfm_score
into #rfm
from rfm_calc



select *
from #rfm

drop table if exists customer_segmentation;

select 
  CustomerID, 
  purchase_recency,
  purchase_frequency,
  total_money_spent,
  rfm_score,
  case
      when rfm_score in (444,434) then 'Best Customers'
      when rfm_score in (442,441,443,431,432,433,342,341,343,331,332,333,334,344,323) then 'Loyal Customer'
      when rfm_score in (144,143,134,133,214,213,114,113) then 'Lost Best Cutomers'
      when rfm_score in (121,122,123,124,134,132,133,131,211,212,112,111,221,222) then 'Lost Cheap Customers'
      when rfm_score in (412,411,413,414,423,424,421,422,311,313,314,312) then 'Potential To Become Loyal Customer'
      when rfm_score in (221, 222, 223, 231, 232, 233, 241, 242, 243) then 'Look Out Buyers' 
      when rfm_score in (212, 213, 214, 312, 313, 321) then 'Occasional Buyers'
      when rfm_score in (224, 234, 324, 334, 244, 314, 322) then 'Big Spenders'
      else 'Customer'
  end as rfm_segment 
into customer_segmentation
from #rfm;


select *
from customer_segmentation



