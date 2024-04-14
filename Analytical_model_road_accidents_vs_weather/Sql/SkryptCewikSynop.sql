use INZ2021WypadkiPogodaSH

	CREATE TABLE Cewik(											--2
	IDWypadku int not NULL,
	DataZdarzenia datetime null,
	WarunkiAtmosferyczne varchar(250) NULL,
	WypadekKolizja varchar(250) NULL,
	RodzajZdarzenia varchar(250) NULL,
	Miejscowosc varchar(250) NULL,
	Powiat varchar(250) NULL,
	WojewodztwoID int NULL,
	Obszar varchar(250) NULL,
	CharakterystykaMiejscaZdarzenia varchar(250) NULL,
	UszkodzeniaPozaPojazdami varchar(250) NULL,
	NawierzchniaDrogi varchar(250) NULL,
	StanNawierzchni varchar(250) NULL,
	SygnalizacjaSwietlna varchar(250) NULL,
	OznakowaniePoziome varchar(250) NULL,
	PredkoscDopuszczalna int NULL,
	Wina varchar(250) NULL,
	ZachowanieKieruj¹cego varchar(250) NULL,
	ZachowaniePieszego varchar(250) NULL,
	InnePrzyczyny varchar(250) NULL,
	LiczbaZabitychWZdarzeniu int NULL,
	LiczbaRannychWZdarzeniu int NULL,
	Rok int NULL
	)

	Create table Wojewodztwa(														--3
	IDWojewodztwa int not null primary key identity(1,1),
	Nazwa varchar(250)
	)


Alter table Cewik																--4
ADD CONSTRAINT CewiklWoj
FOREIGN KEY (WojewodztwoID) REFERENCES Wojewodztwa(IDWojewodztwa)




	insert into Wojewodztwa values  ('Dolnoslaskie'),								--5
									('Kujawsko-Pomorskie'),
									('Lubelskie'),
									('Lubuskie'),
									('Lodzkie'),
									('Malopolskie'),
									('Mazowieckie'),
									('Opolskie'),
									('Podkarpackie'),
									('Podlaskie'),
									('Pomorskie'),
									('Slaskie'),
									('Swietokrzyskie'),
									('Warminsko-Mazurskie'),
									('Wielkopolskie'),
									('Zachodniopomorskie')






	INSERT INTO Cewik														--7
		Select
			IDWypadku=case when ISNUMERIC([IDZdarzenia])=1 
				then cast([IDZdarzenia] as int) else NULL END,
			DataZdarzenia=case when ISDATE([DataZdarzenia])=1
				then cast([DataZdarzenia] as datetimeoffset) else NULL END,
			[WarunkiAtmosferyczne],
			[WypadekKolizja],
			[RodzajZdarzenia],
			[Miejscowosc],
			[Powiat],
			WojewodztwoID=case when ISNUMERIC([Wojewodztwo])=1 
				then cast([Wojewodztwo] as int) else NULL END,
			[Obszar],
			[CharakterystykaMiejscaZdarzenia],
			[UszkodzeniaPozaPojazdami],
			[NawierzchniaDrogi],
			[StanNawierzchni],
			[SygnalizacjaSwietlna],
			[OznakowaniePoziome],
			PredkoscDopuszczalna=case when ISNUMERIC([PredkoscDopuszczalna])=1 
				then cast([PredkoscDopuszczalna] as int) else NULL END,
			[Wina],
			[ZachowanieKierujacego],
			[ZachowaniePieszego],
			[InnePrzyczyny],
			LiczbaZabitychWZdarzeniu=case when ISNUMERIC([LiczbaZabitychWZdarzeniu])=1 
				then cast([LiczbaZabitychWZdarzeniu] as int) else NULL END,		
			[LiczbaRannychWZdarzeniu]=case when ISNUMERIC([LiczbaRannychWZdarzeniu])=1 
				then cast([LiczbaRannychWZdarzeniu] as int) else NULL END,
			Rok=case when ISNUMERIC([Rok])=1 
				then cast([Rok] as int) else NULL END
		from dbo.CewikCzysty4

		


