EXECUTE sp_executesql @stmt = N'SELECT LastName,
      FirstName, MiddleName
      FROM Person.Person
      WHERE PersonType = @PersonType;',
@params = N'@PersonType nchar(2)',
@PersonType = N'EM';