
module base_plate() {
    difference() {
        cube([50, 50, 5], center = true);
        cylinder(h = 5, r = 2, center = true);
    }
}

translate([0, 0, 2.5])
base_plate();

