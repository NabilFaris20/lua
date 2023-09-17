-- Write a Lua function to calculate the surface area of a sphere given its (a) radius, (b) volume.

-- Hint: Surface area of sphere
-- local surfaceArea = 4 * math.pi * radius * radius

-- Hint: Volume of a sphere
-- local volumeSphere = (4/3) * math.pi * radius * radius * radius

-- Extra: You may extend this exercise to accept user inputs for (a) radius, (b) volume, else, we'll leave this till we discuss about I/O

radius = 3
volume = 13

    function SurfaceAreaRadius(radius)

        surfaceArea = 4 * math.pi * radius * radius
        return surfaceArea

    end

        resultRadius = SurfaceAreaRadius(radius)
        print("The surface area of the sphere using radius is:", resultRadius)


    function SurfaceAreaVolume(volume)

        surfaceArea = math.pi^(1/3) * (6 * volume)^(2/3)
        return surfaceArea

    end

        resultVolume = SurfaceAreaVolume(volume)
        print("The surface area of the sphere using volume is:", resultVolume)
    
   



