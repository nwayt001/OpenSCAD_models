//resolution parm
$fa = 1; 
$fs = 0.4;

module wheel(wheel_r=6, side_sphere_r = 8, cyl_r = 1.8, hub_thickness = 3.25){

    difference(){
    //main sphere
    sphere(wheel_r);   
    //side sphere 1
    translate([0,hub_thickness,0])
    scale([1,0.4,1])
    sphere(side_sphere_r);   
    //side sphere 2
    translate([0,-hub_thickness,0])
    scale([1,0.4,1])
    sphere(side_sphere_r);   
    //cylinder 1
    translate([3.25,0,0])
    rotate([-90,0,0])
    cylinder(5,r=cyl_r, center = true);   
    //cylinder 2
    translate([-3.25,0,0])
    rotate([-90,0,0])
    cylinder(5,r=cyl_r, center = true);
    //cylinder 3
    translate([0,0,-3.25])
    rotate([-90,0,0])
    cylinder(5,r=cyl_r, center = true);
    //cylinder 4
    translate([0,0,3.25])
    rotate([-90,0,0])
    cylinder(5,r=cyl_r, center = true);

    }
}

wheel(wheel_r = 7, side_sphere =9, hub_thickness=4);
