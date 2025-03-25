module main_object() {
    difference() {
        union() {
            // Main cylinder
            cylinder(h = 40, r = 15);
            
            // Horizontal rectangular prism extending outwards
            translate([0, 0, 20]) cube([15, 15, 20], center = true);
        }
        
        // Rounded cut (subtraction)
        translate([-10, 0, 20])
        rotate([90, 0, 0])
        cylinder(h = 40, r = 10);
    }
}

main_object();
