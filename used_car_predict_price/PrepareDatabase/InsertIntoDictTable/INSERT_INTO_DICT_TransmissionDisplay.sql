INSERT INTO TransmissionDisplay(
    TransmissionDisplay
)
Select distinct(t.IDTransmissionDisplay) from
StgCar t where IDTransmissionDisplay is not null