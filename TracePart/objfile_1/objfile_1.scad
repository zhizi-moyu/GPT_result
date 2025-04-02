module main_object() {
    difference() {
        // Main cylinder
        cylinder(h = 40, r = 15, center = true);
        
        // Central hole
        translate([0, 0, -20])
            cylinder(h = 60, r = 5, center = true);
        
        // Side cutout 1
        translate([0, 10, 0])
            rotate([90, 0, 0])
                cube([40, 20, 15], center = true);

        // Side cutout 2
        translate([0, -10, 0])
            rotate([90, 0, 0])
                cube([40, 20, 15], center = true);
    }
}

main_object();
