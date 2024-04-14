INSERT INTO Transmission(
    Transmission
)
Select distinct(t.IDTransmission) from
StgCar t where IDTransmission is not null