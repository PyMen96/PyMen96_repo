INSERT INTO Cabin (
    Cabin
)
Select distinct(t.IDCabin) 
from StgCar t where IDCabin is not null