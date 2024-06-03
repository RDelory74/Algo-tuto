

//Mes variables//
int distance_totale=7;
int position_toto=0;
int nbMove=0;
// j'intègre ma variable booleanne//
boolean isNearWater (){
    if(position_toto <1 || position_toto >4){ //avec ma condition si toto se situe avant la case 1 ou après la case 4il marche
      return true;}
      else{// sinon
       return false;}
}

// Maintenant en fonction de ma booleanne qui m'explique ou est ma position je lui donne une action avec la fonction go//
void go (){ 
  if (isNearWater() == true){
   jump();
   println ("Booleanne jump from process");
  }
  else{
    walk();
    println ("Bouleanne walk from process");
  }
  }

//Fonction print//
void affiche_pos(int position_toto) {
  print("Toto est sur la case : ");
  println(position_toto);
}
//fonction walk//
float walk () {
  position_toto=position_toto+1;
  
  nbMove=nbMove+1;
  println("Il avance en marchant");
  return position_toto;
}
//fonction Jump//
float jump () {
  position_toto=position_toto+2;
  nbMove=nbMove+1;
  println("Toto avance en sautant");
  return position_toto;
}

//ouverture de page//
 void setup() {
  affiche_pos(position_toto);
go ();
  affiche_pos(position_toto);
go ();
  affiche_pos(position_toto);
go ();
  affiche_pos(position_toto);
go ();
  affiche_pos(position_toto);
go ();


  print("Nombre de déplacement : ");
  println(nbMove);

  print("Distance Moyenne : ");
  println(distance_totale/(float)nbMove);
  
}



/*
// condition pour que toto jump ou marche en fonctin de sa position sur la course.//  LA SOLUTION SANS BOULEANNE TROUVE // MAIS PEU FAIRE MIEU ALORS JY SUIS ALLER AVEC LA BOULEANNE
float isNearWater(int position_toto) {
  if (position_toto <1 || position_toto >4) {
    walk();
    println ("walk water");
    return position_toto;

  }
  else {
    jump();
    println ("jump water");
    return position_toto;
    
  }
  
}


//ouverture de page//
 void setup() {


  affiche_pos(position_toto);
  isNearWater(position_toto);
    affiche_pos(position_toto);
  isNearWater(position_toto);
    affiche_pos(position_toto);
  isNearWater(position_toto);
    affiche_pos(position_toto);
  isNearWater(position_toto);
    affiche_pos(position_toto);
  isNearWater(position_toto);
    affiche_pos(position_toto);

  print("Nombre de déplacement : ");
  println(nbMove);

  print("Distance Moyenne : ");
  println(distance_totale/(float)nbMove);
  
}







*/
