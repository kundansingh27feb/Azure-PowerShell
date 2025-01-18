# Defining two vriables and assigning Integer values
$x=10
$y=20

# Displaying the values assigned to the variables
$x
$y

# More attractive way to display the variables value
'The value of x is ' + $x
'The value of y is ' + $y

# With double quotes we did not need to define the + sign to display the variable
"The value of x is $x"
"The value of y is $y"

#perfom operations on the values defined in variables
$z=$x+$y
$z

# Define variables that hold string values
$CourseName="Azure PowerShell"
"The name of this course is $CourseName"

# Get the data types of values assigned to variables
$x.GetType()
$CourseName.GetType()