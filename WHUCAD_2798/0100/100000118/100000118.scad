module main_object() {
    difference() {
        // Base cube
        cube([100, 100, 50], center=false);
        
        // Inner triangular cut
        translate([25, 25, 0]) {
            polyhedron(
                points = [
                    [0, 0, 0], [50, 0, 0], [0, 50, 0], // base triangle points
                    [0, 0, 50], [50, 0, 50], [0, 50, 50] // top triangle points
                ],
                faces = [
                    [0, 1, 2], [3, 4, 5], // front and back
                    [0, 1, 4, 3], [1, 2, 5, 4], [2, 0, 3, 5] // sides
                ]
            );
        }
    }
}

main_object();
