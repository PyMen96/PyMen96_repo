INSERT INTO WheelSystem(
    WheelSystem
)
Select distinct(t.IDWheelSystem) from
StgCar t where IDWheelSystem is not null