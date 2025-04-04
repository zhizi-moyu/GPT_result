module coupling() {
    difference() {
        // Primary cylinder
        cylinder(h=30, d=15);
        
        // Subtract half-circles for the flexible part
        for (i = [0:5]) {
            translate([0, 0, i * 5 + 2.5])
            rotate([90, 0, 0])
            cylinder(h=15, d1=15, d2=5);
        }
        
        // Holes on the end faces
        for(i = [-1, 1]) {
            translate([i*7.5, 0, 0])
                cylinder(h=30, d=2, center=true);
        }
        
        // Middle slit
        translate([0, -7.5, 0]) rotate([90, 0, 0])
        cube([15, 15, 20], center=true);
    }
}

coupling();
