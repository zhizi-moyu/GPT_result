module main_part() {
    union() {
        // Cylinder base
        translate([0, 0, 0]) cylinder(h=20, r=5, center=true);

        // Upper block with holes
        translate([0, 0, 12]) {
            difference() {
                // Create main block
                cube([20, 10, 8], center=true);

                // Cutting holes
                translate([-8, 0, 0])
                    rotate([90, 0, 0])
                    cylinder(h=12, r=1.5, center=true);

                translate([8, 0, 0])
                    rotate([90, 0, 0])
                    cylinder(h=12, r=1.5, center=true);
            }
        }
    }
}

main_part();
