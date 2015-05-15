include <pince_ronde.scad>
include <prise_carte_SENSIVIC.scad>


pince_ronde(35,21,12,54,6,5);
translate([40,0,-4]){
    rotate([0,0,90]){
        prise_carte_SENSIVIC(5,4,95,20);
    }
}
// deport
translate([12,-10,-6]){
    cube([30,20,4], center="true"); 
}
// raidisseur
translate([10,-2,-5]){
    cube([30,4,8], center="true");
}
translate([40,2,-1]){
    rotate([90,0,0]){
        cylinder(d=8, h=4, center="true");
    }
}