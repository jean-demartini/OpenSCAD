include <empreinte_ecrou.scad>

module pince_ronde($de, $di, $e, $dp, $ep, $t) {
    $fn = 200;
    difference(){
        translate([0,0,-$e/2]){
            union(){
                cylinder(d=$de, h=$e, center="true");
                translate([-$ep-1.5,-$dp/2,0]){cube([2*$ep+3,$dp,$e], center="true");}
            }
        }
        union(){
            translate([0,0,-$e/2-1]){cylinder(d=$di, h=$e+2, center="true");}
            translate([-1.5,-$dp/2-1,-$e/2-1]){cube([3,$dp+2,$e+2], center="true");}
            translate([-10,$de/2+4,0]){
                rotate([0,90,0]){cylinder(d=$t, h=20, center="true");}
            }
            translate([-10,-$de/2-4,0]){
                rotate([0,90,0]){cylinder(d=$t, h=20, center="true");}
            }
            translate([6,21.5,0]){rotate([0,90,0]){empreinte_ecrou(10,4);}}
            translate([6,-21.5,0]){rotate([0,90,0]){empreinte_ecrou(10,4);}}
        }
    }
}

//pince_ronde(35,20,12,54,6,4.2);
