module pyramid_holes(){
    for(x = [-15, 15], y = [-15, 15]) {
        translate([x, y, 0])
        rotate([180, 0, 0])  // Inverted pyramid
        linear_extrude(height = 20, convexity = 10, center = true)
        polygon(points=[[0, 0], [10, -10], [-10, -10]]);
    }
}

difference(){
    // Base solid cube
    cube([40, 40, 20], center = true);
    // Pyramidal indentations
    pyramid_holes();
}
