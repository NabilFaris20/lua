-- Write a program that reads a text file and rewrites it with its lines sorted in alphabetical order. When called with no arguments, it should read from standard input and write to standard output. When called with one file-name argument, it should read from that file and write to standard output. When called with two file-name arguments, it should read from the first file and write to the second.

-- Function to read lines from a file and store them in a table
function readLinesFromFile(filename)
    local lines = {}
    local file = assert(io.open(filename, "r"))

    for line in file:lines() do
        table.insert(lines, line)
    end

    file:close()
    return lines
end

-- Function to write lines to a file
function writeLinesToFile(filename, lines)
    local file = assert(io.open(filename, "w"))

    for _, line in ipairs(lines) do
        file:write(line, "\n")
    end

    file:close()
end

-- Function to sort lines alphabetically
function sortLines(lines)
    table.sort(lines)
end

-- Check the number of command-line arguments
local args = {...}
if #args == 0 then
    -- Read from standard input
    inputLines = {}
    for line in io.lines() do
        table.insert(inputLines, line)
    end

    -- Sort the lines alphabetically
    sortLines(inputLines)

    -- Write to standard output
    for _, line in ipairs(inputLines) do
        print(line)
    end
else
    -- Read from the specified file
    inputLines = readLinesFromFile(args[1])

    -- Sort the lines alphabetically
    sortLines(inputLines)

    if #args == 1 then
        -- Write to standard output
        for _, line in ipairs(inputLines) do
            print(line)
        end
    elseif #args == 2 then
        -- Write to the specified output file
        writeLinesToFile(args[2], inputLines)
    end
end