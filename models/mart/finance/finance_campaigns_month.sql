SELECT*,
FORMAT_DATE('%Y-%m', date_date) AS year_month,
FROM {{ ref('finance_campaigns_day') }}