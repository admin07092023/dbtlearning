/* 
Below example is to demonstrate how to create a materialization Table in DBT 
 */
{{
    config(
        materialized='table'
    )
}}
select * 
from analytics.dbt_demo_devschema.customer_model