----------------------------------------------------------------------------------------------------------------------------

Create table Synop(
IDDepeszy int primary key,
Stacja varchar(250),
DataSynop date,
WysokoscPodstawyChmur int,
Widzialnosc int,
WielkoscZachmurzenia int,
KierunekWiatru int,
PredkoscWiatru int,
TemperaturaPowietrza decimal(3,1),
TemperaturaPunktuRosy decimal(3,1),
CisnienieNaPoziomieStacji decimal(5,1),
CisnienieNaPoziomieMorza decimal(5,1),
WielkoscTendencjiCisnienia decimal(5,1),
WysokoscOpadu decimal(4,1),
OkresPomiaruOpadu int,
WielkoscZachmurzeniaNiskiego int,
CzyMgla bit,
CzyMzawka bit,
CzyDeszcz bit,
CzySnieg bit,
CzyOpadMarznacy bit,
CzyPrzelotny bit,
CzyBurza bit,
CzyZamiec bit,
Godz int,
IDStacji int
)

Create table Stacje(
IDStacji int not null primary key identity(1,1),
OznaczenieStacji int null,
Nazwa nvarchar(200),
Gmina nvarchar(200),
Powiat nvarchar(200),
Wojewodztwo nvarchar(200),
Kraj nvarchar(200),
Szerokosc nvarchar(20),
Dlugosc nvarchar(20),
)

Alter table Synop
ADD CONSTRAINT SynopStacje
FOREIGN KEY (IDStacji) REFERENCES Stacje(IDStacji)



