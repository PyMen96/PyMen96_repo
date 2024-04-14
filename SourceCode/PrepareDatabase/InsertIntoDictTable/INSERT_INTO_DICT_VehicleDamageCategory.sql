INSERT INTO VehicleDamageCategory(
    VehicleDamageCategory
)
Select distinct(t.IDVehicleDamageCategory) from
StgCar t where IDVehicleDamageCategory is not null