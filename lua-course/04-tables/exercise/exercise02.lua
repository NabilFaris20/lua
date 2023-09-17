-- Use Lua tables to manage a simple book inventory.

-- Create a Lua table named books to manage a book inventory. Each book should have the following information:
-- Title (string)
-- Author (string)
-- ISBN (string)
-- Year Published (integer)

--  Write functions to perform the following operations:
-- a. Add a new book to the books table.
-- b. Search for a book by ISBN and print its details.
-- c. List all the books in the inventory.

-- Create an empty books table to manage the book inventory
local books = {}

-- Function to add a new book to the inventory
function addBook(title, author, isbn, yearPublished)
    local book = {
        Title = title,
        Author = author,
        ISBN = isbn,
        YearPublished = yearPublished
    }
    table.insert(books, book)
end

-- Function to search for a book by ISBN and print its details
function searchBookByISBN(isbn)
    for _, book in ipairs(books) do
        if book.ISBN == isbn then
            print("Title: " .. book.Title)
            print("Author: " .. book.Author)
            print("ISBN: " .. book.ISBN)
            print("Year Published: " .. book.YearPublished)
            print()  -- Add a blank line for readability
            return  -- Exit the function after finding the book
        end
    end
    print("Book not found.")
end

-- Function to list all the books in the inventory
function listAllBooks()
    if #books == 0 then
        print("Inventory is empty.")
    else
        for i, book in ipairs(books) do
            print("Book " .. i .. ":")
            print("Title: " .. book.Title)
            print("Author: " .. book.Author)
            print("ISBN: " .. book.ISBN)
            print("Year Published: " .. book.YearPublished)
            print()  -- Add a blank line for readability
        end
    end
end

-- Add some books to the inventory
addBook("The Catcher in the Rye", "J.D. Salinger", "9780316769488", 1951)
addBook("To Kill a Mockingbird", "Harper Lee", "9780061120084", 1960)

-- Search for a book by ISBN and print its details
searchBookByISBN("9780316769488")  -- Search for a book by ISBN

-- List all the books in the inventory
listAllBooks()  -- List all the books in the inventory