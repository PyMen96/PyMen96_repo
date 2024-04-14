INSERT INTO BodyType (
    BodyType
)
Select distinct(t.IDBodyType) 
	from StgCar t where IDBodyType is not null