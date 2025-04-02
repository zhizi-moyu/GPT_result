module rounded_box(width, depth, height, radius) {
    minkowski() {
        cube([width - 2*radius, depth - 2*radius, height - 2*radius], true);
        sphere(r=radius);
    }
}

rounded_box(20, 20, 10, 2);
