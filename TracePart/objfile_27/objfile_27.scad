
module main_part() {
    difference() {
        // Main cylinder
        cylinder(h = 20, d = 10, $fn=100);

        // Holes on the sides
        translate([5, 0, 10])
            rotate([90, 0, 0])
            cylinder(h = 12, d = 4, $fn=100);

        translate([-5, 0, 10])
            rotate([90, 0, 0])
            cylinder(h = 12, d = 4, $fn=100);
        
        // Central hole
        translate([0, 0, -1])
            cylinder(h = 22, d = 2, $fn=100);
    }
}

main_part();

