# TCL Program: Calculate Volume of a Sphere

# Procedure to calculate the volume of a sphere
proc sphereVolume {r} {
    # Formula: (4/3) * π * r^3
    set pi 3.14159
    set volume [expr {(4.0/3.0) * $pi * pow($r, 3)}]
    return $volume
}

# Ask user to input the radius
puts "Enter the radius of the sphere: "
flush stdout
gets stdin radius

# Validate input
if {$radius <= 0} {
    puts "❌ Error: Radius must be a positive number."
} else {
    # Call the procedure and display result
    set result [sphereVolume $radius]
    puts "The volume of the sphere with radius $radius is: $result cubic units"
}
