// Main body of the piece
module main_body() {
    difference() {
        // Cylindrical main body with various segments
        union() {
            cylinder(h = 10, d1 = 12, d2 = 12, center = true); // Center segment
            translate([0, 0, -10])
                cylinder(h = 10, d1 = 10, d2 = 12, center = false); // Left segment
            translate([0, 0, 10])
                cylinder(h = 10, d1 = 12, d2 = 10, center = true); // Right segment
        }
        
        // Cut-outs
        translate([0, 0, -5])
            cylinder(h = 20, d = 8, center = true);
        rotate([90, 0, 0])
            translate([0, 0, 0])
                cylinder(h = 12, d = 2, center = true);
    }
}

// Assemble the model
main_body();

