module main_object() {
    difference() {
        // Main cylindrical body
        cylinder(h=20, d=10, center=true);

        translate([0, 0, -10])
            rotate([0, 0, 90])
            cylinder(h=20, d=8, center=true);

        translate([0, 0, 10])
            rotate([0, 0, 90])
            cylinder(h=20, d=7, center=true);
        
        // Adding grooves
        for (i = [1:3])
            translate([0, 0, 2*i*1.5 - 10]) {
                rotate([0, 0, 90])
                cylinder(h=20, d=10 - i, center=true);
            }
        
        // Feature at the front end
        translate([0, 0, 10])
            rotate([90, 0, 0])
            cylinder(h=2, d=8);

        translate([0, 0, 10])
            rotate([90, 0, 0])
            cylinder(h=2, d=4);

        translate([0, 0, 10])
            rotate([0, 0, 45])
            cylinder(h=2, d=6);
    }
}

main_object();
