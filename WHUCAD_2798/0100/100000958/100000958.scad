module reconstructed_object() {
    difference() {
        // Base cylinder
        cylinder(h = 10, d1 = 20, d2 = 20, center = true);
        
        // Inner hole
        translate([0, 0, -5])
            cylinder(h = 20, d1 = 5, d2 = 5, center = true);
        
        // Cuts in the side
        for (i = [0, 180]) {
            rotate([0, 0, i])
                translate([-2.5, 0, 0])
                    cube([5, 20, 10], center = true);
        }
    }
}

reconstructed_object();
