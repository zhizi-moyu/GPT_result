
// Parameters for basic dimensions
module create_coupling() {
    difference() {
        // Main cylinder
        cylinder(h=60, r=30, center=true);
        
        // Hollow cut-out inside
        translate([0, 0, -30])
            cylinder(h=60, r=25, center=true);
        
        // Lateral cuts
        translate([0, 0, -30])
            rotate([90,0,0])
            for(deg=[0, 180])
                rotate([0, 0, deg])
                    translate([0, -15, 0])
                        cube([50, 5, 60], center=true);

        // Central hole
        translate([0, 0, -30])
            cylinder(h=120, r=5, center=true);
        
        // Protruding small cylinders
        for(deg=[60, 120])
            rotate([0, 0, deg])
                translate([0, 20, 0])
                    rotate([90, 0, 0])
                        cylinder(h=20, r=5, center=false);
    }
}

create_coupling();

