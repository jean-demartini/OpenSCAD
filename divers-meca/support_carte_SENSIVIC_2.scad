include <pince_ronde.scad>
include <prise_carte_SENSIVIC.scad>


pince_ronde(35,21,12,54,6,6);
translate([50,0,-4.5]){
    rotate([0,0,90]){
        prise_carte_SENSIVIC(5,3,56,20);
    }
}

// deport
translate([12,-10,-6]){
    cube([40,20,3], center="true"); 
}
// raidisseur
translate([15,-1.5,-6]){
    cube([35,3,6], center="true");
}
// arrondi du raidisseur
translate([50,1.5,-3]){
    rotate([90,0,0]){
        cylinder(d=6, h=3, center="true");
    }
}