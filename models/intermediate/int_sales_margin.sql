SELECT *, quantity * purchase_price as purchase_cost
 FROM {{ ref('stg_raw__sales') }} 
Left JOIN {{ ref('stg_raw__product') }}
USING (products_id)