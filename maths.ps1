# Simple calculator program in PowerShell

while ($true) {
    Write-Host "Calculator Menu:"
    Write-Host "1. Addition"
    Write-Host "2. Subtraction"
    Write-Host "3. Multiplication"
    Write-Host "4. Division"
    Write-Host "5. Exit"
    $option = Read-Host "Choose an option [1-5]"

    # Exit condition
    if ($option -eq 5) {
        Write-Host "Exiting..."
        break
    }

    # Prompt for two numbers
    $num1 = [int](Read-Host "Enter the first number")
    $num2 = [int](Read-Host "Enter the second number")

    # Perform operations based on user choice
    switch ($option) {
        1 { $result = $num1 + $num2
            Write-Host "Result: $num1 + $num2 = $result" }
        2 { $result = $num1 - $num2
            Write-Host "Result: $num1 - $num2 = $result" }
        3 { $result = $num1 * $num2
            Write-Host "Result: $num1 * $num2 = $result" }
        4 { 
            if ($num2 -ne 0) {
                $result = $num1 / $num2
                Write-Host "Result: $num1 / $num2 = $result"
            } else {
                Write-Host "Error: Division by zero is not allowed."
            }
        }
        Default { Write-Host "Invalid option. Please try again." }
    }
    Write-Host ""
}
