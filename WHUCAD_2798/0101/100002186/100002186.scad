module hex_socket_cylinder() {
    difference() {
        // Main cylinder body
        cylinder(h=30, r=10);
        
        // Hexagonal socket
        translate([0, 0, 30])
        rotate([0, 0, 30])
        extrude(height=3)
        polygon(points=[[0,0], [-4,3], [-4,-3], [4,-3], [4,3], [0,0]]);
    }
    
    // Creating rounded bottom
    translate([0, 0, -2])
    sphere(r=9);
}

hex_socket_cylinder();
