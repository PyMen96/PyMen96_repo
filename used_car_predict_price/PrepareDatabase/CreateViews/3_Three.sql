CREATE OR ALTER VIEW Three  AS
SELECT RowNumber, IDCar, Bed, BodyType, Cabin, Fleet, FuelType, ListingColor, Transmission, TransmissionDisplay, Trim, VehicleDamageCategory,
       WheelSystem, WheelSystemDisplay, Sp, Vin, BackLegroom, BedLength, BedHeight, City, CityFuelEconomy, CombineFuelEconomy, DaysOnMarket,
       DealerZip, Description, EngineCylinders, EngineDisplacement, EngineType, ExteriorColor, FranchiseMake, FrontLegroom,
       FuelTankVolume, Height, HighwayFuelEconomy, Horsepower, InteriorColor, Latitude, Length, ListedDate, ListingID, Longitude,
       MainPictureURL, MajorOptions, MakeName, MaximumSeating, Mileage, ModelName, OwnerCount, Power, Price, Salvage, SavingsAmount,
       SellerRating, Torque, WheelBase, Width, Year, HasAccidents, isCab, isCertified, isCpo, isNew, isOemcpo, TheftTitle,
       FrameDamaged, FranchiseDealer
FROM (
    SELECT ROW_NUMBER() OVER (ORDER BY t.IDCar) AS RowNumber, t.IDCar, b.Bed, bd.BodyType, c.Cabin, f.Fleet, ft.FuelType,
           lc.ListingColor, tr.Transmission, trd.TransmissionDisplay, tri.Trim, veh.VehicleDamageCategory, wh.WheelSystem,
           whd.WheelSystemDisplay, sp.Sp, t.Vin, t.BackLegroom, t.BedLength, t.BedHeight, t.City, t.CityFuelEconomy, t.CombineFuelEconomy,
           t.DaysOnMarket, t.DealerZip, t.Description, t.EngineCylinders, t.EngineDisplacement, t.EngineType, t.ExteriorColor,
           t.FranchiseMake, t.FrontLegroom, t.FuelTankVolume, t.Height, t.HighwayFuelEconomy, t.Horsepower, t.InteriorColor,
           t.Latitude, t.Length, t.ListedDate, t.ListingID, t.Longitude, t.MainPictureURL, t.MajorOptions, t.MakeName,
           t.MaximumSeating, t.Mileage, t.ModelName, t.OwnerCount, t.Power, t.Price, t.Salvage, t.SavingsAmount, t.SellerRating,
           t.Torque, t.WheelBase, t.Width, t.Year, t.HasAccidents, t.isCab, t.isCertified, t.isCpo, t.isNew, t.isOemcpo,
           t.TheftTitle, t.FrameDamaged, t.FranchiseDealer
    FROM car t
    LEFT JOIN Bed b ON t.IDBed = b.IDBed
    LEFT JOIN BodyType bd ON t.IDBodyType = bd.IDBodyType
    LEFT JOIN Cabin c ON t.IDCabin = c.IDCabin
    LEFT JOIN Fleet f ON t.IDFleet = f.IDFleet
    LEFT JOIN FuelType ft ON t.IDFleet = ft.IDFuelType
    LEFT JOIN ListingColor lc ON t.IDListingColor = lc.IDListingColor
    LEFT JOIN Sp sp ON t.IDSp = sp.IDSp
    LEFT JOIN Transmission tr ON t.IDTransmission = tr.IDTransmission
    LEFT JOIN TransmissionDisplay trd ON t.IDTransmissionDisplay = trd.IDTransmissionDisplay
    LEFT JOIN Trim tri ON t.IDTrim = tri.IDTrim
    LEFT JOIN VehicleDamageCategory veh ON t.IDVehicleDamageCategory = veh.IDVehicleDamageCategory
    LEFT JOIN WheelSystem wh ON t.IDWheelSystem = wh.IDWheelSystem
    LEFT JOIN WheelSystemDisplay whd ON t.IDWheelSystemDisplay = whd.IDWheelSystemDisplay
) AS Subquery
WHERE RowNumber BETWEEN 500002 AND 750002;