$fn = 50;
module prise_carte_SENSIVIC($d,$e,$E,$p){
	difference(){
		union(){
			hull(){
				translate([-$E/2,0,0]){cylinder(d = 3*$d, h = $e, center = true);}
				translate([ $E/2,0,0]){cylinder(d = 3*$d, h = $e, center = true);}
			}
            hull(){
				translate([-$E/2,  0,0]){cylinder(d = 3*$d, h = $e, center = true);}
				translate([-$E/2,-$p,0]){cylinder(d = 3*$d, h = $e, center = true);}
			}
            hull(){
				translate([$E/2,  0,0]){cylinder(d = 3*$d, h = $e, center = true);}
				translate([$E/2,-$p,0]){cylinder(d = 3*$d, h = $e, center = true);}
			}           
		}
		union(){
			translate([-$E/2,-$p,-1]){cylinder(d = $d, h = 3*$e+3, center = true);}
			translate([ $E/2,-$p,-1]){cylinder(d = $d, h = 3*$e+3, center = true);}
		}
	}
}

//prise_carte_SENSIVIC(5,3,56,20);