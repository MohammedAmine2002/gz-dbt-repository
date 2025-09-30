select  campaign_name,key,date_date,sum(ads_cost)as ads_cost
,sum(impression)as imression,
sum(click) as click
 from {{ ref('int_campaigns') }} 
group by campaign_key,date_date
order by date_date desc