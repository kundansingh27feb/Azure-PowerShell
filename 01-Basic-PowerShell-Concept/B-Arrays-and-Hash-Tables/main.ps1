# Creating an array of string-based values
$CourseVideos='Introduction','Installation','Variables'

# Display the entire array of string values
'Complete String Array:'
$CourseVideos

# Defining an array of Integer values
$CourseNumbers=1,2,3

# Displaying the array of Integer values
'' #For a blank line
'Complete Integer Array:'
$CourseNumbers

# Another way of declaring the array
$Videos=@(
    'Introduction'
    'Installation'
    'Variables'
)

# Displaying the array
''
'Displaying the another method of array:'
$Videos

# Accessing an array value via the Index number
''
'Accessing 0 index value from Array:'
$Videos[0]

# Change the value of an array element 
''
'Updating the value of index[1] from Installation to Configuration:'
$Videos[1]='Configuration'
''
'After updating the index 1 value the complete Array is:'
$Videos

# Defining a hash table

 $Server=@{
     Dev='Server01'
     Test='Server02'
     Prod='Server03'     
 }

# Access a particular element of the hash table 
''
'Accessing the particular element from hash table using key:'
 $Server['Dev']
 $Server.Dev

# We can also add elements to the hash table 
''
'Adding element to Hash table:'
 $Server.Add('QA','Server04')
''
'After Adding new element the complete the hash table is:'
 $Server