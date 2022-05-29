
{{ config(materialized='table', alias='first_model', tags=["nightly", "example"] ) }}

with source_data as (

    select * from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER"
)

select *
from source_data
