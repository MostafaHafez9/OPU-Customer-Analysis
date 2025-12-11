--==========================
-- OPU Project (Exploring)
--==========================

-----------
-- EDA
-----------

use online_retail_dataset;

--Explore the duration

select
	min(invoicedate) as first_order,
	max(invoicedate) as last_order
from online_retail;


-- Explore the quantity & price (outliers, ranges, etc)

select
	min(quantity) min_qty,
	max(quantity) max_qty,
	min(price) min_price,
	max(price) max_price
from online_retail;


select top 20
	*
from online_retail
order by quantity asc;


select top 20
	*
from online_retail
order by quantity desc;

select
	*
from online_retail
where quantity < 50;


-- Explore the credit notes

select
	*
from online_retail
where invoice like 'c%';



--explore nulls "in customer id"

select
	*
from online_retail
where Customer_ID is null;


--Explore the normal customers range by quantity

select
	quantity
from online_retail
where Quantity between 0 and  50;



-- Explore duplicates

select
	Invoice,
	StockCode,
	Description,
	Quantity,
	InvoiceDate,
	Price,
	Customer_ID,
	Country,
	count(*) as countrows
from online_retail
group by 
	Invoice,
	StockCode,
	Description,
	Quantity,
	InvoiceDate,
	Price,
	Customer_ID,
	Country
having count(*) > 1
order by countrows desc;


-- Data standardization "country"

select distinct
	country
from online_retail;
