/*
h24116065_db 的部署指令碼

這段程式碼由工具產生。
變更這個檔案可能導致不正確的行為，而且如果重新產生程式碼，
變更將會遺失。
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "h24116065_db"
:setvar DefaultFilePrefix "h24116065_db"
:setvar DefaultDataPath "/var/opt/mssql/data/"
:setvar DefaultLogPath "/var/opt/mssql/data/"

GO
:on error exit
GO
/*
偵測 SQLCMD 模式，如果不支援 SQLCMD 模式，則停用指令碼執行。
若要在啟用 SQLCMD 模式後重新啟用指令碼，請執行以下:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'必須啟用 SQLCMD 模式才能成功執行此指令碼。';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'更新完成。';


GO

INSERT INTO TransactionHistory (CustomerID, ItemID, Count)
VALUES
(1, 1, 4),
(1, 2, 7),
(2, 1, 1),
(2, 2, 6),
(2, 3, 3);

INSERT INTO Customers (Name)
VALUES
('Gao'),
('Rui');

INSERT INTO Items (Name, Price)
VALUES
('Shawarma', 80),
('Kibbeh', 30),
('Basbousa', 10);

GO
UPDATE Items
SET Price = 120
WHERE Name = 'Shawarma';

GO
DELETE FROM Items
WHERE Name = 'Basbousa';

GO
SELECT ItemID, Count
FROM TransactionHistory
WHERE ItemID = 1;

SELECT Name
FROM Customers
WHERE Name = 'Ruigao';

SELECT Name, Price
FROM Items
WHERE Name = 'Shawarma';