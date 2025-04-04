
module complex_part() {
    
    difference() {
        // Base Cube
        cube([30, 20, 10]);
        
        // Cylindrical hole
        translate([15,10,5])
        rotate([90,0,0])
        cylinder(h=30, r=5, center=true);
    }
    
    union() {
        // Adding extruded features or extensions
        translate([3, 0, 10])
        cube([8, 20, 5]);

        translate([18, 0, 10])
        cube([8, 20, 5]);
    }

    // Additional components (as seen in images)
    translate([0, 20, 0])
    rotate([0,0,90])
    cylinder(h=10, r=3);

    translate([30, 0, 5])
    sphere(r=3);
}

complex_part();

