module main_object() {
    difference() {
        // Outer rectangular cuboid
        translate([0, 0, 0])
            cube([40, 20, 20]);
        
        // Inner cubic cutout creating the slant
        translate([2, 2, 0])
            cube([36, 16, 18]);

        // Triangular partition cut
        translate([2, 2, 0])
            rotate([0, 45, 0])
                cube([50, 3, 18]);
    }
}

main_object();
