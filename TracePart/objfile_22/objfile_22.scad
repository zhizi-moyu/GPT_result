
module main_object() {
    difference() {
        union() {
            // Main cylinder
            cylinder(h = 20, d = 10, center = true);

            // Middle disc
            translate([0, 0, 10])
                cylinder(h = 2, d = 15, center = true);
                
            // Ring around the middle
            translate([-2.5, -2.5, 8])
                cube([15, 15, 4], center = true);

            // Additional details could be added here
            // Example - Extrusion or smaller shapes for visual alignment
        }
        // Holes or cuts (e.g., for screws, design details, etc.)
        translate([0, 0, 10])
            cylinder(h = 30, d = 3, center = true);
    }
}

main_object();

