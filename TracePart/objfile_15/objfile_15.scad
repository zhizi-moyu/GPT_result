
module main_part() {
    // Create main cylindrical body
    difference() {
        cylinder(h=20, r=10);  // Base cylinder
        cylinder(h=20, r=5);   // Inner hole
    }
}

module side_cutout() {
    // Create the side cutouts (based on estimation)
    translate([-10, 0, 5])
        cube([10, 5, 10]);
}

module decorative_feature() {
    // Create decorative rounded extrusions
    translate([0, 0, 10])
        sphere(r=3);
    translate([0, 10, 10])
        sphere(r=3);
}

module multi_part() {
    main_part();
    side_cutout();
    decorative_feature();
}

// Call main module
multi_part();

