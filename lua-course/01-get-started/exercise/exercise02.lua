-- Exercise 02
-- How can you check whether a value is a Boolean without using the function type?

-- Recall type
-- There are eight basic types in Lua: nil, Boolean, number, string, userdata, function, thread, and table. 
-- The function type gives the type name of any given value
-- print(type(true))

-- Insert your code here

myVar = true


if myVar == true or myVar == false then
     print("myVar is a bool")
else
    print("myVar is not a bool")
end