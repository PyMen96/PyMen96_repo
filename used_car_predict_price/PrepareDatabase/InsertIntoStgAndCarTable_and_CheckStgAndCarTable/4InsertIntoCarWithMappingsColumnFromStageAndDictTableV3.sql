INSERT INTO Car (
    IDBed, IDBodyType, IDCabin, IDFleet, IDFuelType, IDListingColor,
    IDTransmission, IDTransmissionDisplay, IDTrim, IDVehicleDamageCategory,
    IDWheelSystem, IDWheelSystemDisplay, IDSp, Vin, BackLegroom, BedHeight,
    BedLength, City, CityFuelEconomy, CombineFuelEconomy, DaysOnMarket,
    DealerZip, Description, EngineCylinders, EngineDisplacement, EngineType,
    ExteriorColor, FranchiseMake, FrontLegroom, FuelTankVolume, Height,
    HighwayFuelEconomy, Horsepower, InteriorColor, Latitude, Length, ListedDate,
    ListingID, Longitude, MainPictureURL, MajorOptions, MakeName,
    MaximumSeating, Mileage, ModelName, OwnerCount, Power, Price, Salvage,
    SavingsAmount, SellerRating, Torque, WheelBase, Width, Year, HasAccidents,
    isCab, isCertified, isCpo, isNew, isOemcpo, TheftTitle, FrameDamaged,
    FranchiseDealer
)
SELECT
    b.IDBed,
    b2.IDBodyType,
    b3.IDCabin,
    b4.IDFleet,
    b5.IDFuelType,
    b6.IDListingColor,
    b7.IDTransmission,
    b8.IDTransmissionDisplay,
    b9.IDTrim,
    b10.IDVehicleDamageCategory,
    b11.IDWheelSystem,
    b12.IDWheelSystemDisplay,
    b13.IDSp,
    NULLIF(Vin, '') AS Vin,
    NULLIF(BackLegroom, '') AS BackLegroom,
    NULLIF(BedHeight, '') AS BedHeight,
    NULLIF(BedLength, '') AS BedLength,
    NULLIF(City, '') AS City,
    TRY_CAST(NULLIF(CityFuelEconomy, '') AS FLOAT) AS CityFuelEconomy,
    TRY_CAST(NULLIF(CombineFuelEconomy, '') AS FLOAT) AS CombineFuelEconomy,
    TRY_CAST(NULLIF(DaysOnMarket, '') AS INT) AS DaysOnMarket,
    NULLIF(DealerZip, '') AS DealerZip,
    NULLIF(Description, '') AS Description,
    NULLIF(EngineCylinders, '') AS EngineCylinders,
    TRY_CAST(NULLIF(EngineDisplacement, '') AS FLOAT) AS EngineDisplacement,
    NULLIF(EngineType, '') AS EngineType,
    NULLIF(ExteriorColor, '') AS ExteriorColor,
    NULLIF(FranchiseMake, '') AS FranchiseMake,
    NULLIF(FrontLegroom, '') AS FrontLegroom,
    NULLIF(FuelTankVolume, '') AS FuelTankVolume,
    NULLIF(Height, '') AS Height,
    TRY_CAST(NULLIF(HighwayFuelEconomy, '') AS FLOAT) AS HighwayFuelEconomy,
    TRY_CAST(NULLIF(Horsepower, '') AS FLOAT) AS Horsepower,
    NULLIF(InteriorColor, '') AS InteriorColor,
    TRY_CAST(NULLIF(Latitude, '') AS FLOAT) AS Latitude,
    NULLIF(Length, '') AS Length,
    NULLIF(ListedDate, '') AS ListedDate,
    TRY_CAST(NULLIF(ListingID, '') AS INT) AS ListingID,
    TRY_CAST(NULLIF(Longitude, '') AS FLOAT) AS Longitude,
    NULLIF(MainPictureURL, '') AS MainPictureURL,
    NULLIF(MajorOptions, '') AS MajorOptions,
    NULLIF(MakeName, '') AS MakeName,
    NULLIF(MaximumSeating, '') AS MaximumSeating,
    TRY_CAST(NULLIF(Mileage, '') AS FLOAT) AS Mileage,
    NULLIF(ModelName, '') AS ModelName,
    TRY_CAST(NULLIF(OwnerCount, '') AS FLOAT) AS OwnerCount,
    NULLIF(Power, '') AS Power,
    TRY_CAST(NULLIF(Price, '') AS FLOAT) AS Price,
    NULLIF(Salvage, '') AS Salvage,
    TRY_CAST(NULLIF(SavingsAmount, '') AS INT) AS SavingsAmount,
    TRY_CAST(NULLIF(SellerRating, '') AS FLOAT) AS SellerRating,
    NULLIF(Torque, '') AS Torque,
    NULLIF(WheelBase, '') AS WheelBase,
    NULLIF(Width, '') AS Width,
    TRY_CAST(NULLIF(Year, '') AS INT) AS Year,
   CASE WHEN HasAccidents = 'True' THEN 'True' 
         WHEN HasAccidents = 'False' THEN 'False' 
         ELSE NULL 
    END AS HasAccidents,
    CASE WHEN isCab = 'True' THEN 'True' 
         WHEN isCab = 'False' THEN 'False' 
         ELSE NULL 
    END AS isCab,
    CASE WHEN isCertified = 'True' THEN 'True' 
         WHEN isCertified = 'False' THEN 'False' 
         ELSE NULL 
    END AS isCertified,
    CASE WHEN isCpo = 'True' THEN 'True' 
         WHEN isCpo = 'False' THEN 'False' 
         ELSE NULL 
    END AS isCpo,
    CASE WHEN isNew = 'True' THEN 'True' 
         WHEN isNew = 'False' THEN 'False' 
         ELSE NULL 
    END AS isNew,
    CASE WHEN isOemcpo = 'True' THEN 'True' 
         WHEN isOemcpo = 'False' THEN 'False' 
         ELSE NULL 
    END AS isOemcpo,
    CASE WHEN TheftTitle = 'True' THEN 'True' 
         WHEN TheftTitle = 'False' THEN 'False' 
         ELSE NULL 
    END AS TheftTitle,
    CASE WHEN FrameDamaged = 'True' THEN 'True' 
         WHEN FrameDamaged = 'False' THEN 'False' 
         ELSE NULL 
    END AS FrameDamaged,
    CASE WHEN FranchiseDealer = 'True' THEN 'True' 
         WHEN FranchiseDealer = 'False' THEN 'False' 
         ELSE NULL 
    END AS FranchiseDealer
FROM StgCar t
	left join Bed b on t.IDBed = b.Bed
	left join BodyType b2 on t.IDBodyType = b2.BodyType
	left join Cabin b3 on t.IDCabin = b3.Cabin
	left join Fleet b4 on t.IDFleet = b4.Fleet
	left join FuelType b5 on t.IDFuelType = b5.FuelType
	left join ListingColor b6 on t.IDListingColor = b6.ListingColor
	left join Transmission b7 on t.IDTransmission = b7.Transmission
	left join TransmissionDisplay b8 on t.IDTransmissionDisplay = b8.TransmissionDisplay
	left join Trim b9 on t.IDTrim = b9.Trim
	left join VehicleDamageCategory b10 on t.IDVehicleDamageCategory = b10.VehicleDamageCategory
	left join WheelSystem b11 on t.IDWheelSystem = b11.WheelSystem
	left join WheelSystemDisplay b12 on t.IDWheelSystemDisplay = b12.WheelSystemDisplay
	left join Sp b13 on t.IDSp = b13.Sp

