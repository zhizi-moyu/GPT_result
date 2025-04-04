module reconstructedObject() {
    // Main L-shaped part
    difference() {
        union() {
            // Horizontal part
            cube([60, 10, 10]);
            // Vertical part
            translate([0, 0, 10])
                cube([10, 10, 50]);
        }
        // Remove excess from the junction
        translate([-5, 5, 10])
            rotate([0, 90, 0])
                cylinder(r=5, h=60);
    }

    // Circular extrusion
    translate([55, 5, 5])
        cylinder(r=5, h=10);
}

reconstructedObject();
