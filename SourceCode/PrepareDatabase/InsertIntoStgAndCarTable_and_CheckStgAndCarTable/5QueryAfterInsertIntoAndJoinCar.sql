Select t.IDCar, b.Bed, bd.BodyType,c.Cabin, f.Fleet, ft.FuelType, lc.ListingColor,tr.Transmission,
	trd.TransmissionDisplay,tri.Trim, veh.VehicleDamageCategory,wh.WheelSystem, whd.WheelSystemDisplay, sp.Sp,
	t.Vin, t.BackLegroom, t.BedHeight, t.BedHeight, t.City, t.CityFuelEconomy, t.CombineFuelEconomy, t.DaysOnMarket, t.DealerZip, t.Description,
	t.Description, t.EngineCylinders, t.EngineDisplacement, t.EngineType, t.ExteriorColor, t.FranchiseMake, t.FrontLegroom, t.FuelTankVolume, t.Height,
	t.HighwayFuelEconomy, t.Horsepower, t.InteriorColor, t.Latitude, t.Length, t.ListedDate,t.ListingID, t.Longitude, t.MainPictureURL, t.MajorOptions,
	t.MakeName, t.MaximumSeating, t.Mileage, t.ModelName, t.OwnerCount, t.Power, t.Price, t.Salvage, t.SavingsAmount, t.SellerRating, t.Torque,
	t.WheelBase, t.Width, t.Year,t.HasAccidents,t.isCab, t.isCertified, t.isCpo, t.isNew, t.isOemcpo, t.TheftTitle, t.FrameDamaged, t.FranchiseDealer 
		from car t
			left join Bed b on t.IDBed = b.IDBed
				left join BodyType bd on t.IDBodyType = bd.IDBodyType
					left join Cabin c on t.IDCabin = c.IDCabin
						left join Fleet f on t.IDFleet = f.IDFleet
							left join FuelType ft on t.IDFleet = ft.IDFuelType
								left join ListingColor lc  on t.IDListingColor = lc.IDListingColor
									left join Sp sp on t.IDSp = sp.IDSp
										left join Transmission tr on t.IDTransmission = tr.IDTransmission
											left join TransmissionDisplay trd on t.IDTransmissionDisplay = trd.IDTransmissionDisplay
												left join Trim tri on t.IDTrim = tri.IDTrim
													left join VehicleDamageCategory veh on t.IDVehicleDamageCategory = veh.IDVehicleDamageCategory
														left join WheelSystem wh on t.IDWheelSystem = wh.IDWheelSystem
															left join WheelSystemDisplay whd on t.IDWheelSystemDisplay = whd.IDWheelSystemDisplay
