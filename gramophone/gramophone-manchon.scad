module manchon($Di,$e,$h,$di,$ef) {
    /* $Di = grand diamètre intérieur
     * $di : petit diamètre intérieur
     * $e  : épaisseur de paroi
     * $h  : hauteur
     * $ef : épaisseur du fond
     *************************************/
    difference(){
        $fn = 200;
        union(){
            cylinder(d = $Di+2*$e ,h = $h, center =true);
        }
        union(){
            translate([0,0,-$h/2+2]){cylinder(d = $di ,h = $e+2, center =true);}
            translate([0,0,$ef]){cylinder(d = $Di ,h = $h+2, center =true);}
        }
    }
}

/*
 * petite marge de sécurité (1%) sur les diamètres
 *****************************************************/
scale([1.01,1.01,1.0]){manchon(60.5,3,20.3,25,5);}