Insert into Stacje values 
(12100,'Kolobrzeg','Kolobrzeg','kolobrzeski','zachodniopomorskie','Poland','54.182823','15.580516'),
(12105,'Koszalin ','Koszalin','Koszalin','zachodniopomorskie','Poland','54.204928','16.156022'),
(12106,'Koszalin Zegrze Pom.','Koszalin','Koszalin','zachodniopomorskie','Poland','54.042222','16.263611'),
(12115,'Ustka ','Ustka','slupski','pomorskie','Poland','54.586395','16.854320'),
(12120,'leba','leba','leborski','pomorskie','Poland','54.754190','17.532234'),
(12124,'Darlowo','Darlowo','slawienski','zachodniopomorskie','Poland','54.420324','16.413144'),
(12125,'Lebork','Lebork','leborski','pomorskie','Poland','54.438902','17.303492'),
(12135,'Hel ','Hel','pucki','pomorskie','Poland','54.602856','18.817706'),
(12136,'Cewice','Cewice','leborski','pomorskie','Poland','54.428009','17.706662'),
(12140,'Gdansk Port Pn.','Gdansk','Gdansk','pomorskie','Poland','54.367853','18.683003'),
(12142,'Gdynia-Oksywie','Gdynia','Gdynia','pomorskie','Poland','54.520735','18.546286'),
(12145,'Gdynia','Gdynia','Gdynia','pomorskie','Poland','54.516666','18.566666'),
(12146,'Gdansk','Gdansk','Gdansk','pomorskie','Poland','54.333369','18.933644'),
(12150,'Gdansk-Rebiechowo','Gdansk','Gdansk','pomorskie','Poland','54.383333','18.466666'),
(12155,'Gdansk-swibno','Gdansk','Gdansk','pomorskie','Poland','54.333333','18.933333'),
(12160,'Elblag-Milejewo','Milejewo','elblaski','warminsko-mazurskie','Poland','54.211440','19.574099'),
(12185,'Ketrzyn','Ketrzyn','ketrzynski','warminsko-mazurskie','Poland','54.068015','21.367439'),
(12195,'Suwalki','Suwalki','Suwalki','podlaskie','Poland','54.130720','22.949620'),
(12200,'swinoujscie','swinoujscie','swinoujscie','zachodniopomorskie','Poland','53.922048','14.240110'),
(12205,'Szczecin','Szczecin','Szczecin','zachodniopomorskie','Poland','53.397047','14.620797'),
(12206,'Goleniow','Goleniow','goleniowski','zachodniopomorskie','Poland','53.583333','14.900000'),
(12210,'Resko','Resko','lobeski','zachodniopomorskie','Poland','53.771314','15.412658'),
(12212,'swidwin','swidwin','swidwinski','zachodniopomorskie','Poland','53.790691','15.839161'),
(12215,'Szczecinek','Szczecinek','szczecinecki','zachodniopomorskie','Poland','53.718663','16.746797'),
(12226,'Miroslawiec','Miroslawiec','walecki','zachodniopomorskie','Poland','53.389941','16.089097'),
(12230,'Pila','Pila','pilski','wielkopolskie','Poland','53.130258','16.747900'),
(12235,'Chojnice','Chojnice','chojnicki','pomorskie','Poland','53.715129','17.531685'),
(12240,'Bydgoszcz','Bydgoszcz','Bydgoszcz','kujawsko-pomorskie','Poland','53.125000','18.011111'),
(12250,'Torun','Torun','Torun','kujawsko-pomorskie','Poland','53.042441','18.595803'),
(12270,'Mlawa','Mlawa','mlawski','mazowieckie','Poland','53.103981','20.361529'),
(12272,'Olsztyn','Olsztyn','Olsztyn','warminsko-mazurskie','Poland','53.768599','20.421798'),
(12280,'Mikolajki','Mikolajki','mragowski','warminsko-mazurskie','Poland','53.790247','21.589750'),
(12285,'Ostroleka','Ostroleka','Ostroleka','mazowieckie','Poland','53.066466','21.534207'),
(12295,'Bialystok','Bialystok','Bialystok','podlaskie','Poland','53.108420','23.161075'),
(12300,'Gorzow Wielkopolski','Gorzow Wielkopolski','Gorzow Wielkopolski','lubuskie','Poland','52.740766','15.277392'),
(12310,'Slubice','Slubice','slubicki','lubuskie','Poland','52.347160','14.593863'),
(12312,'Zielona Gora-Babimost','Babimost','zielonogorski','lubuskie','Poland','52.137222','15.778056'),
(12326,'Poznan-Krzesiny','Poznan','Poznan','wielkopolskie','Poland','52.324884','16.970641'),
(12330,'Poznan','Poznan','Poznan','wielkopolskie','Poland','52.419291','16.882273'),
(12336,'Powidz','Powidz','slupecki','wielkopolskie','Poland','52.383438','17.852942'),
(12342,'Inowroclaw','Inowroclaw','inowroclawski','kujawsko-pomorskie','Poland','52.795584','18.238292'),
(12345,'Kolo','Kolo','kolski','wielkopolskie','Poland','52.197722','18.658120'),
(12360,'Plock','Plock','Plock','mazowieckie','Poland','52.579183','19.739074'),
(12365,'Brwinow','Brwinow','pruszkowski','mazowieckie','Poland','52.133333','20.716667'),
(12372,'Warszawa Bielany','Warszawa','Warszawa','mazowieckie','Poland','52.283333','20.966667'),
(12374,'Legionowo','Legionowo','legionowski','mazowieckie','Poland','52.400000','20.966667'),
(12375,'Warszawa-Okecie','Warszawa','Warszawa','mazowieckie','Poland','52.160390','20.961674'),
(12376,'Warszawa','Warszawa','Warszawa','mazowieckie','Poland','52.280957','20.961348'),
(12385,'Siedlce','Siedlce','Siedlce','mazowieckie','Poland','52.180484','22.245382'),
(12399,'Terespol','Terespol','bialski','lubelskie','Poland','52.078414','23.621435'),
(12400,'Zielona Gora','Zielona Gora','Zielona Gora','lubuskie','Poland','51.929790','15.523831'),
(12405,'Zgorzelec','Zgorzelec','zgorzelecki','dolnoslaskie','Poland','51.133333','15.033333'),
(12415,'Legnica','Legnickie Pole','legnicki','dolnoslaskie','Poland','51.192571','16.207610'),
(12418,'Leszno','Szprotawa','zaganski','lubuskie','Poland','51.835122','16.534389'),
(12424,'Wroclaw-Strachowice','Wroclaw','Wroclaw','dolnoslaskie','Poland','51.109444','16.880278'),
(12425,'Wroclaw','Wroclaw','Wroclaw','dolnoslaskie','Poland','51.107736','17.033068'),
(12435,'Kalisz','Kalisz','Kalisz','wielkopolskie','Poland','51.781106','18.081799'),
(12452,'leczyca','leczyca','leczycki','lodzkie','Poland','52.059164','19.196581'),
(12454,'lask','lask','laski','lodzkie','Poland','51.556998','19.176561'),
(12455,'Wielun','Wielun','wielunski','lodzkie','Poland','51.210657','18.557002'),
(12465,'lodz','lodz','lodz','lodzkie','Poland','51.727400','19.403068'),
(12466,'Tomaszow Mazowiecki','Tomaszow Mazowiecki','tomaszowski','lodzkie','Poland','51.583487','20.096233'),
(12469,'Sulejow','Sulejow','piotrkowski','lodzkie','Poland','51.354039','19.876077'),
(12471,'Belsk Duzy','Belsk Duzy','grojecki','mazowieckie','Poland','51.833333','20.800000'),
(12485,'Radom','Radom','Radom','mazowieckie','Poland','51.391988','21.219891'),
(12488,'Kozienice','Kozienice','kozienicki','mazowieckie','Poland','51.564827','21.542642'),
(12490,'Deblin','Deblin','rycki','lubelskie','Poland','51.547817','21.890520'),
(12491,'Pulawy','Pulawy','pulawski','lubelskie','Poland','51.416667','21.966667'),
(12495,'Lublin','Konopnica','lubelski','lubelskie','Poland','51.218023','22.395899'),
(12497,'Wlodawa','Wlodawa','wlodawski','lubelskie','Poland','51.550971','23.536622'),
(12500,'Jelenia Gora','Jelenia Gora','Jelenia Gora','dolnoslaskie','Poland','50.900460','15.788178'),
(12510,'sniezka','Karpacz','jeleniogorski','dolnoslaskie','Poland','50.777085','15.723909'),
(12520,'Klodzko','Klodzko','klodzki','dolnoslaskie','Poland','50.437235','16.615673'),
(12530,'Opole','Opole','Opole','opolskie','Poland','50.626504','17.968257'),
(12540,'Raciborz','Raciborz','raciborski','slaskie','Poland','50.059532','18.195739'),
(12550,'Czestochowa','Czestochowa','Czestochowa','slaskie','Poland','50.811727','19.091887'),
(12555,'Katowice-Pyrzowice','Ozarowice','tarnogorski','slaskie','Poland','50.474167','19.080000'),
(12560,'Katowice','Katowice','Katowice','slaskie','Poland','50.241014','19.031958'),
(12566,'Krakow','Krakow','Krakow','malopolskie','Poland','50.076977','19.788118'),
(12570,'Kielce','Kielce','Kielce','swietokrzyskie','Poland','50.810475','20.692704'),
(12575,'Tarnow','Tarnow','Tarnow','malopolskie','Poland','50.029560','20.983377'),
(12580,'Rzeszow','Trzebownisko','rzeszowski','podkarpackie','Poland','50.111837','22.031844'),
(12585,'Sandomierz','Sandomierz','sandomierski','swietokrzyskie','Poland','50.695546','21.718728'),
(12595,'Zamosc','Zamosc','Zamosc','lubelskie','Poland','50.702819','23.245679'),
(12600,'Bielsko-Biala','Bielsko-Biala','Bielsko-Biala','slaskie','Poland','49.806805','19.001399'),
(12625,'Zakopane','Zakopane','tatrzanski','malopolskie','Poland','49.293507','19.960391'),
(12650,'Kasprowy Wierch','Zakopane','tatrzanski','malopolskie','Poland','49.232066','19.981754'),
(12660,'Nowy Sacz','Nowy Sacz','Nowy Sacz','malopolskie','Poland','49.627062','20.689111'),
(12670,'Krosno','Krosno','Krosno','podkarpackie','Poland','49.703679','21.767720'),
(12690,'Lesko','Lesko','leski','podkarpackie','Poland','49.467219','22.342615'),
(12695,'Przemysl','Przemysl','Przemysl','podkarpackie','Poland','49.799085','22.773792'),
(12001,'Petrobaltic Beta ','','','','Poland','55.466667','18.166667')



