{{ config(materialized='view') }}

select * from {{ source('TARGET', 'TEMP1') }}