-- Write a Lua program that reverses a singly linked list using tables. Create a function called reverseLinkedList that takes the head of the linked list as an argument and returns the head of the reversed list. Each node in the linked list is represented as a table with a value and a next field.

-- Example output
-- Original List:
-- 1
-- 2
-- 3
-- Reversed List:
-- 3
-- 2
-- 1

-- Define a node structure for the linked list
local function createNode(value, nextNode)
    return { value = value, next = nextNode }
end

-- Function to reverse a singly linked list
function reverseLinkedList(head)
    local prev = nil
    local current = head

    while current do
        local nextNode = current.next
        current.next = prev
        prev = current
        current = nextNode
    end

    return prev
end

-- Function to print the linked list
function printLinkedList(head)
    local current = head
    while current do
        print(current.value)
        current = current.next
    end
end

-- Create a sample linked list: 1 -> 2 -> 3
local list = createNode(1, createNode(2, createNode(3)))

-- Print the original list
print("Original List:")
printLinkedList(list)

-- Reverse the list
list = reverseLinkedList(list)

-- Print the reversed list
print("Reversed List:")
printLinkedList(list)
