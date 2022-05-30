{{ config(materialized='table', alias='first_model', tags=["nightly", "example"] ) }}

CREATE or replace procedure output_message()
language sql
as
begin
  select * from FROM "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER"
end;

call output_message();