{% macro my_message() %}
    {% set query -%}
        CALL output_message();
        commit;
    {%- endset %}

    {% do run_query(query) %}
{% endmacro %}