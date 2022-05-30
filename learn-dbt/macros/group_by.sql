{% macro get_data() %}
  select C_NAME from "FROM SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER"
{% endmacro %}
