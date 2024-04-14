Select count(*)
from  car_dataset_divide1

Select *
from  car_dataset_divide1 t
where t.vin ='3GNAXJEV8KS612718'

Select count(*)
from StgCar


SELECT t.vin, count(t.vin)
FROM StgCar t
GROUP BY t.vin
HAVING COUNT(t.vin) > 1

SELECT COUNT(DISTINCT t.vin) AS unique_count
FROM StgCar t

Select * from
StgCar

Select distinct(t.IDBodyType) from
StgCar t

Select distinct(t.IDCabin) from
StgCar t