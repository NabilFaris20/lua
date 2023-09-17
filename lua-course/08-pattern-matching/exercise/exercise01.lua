-- Write a function split that receives a string and a delimiter pattern and returns a sequence with the chunks in the original string separated by the delimiter:
-- t = split("a whole new world", " ")
-- t = {"a", "whole", "new", "world"}


function split(input, delimiter)
    local result = {}
    for match in (input .. delimiter):gmatch("(.-)" .. delimiter) do
        table.insert(result, match)
    end
    return result
end
-- Example usage:
local input = "a whole new world"
local delimiter = " "
local t = split(input, delimiter)

-- Print the result:
for i, v in ipairs(t) do
    print(i, v)
end
