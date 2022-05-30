{{ config(materialized='table', alias='first_model', tags=["nightly", "example"] ) }}

{{get_data()}}