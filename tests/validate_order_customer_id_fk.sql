with 

customer as (
    select customer_id from {{ ref('stg_customers') }}
)

select * from stg_orders
 where customer_id not in (select customer_id from  customer)



-- Add a relationships test to your stg_orders model for the customer_id in stg_customers.
