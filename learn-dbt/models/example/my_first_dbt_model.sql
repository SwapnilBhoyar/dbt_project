begin
    col_name := 'C_NAME';
    select_statement:= 'SELECT' || col_name || 'FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER';
    res := (execute immediate : select_statement);
    return table(res);
end;


  