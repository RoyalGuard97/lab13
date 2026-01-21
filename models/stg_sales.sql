
with source as (

    select * from {{ ref('raw_sales') }}

),

renamed as (

    select
        id_transaccion,
        id_cliente,
        monto,
        fecha

    from source

)

select * from renamed
