-- a) Write a function to check whether a given string is a palindrome:
-- ispali("step on no pets") --> true
-- ispali("banana") --> false

-- b) Extend your solution so that it ignores differences in spaces and punctuation.

 isPali = "step on no pets"
 isPali2 = "banana"

function removeSpacesAndPunctuation(str)
    return str:gsub("[%s%p]", "")
    
end

function isPalindrome(str)
    str = removeSpacesAndPunctuation(str) -- Remove spaces and punctuation
    str = str:lower() -- Convert to lowercase for case insensitivity
    local len = #str
    local mid = math.floor(len / 2)

    for i = 1, mid do
        local a = str:sub(i, i)
        local b = str:sub(len - i + 1, len - i + 1)
        if a ~= b then
            return false
        end
    end

    return true
end


print(isPalindrome(isPali))
print(isPalindrome(isPali2))
