module colonnette($ds,$hs,$dc,$hc,$d,$h){
    $fn = 200;
    cylinder(d=$ds, h=$hs, center="true");
    cylinder(d=$dc, h=$hs+$hc, center="true");
    cylinder(d=$d, h=$hs+$hc+$h, center="true");
}

colonnette(12,3,8,20,3,4);
translate([25,0,0]){colonnette(12,3,8,20,3,4);}
translate([25,25,0]){colonnette(12,3,8,20,3,4);}
translate([0,25,0]){colonnette(12,3,8,20,3,4);}

union(){
    cube([2,25,0.5], center="true");
    cube([25,2,0.5], center="true");
}
translate([25,25,0]){
    rotate([0,0,180]) {
        union(){
            cube([2,25,0.5], center="true");
            cube([25,2,0.5], center="true");
        }
    }
}