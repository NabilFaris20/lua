-- How can you embed the following fragment of XML as a string in a Lua program?
-- <![CDATA[
--	Hello world
-- ]]>
-- Show at least two different ways.

a = [==[ <![CDATA[
	Hello world
    ]]> ]==] 


b = 
    "<![CDATA[Hello world]]>"

print("a holds ", a)
print("b holds ", b)
 
