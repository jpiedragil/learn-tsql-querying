SELECT
    LastName, FirstName, MiddleName
FROM
    Person.Person
WHERE
    PersonType = N'EM' AND 
    BusinessEntityID IN (5, 7, 13, 17, 19);