-- Write a Lua program that reads student names and their corresponding scores from a file, calculates their grades, and saves the grades to an output file (could either saved to a json or text file or just output on console).

-- Load the json library (you may need to install it)
-- I'm using the json library from (https://github.com/rxi/json.lua)
-- Credits to RXI for this library
-- local json = require "json"



-- Function to calculate the grade based on the score
function calculate_grade(score)
    if score >= 90 then
        return "A"
    elseif score >= 80 then
        return "B"
    elseif score >= 70 then
        return "C"
    elseif score >= 60 then
        return "D"
    else
        return "F"
    end
end

local inputFileName = "student.txt"  -- Replace with your file name
local inputFile = io.open(inputFileName, "r")
if not inputFile then
    error("Failed to open input file: " .. inputFileName)
end

local students = {}  -- Create an empty table to store student data

-- Read and process each line in the text file
for line in inputFile:lines() do
    local name, score = string.match(line, '(%a+)%s+(%d+)')  -- Parse name and score
    if name and score then
        local scoreValue = tonumber(score)
        if scoreValue then
            local grade = calculate_grade(scoreValue)
            table.insert(students, { name = name, score = scoreValue, grade = grade })
        end
    end
end

inputFile:close()

-- Print the calculated grades
for _, student in ipairs(students) do
    print(student.name .. ": Score=" .. student.score .. ", Grade=" .. student.grade)
end
-- Read student data from JSON input file
-- local input_file = "student.json"

-- Insert your code here
