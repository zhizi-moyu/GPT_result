
// Define the main shape
module main_shape() {
    difference() {
        // Extruded polygon based on observed shape
        linear_extrude(height = 2)
            polygon(points = [[-5, -3.6], [-1.5, -4.6], [2.5, -4.3], [6, -2], [4, 2], [-3, 3.4], [-5, 0]]);
        
        // Subtracting a small cylinder for edge rounding
        translate([-1.5, -4.8, 0]) rotate([90, 0, 0]) 
            cylinder(h = 2, r = 0.7);
    }
}

// Render the object
main_shape();

