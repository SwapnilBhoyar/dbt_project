{{ config(materialized='table', alias='first_model', tags=["nightly", "example"] ) }}

CREATE procedure output_message()
as
begin
  select * from FROM "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER"
end;

call output_message();