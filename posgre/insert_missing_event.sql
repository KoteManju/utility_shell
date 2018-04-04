
-- Insert missing events into an ordered sequence of event records in PosgreSQL

  
-- V1 



WITH triple AS (
        SELECT vin, category
        , LAG(category,2) OVER www AS must_be_a
        , LAG(category,1) OVER www AS must_be_c
        , LAG(date,1) OVER www AS c_timestamp
        , LAG(category,0) OVER www AS must_be_d
        FROM abcd_dev
                WINDOW www AS (PARTITION BY vin ORDER BY date)
        )
INSERT INTO abcd_dev ( date , category , vin )
SELECT t.c_timestamp, 'out_of_service', t.vin
FROM triple t
WHERE t.must_be_a = 'End booking'
AND t.must_be_c = 'Return to Service'
AND t.must_be_d = 'Create booking'




-- V2 
INSERT INTO abcd_dev (out_of_service, return_service, vin,date,TIME,category)
SELECT c.out_of_service,
       c.return_service,
       c.vin,
       c.date,
       c.time,
       'out_of_service'
FROM abcd_dev c
JOIN abcd_dev a ON a.vin = c.vin
AND a.date < c.date
AND a.time < c.time
AND NOT EXISTS
  (SELECT *
   FROM abcd_dev x
   WHERE x.vin = a.vin
     AND x.date >= a.date
     AND x.date <= c.date
     AND x.time >= a.time
     AND x.time <= c.time )
JOIN abcd_dev d ON d.vin = c.vin
AND d.date > c.date
AND d.time > c.time
AND NOT EXISTS
  (SELECT *
   FROM abcd_dev x
   WHERE x.vin = d.vin
     AND x.date >= c.date
     AND x.date <= d.date
     AND x.time >= c.time
     AND x.time <=  d.time )
WHERE c.category = 'Return to Service' ;
