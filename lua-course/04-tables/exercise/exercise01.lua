-- Work with Lua tables to store and manipulate student records.

-- Create a Lua table named students that stores student records. Each record should contain the following information:
-- Student Name (string)
-- Student ID (integer)
-- GPA (floating-point number)

-- Create at least three student records in the students table. Then, write a function named print_students that takes the students table as a parameter and prints the records in a readable format.
-- Create the students table with at least three student records


-- Function to print student records

-- Call the function to print the student records

students = {
    {name = "John", id = 01, gpa = 3.8},
    {name = "Bob", id = 02, gpa = 3.5},
    {name = "Dave", id = 03, gpa = 4.0}
}

-- Function to print student records
function print_students(students)
    print("Student Records:")
    for i, student in ipairs(students) do
        print("Name: " .. student.name)
        print("ID: " .. student.id)
        print("GPA: " .. student.gpa)
        print()  -- Add a blank line for readability
    end
end

-- Call the function to print the student records
print_students(students)