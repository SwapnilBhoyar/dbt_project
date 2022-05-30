{% macro output_message() %}
    {% set query -%}
        CALL output_message(
          message varchar);
        commit;
    {%- endset %}

    {% do run_query(query) %}
{% endmacro %}