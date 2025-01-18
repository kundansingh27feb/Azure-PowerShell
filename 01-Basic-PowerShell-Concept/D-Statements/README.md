# PowerShell Statements

In PowerShell, statements are expressions or commands that perform actions or computations. Statements are the building blocks of scripts and functions and define how tasks are executed.

## Types of PowerShell Statements

1. Assignment Statements

2. Conditional Statements

3. Looping Statements

4. Switch Statements

5. Try-Catch-Finally (Error Handling)

6. Command and Expression Statements

## 1. Assignment Statements

Used to assign values to variables.

```
$variable = value
```

## 2. Conditional Statements

Conditional logic is implemented using if, else, and elseif.

```
if (condition) {
    # Code block if condition is true
} elseif (another condition) {
    # Code block if another condition is true
} else {
    # Code block if all conditions are false
}
```

### Example

```
$Age = 25
if ($Age -ge 18) {
    Write-Output "You are an adult."
} else {
    Write-Output "You are a minor."
}
```

### Comparison Operators:

| Operator | Meaning                  |
|----------|--------------------------|
| `-eq`    | Equals                   |
| `-ne`    | Not equal                |
| `-gt`    | Greater than             |
| `-lt`    | Less than                |
| `-ge`    | Greater than or equal    |
| `-le`    | Less than or equal       |


## 3. Looping Statements

Used to repeat actions.

### for Loop

```
for ($i = 1; $i -le 5; $i++) {
    Write-Output "Iteration: $i"
}
```
### foreach Loop

```
$Items = @(1, 2, 3)
foreach ($Item in $Items) {
    Write-Output "Item: $Item"
}
```

### while Loop

```
$i = 1
while ($i -le 5) {
    Write-Output "Count: $i"
    $i++
}
```

### do-while Loop

```
$i = 1
do {
    Write-Output "Count: $i"
    $i++
} while ($i -le 5)
```

## 4. Switch Statements

Used for multiple condition checks.

```
switch ($variable) {
    'Value1' { Write-Output "Matched Value1" }
    'Value2' { Write-Output "Matched Value2" }
    default { Write-Output "No match found" }
}
```

### Example

```
$Color = "Red"
switch ($Color) {
    "Red" { Write-Output "Stop" }
    "Yellow" { Write-Output "Caution" }
    "Green" { Write-Output "Go" }
    default { Write-Output "Invalid color" }
}
```

## 5. Try-Catch-Finally (Error Handling)

Used for structured error handling.

```
try {
    Get-Item "C:\NonExistentFile.txt"
} catch {
    Write-Output "File not found. Error: $_"
} finally {
    Write-Output "Finished checking for the file."
}
```

## 6. Command and Expression Statements

Command statements execute cmdlets or commands.

```
Get-Process
```

### Control Flow Statements Table

| Statement    | Purpose                                   |
|--------------|--------------------------------------------------------|
| `if`         | Executes a block of code if a condition is true.       |
| `elseif`     | Tests additional conditions.                           |
| `else`       | Executes if none of the conditions are true.           |
| `switch`     | Compares a value against multiple cases.               |
| `for`        | Loops with an initializer, condition, and incrementer. |
| `foreach`    | Iterates over items in a collection.                   |
| `while`      | Loops while a condition is true.                       |
| `do-while`   | Executes at least once before checking the condition.  |
| `break`      | Exits a loop or switch statement.                      |
| `continue`   | Skips to the next iteration of a loop.                 |




### Choosing the Right Loop in PowerShell

| Loop Type   | When to Use                                                                                   |
|-------------|-----------------------------------------------------------------------------------------------|
| `for`       | Known number of iterations, control over the counter.                                         |
| `foreach`   | Iterating through arrays, collections, or enumerables without needing manual indexing.        |
| `while`     | Condition-based iteration where the loop may not run if the condition is initially false.     |
| `do-while`  | Condition-based iteration where the loop must run at least once before checking the condition.|

### Real-World Scenarios

| Scenario                                       | Recommended Loop   |
|------------------------------------------------|--------------------|
| Printing numbers from 1 to 100                 | `for`              |
| Processing files in a folder                   | `foreach`          |
| Monitoring system resource usage until a limit | `while`            |
| Asking for user input at least once            | `do-while`         |


# Conclusion

PowerShell statements are used to control the logic and flow of a script or command sequence. Understanding these constructs is essential for writing efficient and maintainable automation scripts.