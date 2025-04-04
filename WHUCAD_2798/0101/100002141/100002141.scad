
// Main module to create the bracket
module bracket() {
    difference() {
        union() {
            // Base plate
            cube([60, 60, 5], center = true);
            
            // Vertical plate
            translate([0, 27.5, 5]) 
                cube([60, 5, 40], center = true);
        }
        
        // Center hole on the base plate
        translate([0, 0, 0])
            cylinder(h=10, r=10, center=true);

        // Screw holes
        for(x = [-20, 20])
            for(y = [-20, 20])
                translate([x, y, 0])
                    cylinder(h=10, r=3, center=true);
                    
        // Slots in the vertical plate
        for(x = [-20, 20])
            translate([x, 27.5, 20])
                rotate([90, 0, 0])
                    cube([30, 3, 5], center = true);
    }
}

// Call the main module
bracket();

