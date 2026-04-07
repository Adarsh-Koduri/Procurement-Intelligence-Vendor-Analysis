-- Overview;
select *
from procurement_cleaned pc ;

-- Count rows in Dataset;
select count(*) as total_rows
from procurement_cleaned pc ;

-- Distinct Suppliers;
select distinct Supplier
from procurement_cleaned pc 
order by supplier;

-- Top vendors by spend;
select
		Supplier,
		round(sum(Total_Cost),2) as total_spend,
		count(PO_ID) as total_orders,
		sum(Quantity) as total_quantity,
		round(avg(total_cost),2) as avg_order_value
from procurement_cleaned pc 
group by pc.Supplier 
order by total_spend desc;

-- Worst vendors by defect rate;
select
		Supplier,
		round(avg(Defect_Rate),2) as avg_defect_rate
from procurement_cleaned pc 
group by pc.Supplier 
order by avg_defect_rate desc;

-- Worst vendors by defect rate in depth mode;
select 
		Supplier,
		round(avg(Defect_Rate),2)*100 as defect_rate_percentage,
		sum(Defective_Units) as total_defective_units,
		sum(Quantity) as total_units_ordered,
		count(PO_ID) as total_orders
from procurement_cleaned pc 
group by pc.Supplier 
order by defect_rate_percentage ,total_defective_units ;

-- Best Negotiators;
select 
		Supplier,
		round(avg(Negotiation_Savings),2) as avg_savings_per_unit
from procurement_cleaned pc 
group by pc.Supplier 
order by avg_savings_per_unit desc ;

-- Real Savings Impact;
select
		Supplier,
		round(avg(Negotiation_Savings),2) as avg_savings_per_unit,
		round(sum(Negotiation_Savings * Quantity),2) as total_savings
from procurement_cleaned pc 
group by pc.Supplier
order by total_savings desc;

-- Compliance violators;
select
		Supplier,
		count(PO_ID) as total_orders,
		sum(case when Compliance_Status = 'Non-Compliant' then 1 else 0 end) as Non_Compliant_Orders
from procurement_cleaned pc 
group by pc.Supplier 
order by non_compliant_orders desc; 

-- Compliance %;
select
		Supplier,
		count(PO_ID) as total_orders,
		sum(case when Compliance_Status = 'Non-Compliant' then 1 else 0 end) as Non_Compliant_Orders,
		round(sum(case when Compliance_Status = 'Non-Compliant' then 1 else 0 end)/count(*)*100,2) as Non_Compliance_Percentage
from procurement_cleaned pc 
group by pc.Supplier 
order by non_compliance_percentage  desc;

-- Cost and Quality vendors;
select
		Supplier,
		round(sum(Total_Cost),2) as total_spend,
		round(avg(Defect_Rate)*100,2) as avg_defect_percentage
from procurement_cleaned pc 
group by pc.Supplier 
order by avg_defect_percentage desc;
		

		


