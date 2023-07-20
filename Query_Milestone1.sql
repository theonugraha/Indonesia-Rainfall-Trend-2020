SELECT
t1.date,
t1.Tn,
t1.Tx,
t1.Tavg,
t1.RH_avg,
t1.RR,
t1.ss,
t1.ff_x,
t1.ddd_x,
t1.ff_avg,
t1.ddd_car,
t1.station_id,
t2.station_name,
t2.region_id,
t2.region_name,
t2.latitude,
t2.longitude,
t2.province_id,
t3.province_name
FROM hacktiv8.climate_data t1
JOIN hacktiv8.station_detail t2 ON t1.station_id = t2.station_id
JOIN hacktiv8.province_detail t3 ON t2.province_id = t3.province_id
WHERE t1.date BETWEEN '01-01-2020' AND '31-12-2020'
ORDER BY date;