module compound_cylinder() {
    // Larger cylinder at the top
    cylinder(h=20, d=30, $fn=50);
    
    // Smaller cylinder at the bottom
    translate([0, 0, -5])
        cylinder(h=10, d=15, $fn=50);
}

compound_cylinder();
