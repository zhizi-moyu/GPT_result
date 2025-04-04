module reconstructed_model() {
    // Base cube
    translate([0, 0, 5]) // Lift the base cube to align
    cube([10, 10, 10]);

    // Sloped part
    translate([0, 0, 0])
    linear_extrude(height = 5)
    polygon(points=[
        [0, 0], 
        [10, 0], 
        [10, 5], 
        [0, 10]
    ]);
}

reconstructed_model();
