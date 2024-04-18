DECLARE @PersonType AS nchar(2) = N'EM';

SELECT
    LastName, FirstName, MiddleName
FROM
    Person.Person
WHERE
    PersonType = @PersonType;