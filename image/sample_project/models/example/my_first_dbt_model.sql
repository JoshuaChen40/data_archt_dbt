
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (

    select null as id, 'system' AS name
    union all
    select 1 as id, 'Josh' AS name
    union all
    select 2 as id, 'Andy' AS name
    union all
    select 3 as id, 'Wiwi' AS name
    union all
    select 4 as id, 'James' AS name
    union all
    select 4 as id, 'Jack' AS name

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
