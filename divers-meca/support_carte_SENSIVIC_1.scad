include <pince_plate.scad>
include <prise_carte_SENSIVIC.scad>

pince_plate(6.2,4.1,10,30);
translate([0,-55,-3.35]){
	prise_carte_SENSIVIC(4,3.35,56);
}

// liaison
translate([0,-40,-3.35]){
	cube([3*6.2,35,3.35], center = true);
}

// raidisseur
translate([0,-37,-1]){
	union(){
		cube([3,38,6], center = true);
		translate([0,-19,0]){rotate([0,90,0]){cylinder(d = 6,h = 3, center = true);}}
	}
}
