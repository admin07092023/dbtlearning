{{
    config(
        materialized='table'
    )
}}

select * 
from RAW.KLA.CUSTOMERS_DBT