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


/*
Materializations are strategies for persisting dbt models in a warehouse. There are five types of materializations built into dbt. They are:
table
view
incremental
ephemeral
materialized view

By default, dbt models are materialized as "views". Models can be configured with a different materialization by supplying the materialized configuration parameter as shown below


*/
