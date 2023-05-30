USE master
GO

IF EXISTS (
    SELECT [name]
        FROM sys.databases
        WHERE [name] = N'agriculture'
)
DROP DATABASE agriculture
GO

CREATE DATABASE agriculture
GO

USE agriculture
GO

IF OBJECT_ID('harvesting', 'U') IS NOT NULL
DROP TABLE harvesting
GO

CREATE TABLE harvesting
(
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    fruit VARCHAR(50) NOT NULL,
    quantity FLOAT
)
GO


INSERT INTO harvesting
(fruit, quantity)
VALUES
('apple',10),
('peach',5),
('cherry',2),
('apple',12),
('apple',4),
('cherry',5),
('plum',20),
('peach',1),
('plum',30)

GO
