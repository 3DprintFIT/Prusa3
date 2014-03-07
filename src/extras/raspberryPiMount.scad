uprightsThick = 4;
translate([0,0,0]) 
rotate(a=0, v=[0,0,0]) 
difference()
{
	union()
	{
	

	//Mounting pads
	color("green") translate([80,18+5,0]) rotate(a=0, v=[0,0,0]) cylinder(r=4, h=6, $fn=25);
	color("green") translate([25.5,43.5+5,0]) rotate(a=0, v=[0,0,0]) cylinder(r=4, h=6, $fn=25);


	//Frame

	//Vertical parts
	translate([25.5-3,0,0]) rotate([0,0,0]) cube([6,60-1,6]);
	translate([80-3,0,0]) rotate([0,0,0]) cube([6,60-1,6]);

	//Horizontal parts
	translate([25.5,18+5-2,0]) rotate([0,0,0]) cube([54.5,4,6]);
	translate([25.5,56+5-12.5-2,0]) rotate([0,0,0]) cube([54.5,4,6]);

	//Pi Clips
	
	//Uprights
	translate([25.5-3,0-uprightsThick/2,0]) rotate([0,0,0]) cube([6,uprightsThick,14+2]);
	translate([80-3,0-uprightsThick/2,0]) rotate([0,0,0]) cube([6,uprightsThick,14+2]);
	translate([25.5-3,60-2,0]) rotate([0,0,0]) cube([6,uprightsThick,14+2]);
	translate([80-3,60-2,0]) rotate([0,0,0]) cube([6,uprightsThick,14+2]);	

	//Clips
	color("red") translate([25.5-3,2,12.5+2]) rotate(a=90, v=[0,1,0]) cylinder(r=1.5, h=6, $fn=25);
	color("red") translate([80-3,2,12.5+2]) rotate(a=90, v=[0,1,0]) cylinder(r=1.5, h=6, $fn=25);
	color("red") translate([25.5-3,60-2,12.5+2]) rotate(a=90, v=[0,1,0]) cylinder(r=1.5, h=6, $fn=25);
	color("red") translate([80-3,60-2,12.5+2]) rotate(a=90, v=[0,1,0]) cylinder(r=1.5, h=6, $fn=25);

	//Spacer pads
	color("green") translate([40,30+5,0]) rotate(a=0, v=[0,0,0]) cylinder(r=3, h=3, $fn=25);
	color("green") translate([60,30+5,0]) rotate(a=0, v=[0,0,0]) cylinder(r=3, h=3, $fn=25);

	}

	union()
	{
	
	//Mounting holes
	color("red") translate([80,18+5,-1]) rotate(a=0, v=[0,0,0]) cylinder(r=1.7, h=10, $fn=25);
	color("red") translate([25.5,43.5+5,-1]) rotate(a=0, v=[0,0,0]) cylinder(r=1.7, h=10, $fn=25);

	//Countersink holes
	color("red") translate([80,18+5,3]) rotate(a=0, v=[0,0,0]) cylinder(r=3, h=4, $fn=25);
	color("red") translate([25.5,43.5+5,3]) rotate(a=0, v=[0,0,0]) cylinder(r=3, h=4, $fn=25);

	//Spacer pad holes
	color("red") translate([40,30+5,-1]) rotate(a=0, v=[0,0,0]) cylinder(r=1.7, h=10, $fn=25);
	color("red") translate([60,30+5,-1]) rotate(a=0, v=[0,0,0]) cylinder(r=1.7, h=10, $fn=25);


	}
}


