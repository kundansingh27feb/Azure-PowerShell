# Arrays And Hash Tables

In PowerShell, arrays and hash tables are essential for working with collections of data. Let’s explore them in detail.

## 1. Arrays in PowerShell

An array is a collection of values stored in a single variable. Arrays can hold multiple data types, including strings, integers, and objects.

### Creating an Array

```
# Implicit array creation
$Numbers = 1, 2, 3, 4, 5

# Explicit array creation
$Fruits = @("Apple", "Banana", "Orange")
```

### Accessing Elements

```
$Fruits[0]   # Output: Apple
$Numbers[2]  # Output: 3
```

### Modifying Elements

```
$Fruits[1] = "Grapes"  # Replaces Banana with Grapes
```

### Array Properties and Methods

$Fruits.Length – Returns the number of elements.

$Fruits.GetType().Name – Returns Object[] (type of array).

## 2. Hash Tables in PowerShell

A hash table stores data in key-value pairs. It is similar to a dictionary in other programming languages.

### Creating a Hash Table

```
$Person = @{Name = "John"; Age = 30; Country = "USA"}
```

### Accessing Values

```
$Person["Name"]  # Output: John
$Person.Age      # Output: 30
```

### Adding and Modifying Entries

$Person["City"] = "New York"  # Adds a new key-value pair
$Person.Age = 31              # Updates the Age value


### Removing Entries

```
$Person.Remove("Country")
```

### Looping Through a Hash Table

```
foreach ($Key in $Person.Keys) {
    Write-Output "$Key: $($Person[$Key])"
}
```

### Properties and Methods

$Person.Count – Returns the number of key-value pairs.

$Person.ContainsKey("Name") – Checks if a key exists.

## Comparison

| Feature            | Array                                     | Hash Table                                 |
|--------------------|-------------------------------------------|--------------------------------------------|
| Storage            | Indexed collection                        | Key-value pairs                            |
| Access             | By index: `$Array[0]`                     | By key: `$HashTable["Key"]`                |
| Expansion          | Can append elements                       | Can add/modify keys                        |
| Use Case           | Store lists of items                      | Associate labels with values               |
| Example            | `$Array = @(1, 2, 3)`                     | `$HashTable = @{Name = "Alice"; Age = 25}` |


# Conclusion

Arrays and hash tables are powerful tools in PowerShell for managing collections of data. Arrays provide indexed storage for sequential data, while hash tables allow key-value mapping, making both versatile for scripting and automation.