INSERT INTO FuelType (
    FuelType
)
Select distinct(t.IDFuelType) from
StgCar t where IDFuelType is not null