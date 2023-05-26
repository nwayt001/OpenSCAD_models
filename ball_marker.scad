use <MCAD/regular_shapes.scad>

//resolution parm
$fa = 1; 
$fs = 0.2;


roundedRad = 2.;
bmRad = 12;
//translate([roundedRad, roundedRad])
//circle(r=roundedRad);

// add rounded edge to ball marker



difference(){
    //translate([bmRad, bmRad])
    rotate([180,0,180])
    //translate([0,0,-2])
    base_ball_marker();
    
    rotate_extrude()
    translate([bmRad,0,0])
    rotate([180,180,0])
    difference(){
    #square([roundedRad, roundedRad]);

    translate([roundedRad, roundedRad])
    circle(roundedRad);
    }

    
}


//base_ball_marker();
module base_ball_marker() {
difference(){
    union(){    
        cone(10, 2);
        cylinder(2,bmRad,bmRad);
        }
    scale([.7,.7,.7])
    rotate([0,180,0])
    translate([-13.5,-4,-2])
    linear_extrude(5)  
    text("Nick");

}
}