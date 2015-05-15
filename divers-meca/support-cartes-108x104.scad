difference(){
    union(){
        cube([116,10,10], center= true);
        translate([-56,10,0]){cube([10,30,10], center= true);}
        translate([ 56,10,0]){cube([10,30,10], center= true);}
    }
    union(){
        translate([-52,22,-1]){cube([4,2,14], center= true);}
        translate([ 52,22,-1]){cube([4,2,14], center= true);}
    }
}