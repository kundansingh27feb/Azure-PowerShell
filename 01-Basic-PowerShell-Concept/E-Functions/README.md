# PowerShell Functions

## What are Functions in PowerShell?

A function in PowerShell is a block of code that performs a specific task. Functions help organize reusable code, making scripts easier to manage, debug, and maintain.

### Syntax of a Function

```
function Function-Name {
    # Code block
}
```
Functions can also accept parameters to make them dynamic and flexible.

# Key Features of Functions in PowerShell

## Reusability: Write once, use multiple times.
## Parameters: Functions can accept input arguments.
## Return Values: Functions can return results.
## Scope: Variables inside a function are local by default.

## Example 1: Displaying a Simple Function

```
function Get-Appversion {
    $PSVersionTable    
}
```

This function, Get-Appversion, displays the current PowerShell version when called.

## Calling the Function

```
Get-Appversion
```

## Example 2: Function with Parameters

```
function Add-Integers([int]$x, [int]$y) {
    'The sum of the Integers is ' + ($x + $y)
}
```

This function, Add-Integers, takes two integers as parameters and returns their sum.

## Calling the Function with Parameters

```
Add-Integers 10 20
```

## Example 3: Function with an Object as a Parameter

```
function Get-Course {
    param(
        [Object[]] $CourseList
    )
    
    foreach ($Course in $CourseList) {
        $Course.Id
        $Course.Name
        $Course.Rating
    }
}
```

The Get-Course function accepts an array of objects ($CourseList) and iterates through each item to display its properties: Id, Name, and Rating.

## Sample Object for CourseList

```
$CourseList = @(
    [PSCustomObject]@{
        Id = 1
        Name = 'AZ-104 Azure Administrator'
        Rating = 4.7
    },
    [PSCustomObject]@{
        Id = 2
        Name = 'AZ-305 Azure Architect Design'
        Rating = 4.8
    },
    [PSCustomObject]@{
        Id = 3
        Name = 'AZ-500 Azure Security'
        Rating = 4.9
    }
)
```

## Calling the Function

```
Get-Course $CourseList
```

This displays details of the courses from the $CourseList.

# Advantages of Using Functions

Reduces code duplication.

Improves script readability and modularity.

Simplifies maintenance and debugging.


### Summary of Key Concepts

| Feature              | Description                                                       |
|----------------------|-------------------------------------------------------------------|
| **Function**         | A named block of code that performs a specific task.              |
| **Parameters**       | Inputs to make a function dynamic and reusable.                   |
| **Return Value**     | Functions can output data using `return` or direct output.        |
| **Object Parameter** | Allows passing complex data structures like objects to functions. |


