	$fn = 50;

//	pince plate
//		$d1 : diametre des tiges du support
//		$d2 : diametre du trou de la vis de serrage
//		$e  : épaisseur de la pince
//		$E	: écartement des tiges du suppoet

module pince_plate ($d1,$d2,$e,$E) {
	difference() {
		union(){
			hull(){
				translate([0,-$E/2,0]){cylinder(d = 3*$d1, h = $e, center = true);}
				translate([0, $E/2,0]){cylinder(d = 3*$d1, h = $e, center = true);}	
			}
			translate([0,-$E/2,-($e/2-$e/6)]){cube([3*$d1,($E+$d1)/2,$e/3], center = true);}
		}
		union () {
			translate([0,-$E/2,-1]){cylinder(d = $d1, h = $e+3, center = true);}
			translate([0, $E/2,-1]){cylinder(d = $d1, h = $e+3, center = true);}
			translate([0, $d1,-1]){cube([$d1/1.5,$E+2*$d1,$e+3], center = true);}
			rotate([0,90,0]) {cylinder(d = $d2, h = 3*$d1+3, center = true);}
		}
	}
}

//pince_plate(6.2,4.1,10,30);