module main_object() {
    // Main wave-like part
    difference() {
        union() {
            for (i = [0:3]) {
                translate([i * 20, 0, 0]) 
                cylinder(h=50, r=10, center=false);
            }
        }
        translate([-20,0,-5])cylinder(h=50, r=10!);
// Also adjusted able guddportsodule to fit.
