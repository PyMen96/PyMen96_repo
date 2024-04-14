W celu implementacji rozwiązania opisanego w pracy magisterskiej kody źródłowe dołączone do pracy nalezy uruchamiać z okresloną kolejnością.

1. Podzelić orginalny zestaw danych car_used.csv skryptem z lokalizacji \KodyŹródłowe\Python_divide_dataset
2. Po podziale danych powyższym skryptem nalezy wewnętrznymi mechanizmami Microsoft SQL Server zaimportować podzielone dane
3. Po zaimportowaniu podzielonych danych należy postępować zgodnie z poniższym

4. W celu przygotowania bazy danych pliki umieszczone na zasobie \KodyŹródłowe\PrepareDatabase nalezy uruchomić:
	4.1. \KodyŹródłowe\PrepareDatabase\CreateTableCarAndStg\CreateTableStg.sql
	4.2. \KodyŹródłowe\PrepareDatabase\CreateTableCarAndStg\CreateTableCar.sql
	4.3. \KodyŹródłowe\PrepareDatabase\InsertIntoDictTable - dowolna kolejność uruchamianych skrytpów
	4.4. \KodyŹródłowe\PrepareDatabase\InsertIntoStgAndCarTable_and_CheckStgAndCarTable\1InsertIntoStage.sql
	4.5. \KodyŹródłowe\PrepareDatabase\InsertIntoStgAndCarTable_and_CheckStgAndCarTable\4InsertIntoCarWithMappingsColumnFromStageAndDictTableV3.sql
	4.6. \KodyŹródłowe\PrepareDatabase\InsertIntoStgAndCarTable_and_CheckStgAndCarTable\2QueryAfterInsertIntoStage.sql
	4.7. \KodyŹródłowe\PrepareDatabase\InsertIntoStgAndCarTable_and_CheckStgAndCarTable\5QueryAfterInsertIntoAndJoinCar.sql
	4.8. \KodyŹródłowe\PrepareDatabase\InsertIntoStgAndCarTable_and_CheckStgAndCarTable\3SelectUniqueValuesToDictTable.sql

W celu stworzenia i zasilenia widoków należy z zasobu \KodyŹródłowe\PrepareDatabase\CreateViews uruchomić skryptu zasilające widoki w dowolnej kolejności

5. Po poprawnym wykonaniu poniższych kroków nalezy uruchomić skrypt umieszczony w lokalizacji \KodyŹródłowe\Python_ensamble_lerning_process
Skrypt ten odpowiada za wczytanie danych, oczyszczenie danych, stworzenie modelu zespolowego.
