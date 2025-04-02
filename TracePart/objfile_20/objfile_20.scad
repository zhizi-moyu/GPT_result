
// Main shaft
module main_shaft() {
    cylinder(h=100, r=10, center=true);
}

// End caps
module end_caps() {
    translate([0, 0, 50])
        cylinder(h=10, r=25, center=true);
    translate([0, 0, -50])
        cylinder(h=10, r=25, center=true);
}

// Connectors
module connectors() {
    for (i = [-45, 45]) {
        translate([0, 0, i])
            cylinder(h=20, r=17, center=true);
    }
}

// Assembly
module object() {
    main_shaft();
    end_caps();
    connectors();
}

object();

