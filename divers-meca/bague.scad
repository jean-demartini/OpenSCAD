module bague($di,$de,$e,$b) {
    $fn = 200;
    difference(){
        union(){
            cylinder(d=$de, h=$e, center="true");
            cylinder(d=$de+4, h=$b, center="true");  // épaulement
        }
        union(){
            translate([0,0,-1]){cylinder(d=$di, h=$e+2, center="true");}
        }
    }
}

bague(20,27,14,4);