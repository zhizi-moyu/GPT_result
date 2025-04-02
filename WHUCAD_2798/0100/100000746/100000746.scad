
module frame() {
    translate([0, 0, 0]) {
        difference() {
            // Outer shape
            scale([1, 0.5, 1])
                rotate([90, 0, 0])
                cylinder(h=15, r1=5, r2=5, center=true);
            
            // Inner shape
            translate([0, 0, -0.5]) {
                scale([1, 0.5, 1])
                    rotate([90, 0, 0])
                    cylinder(h=15, r1=4.5, r2=4.5, center=true);
            }
        }
    }
}

frame();

