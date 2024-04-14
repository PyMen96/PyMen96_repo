INSERT INTO Fleet (
    Fleet
)
Select distinct(t.IDFleet) from
StgCar t where IDFleet is not null