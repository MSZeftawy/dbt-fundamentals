with payments as (
    select id as payment_id,
orderid as order_id,
paymentmethod,
status,
{{ cents_to_dollars('amount', 3) }} as amount,
created as created_at

from {{source('stripe','payment')}}
)

select * from payments