$fa = 1; 
$fs = 0.4;

translate([30,0,0])
//subtract out inner cylinder
difference() {

// add cube and cylinder
union() {
//cube
translate([0,0,4])
rotate([90,0,0])
cube([9,1,9], center = true);
//cylinder
translate([0,0,5])
cylinder (h = 10, r=5, center = true);

}

    translate([0,0,7])
	cylinder (h = 8, r=4, center = true);

}