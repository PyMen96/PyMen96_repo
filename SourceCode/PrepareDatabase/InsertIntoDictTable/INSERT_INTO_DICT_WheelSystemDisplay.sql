INSERT INTO WheelSystemDisplay(
    WheelSystemDisplay
)
Select distinct(t.IDWheelSystemDisplay) from
StgCar t where IDWheelSystemDisplay is not null