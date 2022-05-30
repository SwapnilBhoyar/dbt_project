{% macro output_message() %}
    {% set query -%}
        CALL output_message('hello');
        commit;
    {%- endset %}

    {% do run_query(query) %}
{% endmacro %}