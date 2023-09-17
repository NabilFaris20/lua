-- Write a function that takes an arbitrary number of values and returns all of them, except the first one and:-
-- a) the maximum value among the arguments, 
-- b) the minimum value among the arguments, 
-- c) the sum of all arguments.

--[[function excludeFirst(...)
    local args = { ... }
    if #args < 2 then
        return -- No elements to return other than the first one
    end
    table.remove(args, 1) -- Remove the first element
    return table.unpack(args)
end

-- Example usage:
local secondToLast = { excludeFirst(1, 2, 3, 4, 5) }
for _, v in ipairs(secondToLast) do
    print(v) -- This will print: 2, 3, 4, 5
end]]

function processValues(...)
    local args = { ... }
    local max, min, sum = args[1], args[1], args[1]

    for i = 2, #args do
        local val = args[i]
        max = math.max(max, val)
        min = math.min(min, val)
        sum = sum + val
    end

    table.remove(args, 1)

    return args, max, min, sum
end

-- Example usage:
local values, maxValue, minValue, sumValue = processValues(5, 8, 2, 10, 1)

print("Values except the first one:", table.unpack(values))
print("Max value:", maxValue)
print("Min value:", minValue)
print("Sum of values:", sumValue)
