$fn=100;
translate([0,0,40]){
    cube([12,12,80], center=true);
    translate([12,0,30]){
        difference(){
            union(){
                cube([18,12,3], center=true);
                translate([9,0,0]){cylinder(d=12, h=3, center=true);}
            }
            translate([9,0,-1]){cylinder(d=9, h=6, center=true);}
        }
    }
}