{{ config(materialized='table', alias='first_model', tags=["nightly", "example"], post_hook=output_message(msg) ) }}
 