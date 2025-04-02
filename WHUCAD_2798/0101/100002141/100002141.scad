module reconstructed_object() {
    difference() {
        // Base
        cube([50, 50, 10], center=true);

        // Circular cutout in the base
        translate([0, 0, 5]) {
            cylinder(r=15, h=15, center=true);
        }

        // Corner holes (4 holes on the base plate)
        for (x = [-20, 20])
            for (y = [-20, 20])
                translate([x, y, 5]) {
                    cylinder(r=3, h=15, center=true);
                }

        // Upright support (L-shape wall)
        translate([0, 20, 5]) {
            cube([50, 5, 30], center=true);
        }

        // Rectangular cutout within the upright support
        translate([0, 20, 15]) {
            cube([15, 5, 20], center=true);
        }
        
        // Smaller corner holes in the upright support
        for (x = [-10, 10])
            translate([x, 20, 25]) {
                cylinder(r=3, h=15, center=true);
            }
    }
}

// Render the main object
reconstructed_object();
