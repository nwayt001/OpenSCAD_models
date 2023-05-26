use <MCAD/boxes.scad>
use <ball_marker.scad>
$fa=1;
$fs=0.3;


difference(){
roundedBox(size=[33,43,26],radius=2,sidesonly=false);

cylinder(h = 30, r = 13, center = true);
}

base_ball_marker();