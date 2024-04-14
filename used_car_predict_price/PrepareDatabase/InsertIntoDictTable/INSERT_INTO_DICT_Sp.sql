INSERT INTO Sp (
    Sp
)
Select distinct(t.IDSp) from
StgCar t where IDSp is not null