select 
dteday,
season,
bike_data.yr,
weekday,
hr,
rider_type,
riders,
price,
COGS,
riders*price as revenue,
riders*price-cogs as profit
 from bike_data
left join costs
on bike_data.yr = costs.yr
