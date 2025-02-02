# Defining a custom object

$Course=[PSCustomObject]@{
    Id = 1
    Name ='AZ-104 Azure Administrator'
    Rating = 4.7
}

# Displaying the custom object

$Course

# accessing each custom object property

'The Course Id is ' + $Course.Id

# Defining an array of objects

$CourseList=@(
    [PSCustomObject]@{
        Id = 1
        Name ='AZ-104 Azure Administrator'
        Rating = 4.7
    },
    [PSCustomObject]@{
        Id = 2
        Name ='AZ-305 Azure Architect Design'
        Rating = 4.8
    },
    [PSCustomObject]@{
        Id = 3
        Name ='AZ-500 Azure Security'
        Rating = 4.9
    }
)

# Displaying the entire array of objects

$CourseList

# Accessing a particular object and its property

$CourseList[0].Name
''