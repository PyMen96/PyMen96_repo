INSERT INTO Bed (
    Bed
)
SELECT distinct(t.IDBed) 
	from StgCar t where IDBed is not null


