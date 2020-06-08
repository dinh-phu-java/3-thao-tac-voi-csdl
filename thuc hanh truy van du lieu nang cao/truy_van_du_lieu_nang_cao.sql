use codegym_car;

select product_code, product_name, buy_price , warehouse_quantity
from product
where buy_price > 56.76 and warehouse_quantity > 10;

select pro.product_code,pro.product_name,pro.buy_price,pl.description
from product as pro inner join product_line as pl
on pro.product_line_id = pl.product_line_id
where pro.buy_price > 56.76 and buy_price < 95.50;

select product_code, product_name,buy_price, warehouse_quantity, vendor, product_line_id
from product
where vendor = 'Min La' or vendor= 'vin';


