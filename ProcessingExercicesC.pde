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
 
 
 //C.5//CHAUD !!!!
 
 //Je créé ma fonction CarreSupPetit auquel j'attribu un entier en paramétre ()//
 int CarreSupPetit (int Entier) {
 for (int valeur=1; valeur <= 100; valeur=valeur+1) { //puis j'intègre ma boucle for en m'inspirant des exercices precedents. //
 if (valeur*valeur> Entier) { //Enfin je viens appliquer une condition dans ma boucle indiquant que dès que (ma valeur*ma valeur) est supérieur à l'entier de mon paramétre ...///
 return valeur*valeur;//PAF je returne "conserve" cette valeur.
 }
 }
 return 0;   // Attention ici je suis obligé d'indiquer une sortie à ma boucle et je dois la placer en dehors de ma boucle(Mais à l'intérieur de ma fonction), sinon ça pète tout.  //
 }
 //Pour finir j'ouvre ma console pour lui demander d'imprimer le resultat de ma fonction//
 void setup() {
 println("Le plus petit carré supérieur par rapport à ma valeur est", CarreSupPetit(60));
 }
 
 
 //C.6//  FUN !!
 
 int CarreInfGrand (int Entier) {
 for (int valeur=1; valeur <= 100; valeur=valeur+1) { //puis j'intègre ma boucle for en m'inspirant des exercices precedents. //
 if (valeur*valeur > Entier) { //J'applique la même condition que pour mon C.5///
 return (valeur-1)*(valeur-1);//REPAF je returne "conserve" cette valeur moins 1 unité pour obtenir la valeur inférieur //
 }
 }
 return 0;   // Attention ici je suis obligé d'indiquer une sortie à ma boucle et je dois la placer en dehors de ma boucle(Mais à l'intérieur de ma fonction), sinon ça pète tout.  //
 }
 //Pour finir j'ouvre ma console pour lui demander d'imprimer le resultat de ma fonction//
 void setup() {
 println("Le plus grand carré inferieur par rapport à ma valeur est", CarreInfGrand (60));
 }
 
 
 
 //C.7// HARD
 
 int resultat(){//Je cré ma fonction resulat//
 int total= 0;//Je cré une variable total//
 for(int i = 0; i <= 100; i=i+1){//Je cré une boucle dans laquelle j'intègre ma deuxième variable//
 total = total + i;//J'intègre dans ma boucle le calcul de ma première variable plus le resultat de i=1 (de l'update ci-dessus)//
 println (total);//Pour voir le système fonctionner je demande un print//
 }
 return total;//Je retourne "conserve" le resulat que j'ajoute à ma variable int total au dessus de ma boucle//
 }
 
 
 //Et je balance l'impression de ma fonction///
 void setup (){
 println (resultat());
 }
 
 //C.8// SYRACUSE //
 
 void Syracuse (int S) { // Je cré ma fonction avec un paramètre entier (int S)//
 for(int i =0; i <= 20; i++){ // Je crée une boucle pour afficher la suite syracuse//
 int modu= S%2; // je crée la variable qui va me permetttre de voir si mon entier est pair ou impair //
 println (S); // Un coup de print //
 if (modu == 0) { // On balance la conditions si modu est egale à zéro//
 S=S/2; // Alors je le divise par deux//
 //println (S);// Un coup de print //
 }
 else{
 S=((S*3)+1);// sinon j'aplique la régle syracuse pour les impairees //
 //println (S);// Un coup de print //
 }
 }
 }
 //Et je balance ma fonction///
 void setup () {
 Syracuse(14);
 }
 


//C.8 Bonus// PAS EU LE TEMPS DE FINIR//

void isPrime (int P) {
  for ( int i=2; i<=100; i=i++) {
    int modu =P%1;
    
    
  }
}

void setup () {
  isPrime(10);
}

 */
 
 
