--Select * from
--StgCar t 


--insert into StgCar
--	values(select bed,body_type,cabin,fleet,fuel_type,listing_color, transmission,transmission_display, trim_name,vehicle_damage_category,wheel_system,wheel_system_display,sp_name,vin,back_legroom,bed_height,bed_length,city,city_fuel_economy,combine_fuel_economy,daysonmarket,dealer_zip,
--	description,engine_cylinders, engine_displacement,engine_type,exterior_color,franchise_make,front_legroom,fuel_tank_volume,height,highway_fuel_economy,horsepower,interior_color,latitude,length,listed_date,listing_id,
--	longitude,main_picture_url,major_options,make_name,maximum_seating,mileage,model_name,owner_count,power,price,salvage,savings_amount,seller_rating,torque,wheelbase,width,year,has_accidents,isCab,is_certified,is_cpo,is_new,is_oemcpo,theft_title,
--	frame_damaged,franchise_dealer from car_dataset_divide11 )




INSERT INTO StgCar (
    IDBed, IDBodyType, IDCabin, IDFleet, IDFuelType, IDListingColor, IDTransmission, IDTransmissionDisplay,
    IDTrim, IDVehicleDamageCategory, IDWheelSystem, IDWheelSystemDisplay, IDSp, Vin,
    BackLegroom, BedHeight, BedLength, City, CityFuelEconomy, CombineFuelEconomy,
    DaysOnMarket, DealerZip, Description, EngineCylinders, EngineDisplacement, EngineType,
    ExteriorColor, FranchiseMake, FrontLegroom, FuelTankVolume, Height, HighwayFuelEconomy,
    Horsepower, InteriorColor, Latitude, Length, ListedDate, ListingID, Longitude,
    MainPictureUrl, MajorOptions, MakeName, MaximumSeating, Mileage, ModelName,
    OwnerCount, Power, Price, Salvage, SavingsAmount, SellerRating, Torque, WheelBase,
    Width, Year, HasAccidents, isCab, isCertified, isCpo, isNew, isOemcpo, TheftTitle,
    FrameDamaged, FranchiseDealer
)
SELECT
    bed, body_type, cabin, fleet, fuel_type, listing_color, transmission, transmission_display,
    trim_name, vehicle_damage_category, wheel_system, wheel_system_display, sp_name, vin,
    back_legroom, bed_height, bed_length, city, city_fuel_economy, combine_fuel_economy,
    daysonmarket, dealer_zip, description, engine_cylinders, engine_displacement, engine_type,
    exterior_color, franchise_make, front_legroom, fuel_tank_volume, height, highway_fuel_economy,
    horsepower, interior_color, latitude, length, listed_date, listing_id, longitude,
    main_picture_url, major_options, make_name, maximum_seating, mileage, model_name,
    owner_count, power, price, salvage, savings_amount, seller_rating, torque, wheelbase,
    width, year, has_accidents, isCab, is_certified, is_cpo, is_new, is_oemcpo, theft_title,
    frame_damaged, franchise_dealer
FROM car_dataset_divide11;

Select* from StgCar t
