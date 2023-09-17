-- explore proper tail calls and how they affect function behavior.

-- Write a Lua function named calculate_factorial that calculates the factorial of a positive integer using proper tail recursion. The function should take two parameters:
-- n: The positive integer for which the factorial is to be calculated.
-- result (optional, with a default value of 1): An accumulator for the factorial calculation.

-- The function should return the factorial of n. Ensure that the recursive calls are in tail position.

-- Function to calculate factorial using proper tail recursion
function calculate_factorial(n, result)
	result = result or 1  -- Initialize result to 1 if not provided

    if n <= 1 then
        return result  -- Base case: factorial of 0 or 1 is 1
    else
        return calculate_factorial(n - 1, n * result)  -- Proper tail recursion
    end
end

-- Test the calculate_factorial function
local n = 5
local factorial = calculate_factorial(n)
print("Factorial of", n, "is", factorial)
