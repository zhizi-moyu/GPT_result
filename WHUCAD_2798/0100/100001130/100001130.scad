module l_shaped_bracket() {
    difference() {
        union() {
            // Vertical section
            cube([5, 1, 10]);
            
            // Horizontal section
            translate([5, 0, 0])
            cube([10, 1, 5]);
        }
        // Rounding the corner
        translate([5, 0, 5])
        cylinder(r=1, h=1, center=false);
    }
}

l_shaped_bracket();
