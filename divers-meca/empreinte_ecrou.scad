/***
 *  empreinte d'un écrou pour dégager l'emplacement d'un écrou encagé.
 *
 *  date:   31/03/2015
 *  auteur: Jean DEMARTINI
 ***/
module empreinte_ecrou($d, $e) {
    cylinder(d=$d, h=$e, center = true, $fn=6);
}

//empreinte_ecrou(8,3);