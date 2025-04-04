// Define the overall dimensions
module curved_shape() {
    difference() {
        intersection() {
            // Cylinder to create the curved shape
            cylinder(h = 20, r1 = 0, r2 = 30, $fn = 100);
            // Box to create the triangular cross-section
            translate([-15, -15, 0])
            cube([30, 30, 20]);
        }
        // Cutting away excess using a box
        translate([-15, -15, 0])
        cube([15, 30, 20]);
    }
}

// Render the shape
curved_shape();
