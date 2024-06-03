//Création du programme de mémoire pour Toto avec une boucle while//


//C1.While//
/*
//J'intègre ma variable globale toto_memory//
 int toto_memory = 0;
 // Je créé ma boucle While//
 while (toto_memory < 101) { // Ma boucle se active que dans l'intervalle 0 / 100 //
 println(toto_memory); // Je lui demande d'écrire le reulstat //
 toto_memory = toto_memory + 1; // Et je lui impose d'ajouter une unité //
 }
 
 
 
 
 //C.1 FOR// Dans ma boucle FOR je lui intègre 3 paramètres (la variable avec int * ; le test (toto < 100); enfin l'update c'est à dire la mise à jour)//
 for(int toto_memory=0; toto_memory < 101; toto_memory= toto_memory+1){
 println (toto_memory); // l'action à réaliser.//
 }
 
 
 
 //C.2 // La même dans une boucle FOR sauf que mon update est à +2 //
 for(int toto_memory=0; toto_memory < 101; toto_memory= toto_memory+2){
 println (toto_memory);
 }
 
 
 
 //C.3 // Toujours dans une boucle FOR j'intègre une nouvelle int (toto_memorypuiss) auquel je vais donner la valeur 2 pour faire démarrer ma suite algorithmique (sinon j'ai que des zéros); ensuite j'intègre mon test; enfin l'udpate *2 //
 for(int toto_memorypuiss=2; toto_memorypuiss < 1025; toto_memorypuiss= toto_memorypuiss*2){
 println (toto_memorypuiss);
 }
 
 
 //C.4 // Je reprend ma boucle FOR C1 auquel j'ajoute une action de print ou je demande d'afficher le resultat * le resultat//
 for (int toto_memory=0; toto_memory < 101; toto_memory=toto_memory+1) {
 int carre=toto_memory*toto_memory;
 println(toto_memory);
 println (carre);
 }
 */


//C.5//



void setup() {
  println(CarreSupPetit(60));
}

int CarreSupPetit (int Entier) {
  for (int toto_memory=1; toto_memory < 101; toto_memory=toto_memory+1) {
    int carre=toto_memory*toto_memory;
    if (carre > Entier) {
      return carre;
    }
    return 0;
  }
}
