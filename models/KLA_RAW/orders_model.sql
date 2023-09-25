{{
    config(
        materialized='table'
    )
}}

select * 
from RAW.KLA.ORDERS_DBT

