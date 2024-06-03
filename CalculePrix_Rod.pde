
//Je met mes variables GLOBALES//

int nbillet=3;
float prix=10.5;

//Je met ma fonctions et j'appelle mes paramétres globaux//

// Fonction pour calculer prix du billet//
float calculePrix(int nbillet, float prix) {
  //J'intègre une variable à ma fonction pour calculer nbbillet/prix et je l'appelle total//
  float total;
  total= nbillet*prix;
  //Avec return (utilisable seulement avec float) je conserve ma valeur de sortie afin de m'en reservir dans mon setup//
  return total;
}

// Fonction pour 4 billets//
float calculePrix4(int nbillet, float prix) {
  //J'intègre une variable à ma fonction pour calculer nbbillet/prix et je l'appelle total//
  nbillet=4;
  float total4;
  total4= nbillet*prix;
  //Avec return (utilisable seulement avec float) je conserve ma valeur de sortie afin de m'en reservir dans mon setup//
  return total4;
}

//Fonction pour 9 billets//
float calculePrix9(int nbillet, float prix) {
  //J'intègre une variable à ma fonction pour calculer nbbillet/prix et je l'appelle total//
  nbillet=9;
  float total9;
  total9= nbillet*prix;
  //Avec return (utilisable seulement avec float) je conserve ma valeur de sortie afin de m'en reservir dans mon setup//
  return total9;
}

//Fonction pour calucl prix billet/nb/degressif//
  Float caluclprixgrp(int nbillet){
    float prixgp;
    if (nbillet <5) {
    
    prixgp=10.5;
}
    else {
      prixgp=9;
  }
    float recette = (nbillet*prixgp);
    return recette;
    
    
}



//Ma fenetre d'afichage//

void setup() {
  
  //J'intègre ma condition//

  

  
  //J'intégre une variable pour faire imprimer le resultat//
  float totalcost;
  totalcost=calculePrix (nbillet, prix);
  print("B.1.1 Client n°1 Regis prend 3 billets donc prix pour 3 billets : ");
  println (totalcost);
  
  float totalcost4;
  totalcost4=calculePrix4(nbillet, prix);
  print("Prix pour 4 billets : ");
  println (totalcost4);
  
   float totalcost9;
  totalcost9=calculePrix9(nbillet, prix);
  print("Prix pour 9 billets : ");
  println (totalcost9);
  
  float totalprintB12;
  totalprintB12 = totalcost4 + totalcost9;
  print ("B.1.2 Total encaissé pour achat 4 billets puis achat 9 billets est de ");
  println (totalprintB12);

  float totalprintB2;
  totalprintB2 = caluclprixgrp(4) + caluclprixgrp(9);
  print ("B.2 Total encaissé avec le tarif de groupe est de ");
  println (totalprintB2);
  
  
}