insert into Synop
	Select
	[IDDepeszy]=case when ISNUMERIC([IDDepeszy])=1 then cast([IDDepeszy] as int) else NULL END,
	Stacja=case when ISNUMERIC([Stacja])=1 then cast([Stacja] as int) else NULL END,
	DataSynop =case when ISDATE([Data])=1 then cast([Data] as date) else NULL END,
	WysokoscPodstawyChmur =case when ISNUMERIC([WysokoscPodstawyChmur])=1 then cast([WysokoscPodstawyChmur] as int) else NULL END,
	Widzialnosc =case when ISNUMERIC([Widzialnosc])=1 then cast([Widzialnosc] as int) else NULL END,
	WielkoscZachmurzenia =case when ISNUMERIC([WielkoscZachmurzenia])=1 then cast([WielkoscZachmurzenia] as int) else NULL END,
	KierunekWiatru =case when ISNUMERIC([KierunekWiatru])=1 then cast([KierunekWiatru] as int) else NULL END,
	PredkoscWiatru =case when ISNUMERIC([PredkoscWiatru])=1 then cast([PredkoscWiatru] as int) else NULL END,
	TemperaturaPowietrza =case when ISNUMERIC([TemperaturaPowietrza])=1 then try_convert(decimal(3,1),[TemperaturaPowietrza]) else NULL END,
	TemperaturaPunktuRosy  =case when ISNUMERIC([TemperaturaPunktuRosy])=1 then try_convert(decimal(3,1),[TemperaturaPunktuRosy] ) else NULL END,
	CisnienieNaPoziomieStacji =case when ISNUMERIC([CisnienieNaPoziomieStacji])=1 then try_convert( decimal(5,1),[CisnienieNaPoziomieStacji]) else NULL END,
	CisnienieNaPoziomieMorza =case when ISNUMERIC([CisnienieNaPoziomieMorza])=1 then try_convert(decimal(5,1),[CisnienieNaPoziomieMorza]) else NULL END,
	WielkoscTendencjiCisnienia =case when ISNUMERIC([WielkoscTendencjiCisnienia])=1 then try_convert( decimal(5,1),[WielkoscTendencjiCisnienia]) else NULL END,
	WysokoscOpadu =case when ISNUMERIC([WysokoscOpadu])=1 then try_convert(decimal(4,1),[WysokoscOpadu]) else NULL END,
	OkresPomiaruOpadu =case when ISNUMERIC([OkresPomiaruOpadu])=1 then cast([OkresPomiaruOpadu] as int) else NULL END,
	WielkoscZachmurzeniaNiskiego =case when ISNUMERIC([WielkoscZachmurzeniaNiskiego])=1 then cast([WielkoscZachmurzeniaNiskiego] as int) else NULL END,
	CzyMgla ,
	CzyMzawka ,
	CzyDeszcz ,
	CzySnieg ,
	CzyOpadMarznacy ,
	CzyPrzelotny  ,
	CzyBurza  ,
	CzyZamiec , 
	Godz =case when ISNUMERIC([Godz])=1 then cast([Godz] as int) else NULL END,
	idstacji =case when ISNUMERIC(idstacji)=1 then cast(idstacji as int) else NULL END
from SynopCzysty6
	

