-- Write a function to compute the volume of a right circular cone, given its height and the angle between a generatrix and the axis.

-- hint: Volume of Cylinder
-- local cylinderVolume = (1/3) * math.pi * radius * radius * height

function coneRadius(height, angle)
    angleRad = math.rad(angle)
    radius = height * math.tan(angleRad)
    return radius
end

function coneVolume(height, angle)
    radius = coneRadius(height, angle) -- Call coneRadius to get the radius
    volume = math.pi * radius * radius * height / 3
    return volume
end

height = 10 -- Height of the cone
angle = 60 -- Angle in degrees

volume = coneVolume(height, angle)

print("The volume of the cone is:", volume)