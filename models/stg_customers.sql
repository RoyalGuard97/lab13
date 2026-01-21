
with source as (

    select * from {{ ref('raw_customers') }}

),

renamed as (

    select
        id_cliente,
        status_cliente,
        nombre,
        email

    from source

)

select * from renamed
