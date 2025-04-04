module reconstruct_object() {
    difference() {
        // Base cylinder
        cylinder(h = 20, r = 15, center = true);

        // Hole in the center
        translate([0, 0, -10])
        cylinder(h = 30, r = 5, center = true);

        // Cutout indentations along the sides
        for (i = [0, 90, 180, 270]) {
            rotate([0, 0, i]) {
                translate([10, 0, -10])
                cube([5, 5, 20], center = true);
            }
        }

        // Additional details as seen in the images
        translate([0, 0, 8])
        difference() {
            cylinder(h = 4, r = 11, center = true);

            for (angle = [0, 90, 180, 270]) {
                rotate([0, 0, angle])
                translate([6, 0, 0])
                cube([5, 5, 5], center = true);
            }
        }
    }
}

// Render the object
reconstruct_object();
