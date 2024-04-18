--------------------------------------------------------------------------------
-- Example  1
--
-- Supported versions of SQL Server: SQL Server 2022
--
-- Creado: 2024-04-18
--
--------------------------------------------------------------------------------

-- Query 1
SELECT
    p.ProductNumber
    , AVG(sod.UnitPrice)
FROM
    Production.Product AS p
INNER JOIN Sales.SalesOrderDetail AS sod ON
    p.ProductID = sod.ProductID
GROUP BY
    p.ProductNumber
HAVING
    p.ProductNumber LIKE 'L%';
GO

-- Query 2
SELECT
    p.ProductNumber
    , AVG(sod.UnitPrice)
FROM
    Production.Product AS p
INNER JOIN Sales.SalesOrderDetail AS sod ON 
    p.ProductID = sod.ProductID
WHERE
    p.ProductNumber LIKE 'L%'
GROUP BY
    p.ProductNumber;
GO