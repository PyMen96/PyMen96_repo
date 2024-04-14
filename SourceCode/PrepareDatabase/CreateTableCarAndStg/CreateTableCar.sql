-- Stworzenie tabeli s這wnikowej Bed
create table Bed
(
IDBed int not null primary key identity(1,1),
Bed varchar(250)
)

-- Stworzenie tabeli s這wnikowej BodyType
create table BodyType
(
IDBodyType int not null primary key identity(1,1),
BodyType varchar(250)
)

-- Stworzenie tabeli s這wnikowej Cabin
create table Cabin
(
IDCabin int not null primary key identity(1,1),
Cabin varchar(250)
)

-- Stworzenie tabeli s這wnikowej Fleet
create table Fleet
(
IDFleet int not null primary key identity(1,1),
Fleet varchar(250)
)

-- Stworzenie tabeli s這wnikowej WheelSystem
create table WheelSystem
(
IDWheelSystem int not null primary key identity(1,1),
WheelSystem varchar(250)
)

-- Stworzenie tabeli s這wnikowej WheelSystemDisplay
create table WheelSystemDisplay
(
IDWheelSystemDisplay int not null primary key identity(1,1),
WheelSystemDisplay varchar(250)
)

-- Stworzenie tabeli s這wnikowej Sp
create table Sp
(
IDSp int not null primary key identity(1,1),
Sp varchar(250)
)

-- Stworzenie tabeli s這wnikowej FuelType
create table FuelType
(
IDFuelType int not null primary key identity(1,1),
FuelType varchar(250)
)

-- Stworzenie tabeli s這wnikowej ListingColor
create table ListingColor
(
IDListingColor int not null primary key identity(1,1),
ListingColor varchar(250)
)

-- Stworzenie tabeli s這wnikowej Transmission
create table Transmission
(
IDTransmission int not null primary key identity(1,1),
Transmission varchar(250)
)

-- Stworzenie tabeli s這wnikowej TransmissionDisplay
create table TransmissionDisplay
(
IDTransmissionDisplay int not null primary key identity(1,1),
TransmissionDisplay varchar(250)
)

-- Stworzenie tabeli s這wnikowej Trim
create table Trim
(
IDTrim int not null primary key identity(1,1),
Trim varchar(250)
)

-- Stworzenie tabeli s這wnikowej VehicleDamageCategory
create table VehicleDamageCategory
(
IDVehicleDamageCategory int not null primary key identity(1,1),
VehicleDamageCategory varchar(250)
)

-- Stworzenie tabeli glownej Car
Create table Car
(
IDCar int not null primary key identity(1,1),
IDBed int, --klucz obcy do tabeli Bed
IDBodyType int, --klucz obcy do tabeli BodyType
IDCabin int, --klucz obcy do tabeli Cabin
IDFleet int, --klucz obcy do tabeli Fleet
IDFuelType int, --klucz obcy do tabeli FuelType
IDListingColor int, --klucz obcy do tabeli ListingColor
IDTransmission int, --klucz obcy do tabeli Transmission
IDTransmissionDisplay int, --klucz obcy do tabeli TransmissionDisplay
IDTrim int, --klucz obcy do tabeli Trim
IDVehicleDamageCategory int, --klucz obcy do tabeli VehicleDamageCategory
IDWheelSystem int, --klucz obcy do tabeli WheelSystem
IDWheelSystemDisplay int, --klucz obcy do tabeli WheelSystemDisplay
IDSp int, --klucz obcy do tabeli Sp
Vin varchar(250),
BackLegroom varchar(250),
BedHeight varchar(250),
BedLength varchar(250),
City varchar(250),
CityFuelEconomy float,
CombineFuelEconomy float,
DaysOnMarket int,
DealerZip varchar(250),
Description varchar(max),
EngineCylinders varchar(250),
EngineDisplacement float,
EngineType varchar(250),
ExteriorColor varchar(250),
FranchiseMake varchar(250),
FrontLegroom varchar(250),
FuelTankVolume varchar(250),
Height varchar(250),
HighwayFuelEconomy float,
Horsepower float,
InteriorColor varchar(250),
Latitude float,
Length varchar(250),
ListedDate varchar(250),
ListingID  int,
Longitude float,
MainPictureURL varchar(max),
MajorOptions varchar(max),
MakeName varchar(250),
MaximumSeating varchar(250),
Mileage float,
ModelName varchar(250),
OwnerCount float,
Power varchar(250),
Price float,
Salvage varchar(250),
SavingsAmount int,
SellerRating float,
Torque varchar(250),
WheelBase varchar(250),
Width varchar(250),
Year int,
HasAccidents varchar(250),
isCab varchar(250),
isCertified varchar(250),
isCpo varchar(250),
isNew varchar(250),
isOemcpo varchar(250),
TheftTitle varchar(250),
FrameDamaged varchar(250),
FranchiseDealer varchar(250)
)

Alter table Car
	Add Constraint CarBed
		Foreign key (IDBed) references Bed(IDBed)

Alter table Car
	Add Constraint CarBodyType
		Foreign key (IDBodyType) references BodyType(IDBodyType)

Alter table Car
	Add Constraint CarCabin
		Foreign key (IDCabin) references Cabin(IDCabin)

Alter table Car
	Add Constraint CarFleet
		Foreign key (IDFleet) references Fleet(IDFleet)

Alter table Car
	Add Constraint CarFuelType
		Foreign key (IDFuelType) references FuelType(IDFuelType)

Alter table Car
	Add Constraint CarListingColor
		Foreign key (IDListingColor) references ListingColor(IDListingColor)

Alter table Car
	Add Constraint CarTransmission
		Foreign key (IDTransmission) references Transmission(IDTransmission)

Alter table Car
	Add Constraint CarTransmissionDisplay
		Foreign key (IDTransmissionDisplay) references TransmissionDisplay(IDTransmissionDisplay)

Alter table Car
	Add Constraint CarTrim
		Foreign key (IDTrim) references Trim(IDTrim)

Alter table Car
	Add Constraint CarVehicleDamageCategory
		Foreign key (IDVehicleDamageCategory) references VehicleDamageCategory(IDVehicleDamageCategory)

Alter table Car
	Add Constraint CarWheelSystem
		Foreign key (IDWheelSystem) references WheelSystem(IDWheelSystem)

Alter table Car
	Add Constraint CarWheelSystemDisplay
		Foreign key (IDWheelSystemDisplay) references WheelSystemDisplay(IDWheelSystemDisplay)

Alter table Car
	Add Constraint CarSp
		Foreign key (IDSp) references Sp(IDSp)

