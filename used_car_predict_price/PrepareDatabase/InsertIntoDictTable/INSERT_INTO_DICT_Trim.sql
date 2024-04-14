INSERT INTO Trim(
    Trim
)
Select distinct(t.IDTrim) from
StgCar t where IDTrim is not null