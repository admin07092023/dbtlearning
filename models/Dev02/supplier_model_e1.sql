/* 
Below example is to demonstrate how to create a ephemeral  in DBT 
 */
{{
    config(
        materialized='ephemeral'
    )
}}

select * 
from analytics.dbt_demo_devschema.supplier_model

/*

ephemeral models are not directly built into the database. Instead, dbt will interpolate the code from this model into dependent models as a common table expression.

Pros:
You can still write reusable logic
Ephemeral models can help keep your data warehouse clean by reducing clutter (also consider splitting your models across multiple schemas by using custom schemas).

Cons:
You cannot select directly from this model.
Operations (e.g. macros called via dbt run-operation cannot ref() ephemeral nodes)
Overuse of ephemeral materialization can also make queries harder to debug.
Advice: Use the ephemeral materialization for:
very light-weight transformations that are early on in your DAG
are only used in one or two downstream models, and
do not need to be queried directly

*/
