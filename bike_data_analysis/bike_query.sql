with total_data as (
select * from bike_share_yr_0
union
select * from bike_share_yr_1)

ALTER TABLE total_data
ALTER COLUMN COGS FLOAT;
select 
dteday,
season,
total_data.yr,
weekday,
hr,
rider_type,
riders,
price,
COGS,
riders*price as revenue,
riders*price - COGS as profit
from total_data
left join cost_table
on total_data.yr=cost_table.yr


