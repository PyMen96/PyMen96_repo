INSERT INTO ListingColor(
    ListingColor
)
Select distinct(t.IDListingColor) from
StgCar t where IDListingColor is not null