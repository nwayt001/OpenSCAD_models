//resolution parm
$fa = 1; 
$fs = 0.4;

use <wheel.scad>

wheel_r = 6;
axle_offset=0.15;
axle_r = 1.25;
base_height = 9;
top_height = 8;
track = 21;
wheel_width=3;
wheel_turn = 0;
body_roll = 0;
wheel_base = 17;
scale([2,2,2]) {
    // main body of car
    rotate([body_roll,0,0]){
        color([1,0,0]) scale([3,1,.8]) sphere(base_height);
        translate([5,0, (base_height/3 + top_height/3)-0.001])
        color([1,0,0])
        scale([1.3,.8,.8]) sphere(top_height);
    }
    // front left wheel
    translate([-wheel_base,-track/2+axle_offset,-3])    
    wheel();

    // front right wheel
    translate([-wheel_base,track/2-axle_offset,-3])    
    wheel();

    // back left wheel
    translate([wheel_base,-track/2+axle_offset,-3])    
    wheel(wheel_r=6.5, hub_thickness=3.5);

    // back right wheel
    translate([wheel_base,track/2-axle_offset,-3])    
    wheel(wheel_r=6.5, hub_thickness=3.5);

    // front axle
    translate([-wheel_base,0,-3])    
    rotate([90,0,0])
    cylinder(h=track, r=axle_r, center = true);

    // back axle
    translate([wheel_base,0,-3])    
    rotate([90,0,0])
    cylinder(h=track, r=axle_r, center = true);
    }