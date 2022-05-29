
{{ config(materialized='table', alias='first_model', tags=["nightly", "example"] ) }}

execute immediate $$
    declare
        res resultset;
        col_name varchar;
        select_statement varchar;
    begin
        col_name := 'C_NAME';
        select_statement:= 'SELECT' || col_name || 'FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER';
        res := (execute immediate : select_statement);
        return table(res);
    end;
$$;

 