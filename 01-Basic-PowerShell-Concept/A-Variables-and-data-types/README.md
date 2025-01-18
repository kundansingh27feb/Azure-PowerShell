# Variables and data types

 In PowerShell, variables and data types are fundamental to storing and manipulating data. Here’s a detailed explanation:

 ## Variables

Variables in PowerShell store values that can be referenced and reused.

All variables in PowerShell begin with a $ symbol.

PowerShell is dynamically typed, meaning the type of a variable is determined at runtime based on its value.

```
# Declaring a variable and assigning a value

$Name = "John Doe"  # String
$Age = 30           # Integer
$IsActive = $true   # Boolean
```

## Common Data Types in PowerShell

PowerShell supports several data types, which are derived from the .NET framework.

### 1. String ([string])

Used for text data.

```
$Name = "PowerShell"
$Type = [string]$Name  # Explicitly defining the data type
```

### 2. Integer ([int])

Stores whole numbers.

```
$Age = 25
$Type = [int]$Age
```

### 3. Boolean ([bool])

Stores $true or $false.

```
$IsAdmin = $true
```

### 4. Array ([array])

Stores multiple values in a single variable.

```
$Numbers = @(1, 2, 3, 4)
```

### 5. Hash Table ([hashtable])

Stores key-value pairs.

```
$Person = @{Name = "Alice"; Age = 28}
```

### 6. DateTime ([datetime])

Represents date and time values.

```
$Today = Get-Date
```
