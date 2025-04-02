```scad
// Main module to combine parts of the object
module main_object() {
    union() {
        // Base structure
        difference() {
            cube([100, 10, 40], center = true);
            translate([-20, -5, -20])
                cube([40, 10, 40], center = true);
        }

        // Triangular support structures
        translate([-40, -5, 0])
            rotate([-90, 0, 0])
                linear_extrude(height = 10)
                    polygon(points = [[0, 0], [40, 0], [20, 20]]);
        
        translate([40, -5, 0])
            rotate([-90, 0, 180])
                linear_extrude(height = 10)
                    polygon(points = [[0, 0], [40, 0], [20, 20]]);
            
        // Central cut-out
        translate([0, -5, 0])
            cube([60, 10, 40], center = true);
    }
}

// Call to render the object
main_object();
```
