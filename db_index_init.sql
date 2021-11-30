use db_assigment2;

----------------------------------------------------------------
-- Get customer name
create index idx_customer_name
on CUSTOMERS(Fname, Minit, Lname);

-- Get dish name and price
create index idx_dish_info
on DISHES(dish_name, price);

-- Get voucher value
create index idx_voucher_value
on VOUCHERS(voucher_value);
