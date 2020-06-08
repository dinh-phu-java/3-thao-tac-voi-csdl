use classicmodels;

select status,count(*),sum(customerNumber-15)
from orders
group by status
;

select year(orderDate) as year, sum(quantityOrdered * priceEach) as total
from orders od inner join orderdetails odt on od.orderNumber = odt.orderNumber
where /*status= 'shipped'*/ 1=1
group by year
# having year > 2013
;
