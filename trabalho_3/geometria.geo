// GMSH geometry file (geometria.geo)

// Define the mesh size
mesh_size = 0.005;

// Define points for the outer domain (10x10 cm)
Point(1) = {0, 0, 0, mesh_size};
Point(2) = {0.1, 0, 0, mesh_size};
Point(3) = {0.1, 0.1, 0, mesh_size};
Point(4) = {0, 0.1, 0, mesh_size};

// Define points for the inner tumor domain (2x2 cm)
Point(5) = {0.04, 0.04, 0, mesh_size/2};
Point(6) = {0.06, 0.04, 0, mesh_size/2};
Point(7) = {0.06, 0.06, 0, mesh_size/2};
Point(8) = {0.04, 0.06, 0, mesh_size/2};

// Define lines for the outer domain
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};

// Define lines for the inner tumor domain
Line(5) = {5, 6};
Line(6) = {6, 7};
Line(7) = {7, 8};
Line(8) = {8, 5};

// Create a line loop for the outer boundary and a line loop for the inner boundary
Curve Loop(1) = {1, 2, 3, 4};
Curve Loop(2) = {5, 6, 7, 8};

// Create the plane surfaces for the healthy tissue and the tumor
Plane Surface(1) = {1, 2};
Plane Surface(2) = {2};

// Define Physical Volumes (the domains)
// This is crucial for FEniCS to identify subdomains
Physical Surface("healthy_tissue") = {1};
Physical Surface("tumor") = {2};

// Define Physical Lines (the boundaries)
// This is crucial for FEniCS to identify boundary conditions
Physical Line("boundary_bottom") = {1};
Physical Line("boundary_right") = {2};
Physical Line("boundary_top") = {3};
Physical Line("boundary_left") = {4};