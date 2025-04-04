
module object_with_holes() {
    // Base cuboid
    difference() {
        // Main rectangular block
        translate([0, 0, 0])
            cube([60, 20, 10], center = true);

        // Holes
        translate([-20, 0, 0])
            cylinder(h=12, r=2, center=true);
        
        translate([20, 0, 0])
            cylinder(h=12, r=2, center=true);
    }
}

object_with_holes();

