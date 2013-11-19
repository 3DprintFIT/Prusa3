//translate([5,0,5+8]) %cube([26,26,10], center=true);



translate([30,0,0]) %cylinder(r=15.8/2, h=30);

difference(){
union(){
translate([7,0,12]) cube([30,26,24], center=true);
translate([8.5+2.5,0,12]) cube([38,20,24], center=true);
translate([30,0,0]) cylinder(r=20/2, h=24);
}

// main cutout
//translate([8.5-2,0,4.5]) cube([25,22,8], center=true);

// nozzle full cutout
translate([30,0,1.3]) cylinder(r=15.8/2, h=24);
translate([23,0,1.3]) cylinder(r=15.8/2, h=24);
translate([8.5+2,0,16.3]) cube([28,15.8,30], center=true);

// nozzle center cutout
translate([35,0,4.5]) cube([10,9,30], center=true);
translate([30,0,-0.5]) cylinder(r=9/2, h=25);

//slide in cutout
translate([42,0,9.5]) rotate([0,0,45]) cube([20,20,40], center=true);

// fan screws cutouts
//translate([-5,10,0.5]) cylinder(r=1.5, h=10, $fn=15);
//translate([-5,-10,0.5]) cylinder(r=1.5, h=10, $fn=15);
//translate([15,10,0.5]) cylinder(r=1.5, h=10, $fn=15);
//translate([15,-10,0.5]) cylinder(r=1.5, h=10, $fn=15);

// angled walls

translate([0,0,15]) rotate([0,45,0]) cube([20,14,20], center=true);
translate([5,5,15]) rotate([45,0,0]) cube([14,20,20], center=true);
translate([5,-5,15]) rotate([45,0,0]) cube([14,20,20], center=true);

// pretty fan
//translate([5,0,0.5]) cylinder(r=11.5, h=10, $fn=45);

// smooth edges

translate([22,17,9.5]) rotate([0,0,45]) cube([10,10,30], center=true);
translate([22,-17,9.5]) rotate([0,0,45]) cube([10,10,30], center=true);


translate([-9,-17,9.5]) rotate([0,0,45]) cube([10,10,30], center=true);
translate([-9,17,9.5]) rotate([0,0,45]) cube([10,10,30], center=true);


translate([0,0,4.5]) cube([30,30,40], center=true);

translate([12,0,20+4]) rotate([0,0,45]) cube([20,20,40], center=true);

}