difference(){
	cube(size=[16,21,25], center = false);
	union() {
		translate([14.6,-0.1,15])cube(size = [1.5,22,11]);
		translate([14.6,5.3,13.1])cube(size = [1.5,10.4,2]);

		translate([16/2-3.3,10,-0.1])cube(size = [6.6,25,26]);
		translate([16/2,8,-0.1])cylinder(h = 30, r=4.4);

		translate([4.3,8,-0.1])rotate([0,0,3])cube(size = [3,15,26]);
		translate([8.7,8,-0.1])rotate([0,0,-3])cube(size = [3,15,26]);

		translate([-0.1,21-5,9])rotate([0,90,0])cylinder(h = 16, r=1.6, $fn=12);
		translate([16-2.4,21-5,9])rotate([0,90,0])cylinder(h = 2.5, r=2.9, $fn=6);	
	}
}

