# Objects in PowerShell

In PowerShell, objects are core to how data is represented and manipulated. Unlike traditional scripting languages that work with plain text, PowerShell processes objects, which are instances of .NET types. Understanding objects allows more efficient and powerful scripting.

## 1. What is an Object?

An object is a data structure that combines:

### Properties: Characteristics or attributes of the object.
### Methods: Actions or functions the object can perform.

For example, when you use Get-Process, it returns objects representing processes running on the system.

```
$Process = Get-Process | Select-Object -First 1
$Process
```

### Exploring an Object

You can explore an object’s properties and methods using:

#### Get-Member: Displays the members (properties and methods) of an object.

$Process = Get-Process | Select-Object -First 1
$Process | Get-Member


## 2. Types of Objects

PowerShell objects can be:

### Custom Objects: Created using New-Object or [PSCustomObject].
### .NET Objects: Most objects in PowerShell are .NET types (e.g., [System.DateTime]).
### PSObjects: A flexible object type native to PowerShell.

### Creating Custom Objects

#### Method 1: Using New-Object

```
$Person = New-Object PSObject -Property @{
    Name = "John"
    Age = 30
}
```

#### Method 2: Using [PSCustomObject]

```
$Person = [PSCustomObject]@{
    Name = "Alice"
    Age = 25
}
```

### Accessing Custom Object Properties

```
$Person.Name  # Outputs: Alice
```

### Using Select-Object to Create Objects

```
$Object = Get-Process | Select-Object ProcessName, Id
$Object
```

### Piping Objects

PowerShell’s pipeline passes objects from one command to another.

```
Get-Service | Where-Object {$_.Status -eq 'Running'} | Select-Object DisplayName, Status
```

# Conclusion

Objects are central to PowerShell’s power and flexibility, enabling rich data manipulation beyond simple text. Understanding how to access properties, invoke methods, and create custom objects makes PowerShell scripting robust and efficient.