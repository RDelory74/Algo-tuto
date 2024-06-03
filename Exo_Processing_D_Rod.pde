


//D.1.1// Les tableaux // La valeur MAX
/*
int GetMAX (int[] board) {   //Je crée une fonction que je nomme GetMAX et à laquel j'attribu le paramètre (int[] board)
 int MAx = board [0];     // J'intègre ma variable MAx à laquelle j'incrémente" WHOAA" la valeur de la cellule désignée du tableau board.
 for(int i=1; i<board.length;i++){    // Allé on envoi une boucle avec pour grandeur la taille du tableau (board.length)
 
 if (board[i] > MAx){    // Maintenant condition:  si la valeur de la cellule désignée du tableau board [i] (i étant mon monteur qui fait défiler les celulles pour les compérarer à MAx)
 MAx=board[i];        // Je modifie ma variable en lui appliquant la valeur de la cellule;
 
 }
 
 }
 return MAx; // PAF je renvoi MAx à sa variable//
 }
 
 
 //Et je balance l'impression de ma fonction///
 void setup() {
 int[] board = { 7, 2, 9, 10, 1, -4 };
 println  ("La valeur maximum du tableau est : ", GetMAX(board));
 
 }
 
 
 //D1.2// La somme des valeurs
 int[] board = { 7, 2, 9, 10, 1, -4 }; // J'intègre ma variable tableau en globale ce coup-ci (dans le dernier exo il était en local dans mon void setup)
 int getSum (int[] board) {        // On ouvre la fonction  on la nomme comme demandé puis on lui attribu le tableau en paramètre//
 int Somme = board[0];        // On intègre une variable Somme à laquelle on va appliquer le resulatt des valeurs de mes cellules designées//
 for(int i=1; i<board.length; i++){    // On balance la boucle //
 Somme =Somme + board [i];    //Et ça adittionne à chaque passage de cellule//
 }
 return Somme;    // Je remonte le resulat de chaque passage à ma variable (int Somme appellé plus haut) //
 }
 //Et je balance l'impression de ma fonction///
 void setup (){
 println ("La somme de toutes les valeurs du tableau board est de", getSum(board));
 }
 
 
 //D1.3//La moyenne des valeurs
 int[] board = { 7, 2, 9, 10, 1, -4 };    // Ici je viens intégrer mes variables globales à savoir (mon tableau/ma somme/ma moy)
 int Somme = board[0];
 float mean;
 
 int getSum (int[] board) {
 for(int i=1; i<board.length; i++){
 Somme =Somme + board [i];
 }
 return Somme;
 }
 
 float getMean (int[] board, int Somme){ //Je crée ma fonction getMean pour calculer ma moyenne et je vais appeller mes deux variables globales en paramétre de plus il s'agit d'une moyenne alors je crée une fonction float//
 float mean=Somme/board.length;    // J'applique le calcul nb de valeurs divisées par la somme pour trouver ma moyenne//
 return mean;    // t PAF je la conserve "return" vers la variable globale//
 }
 
 
 void setup () {
 println ("La somme des valeurs est de ", getSum (board));
 println ("La moyenne des valeurs est de ", getMean (board, Somme));
 }
 */



//D2// Toto les pieds dans l'eau//

//J'ai donc supprimé l'ancienne fonction booleene (entre slash ci-dessous) que j'ai remplacé par un tableau booleen appellé boolean [] isNearWater//

/*
// Ancienne fonction//
 boolean isNearWater (){
 if(position_toto <1 || position_toto >4){ //avec ma condition si toto se situe avant la case 1 ou après la case 4 il marche
 return true;}
 else{// sinon
 return false;}
 }
 */
/*
boolean [] isNearWater = {false,false,true,false,true,false,false,false};
 
 
 // Enfin je viens remplacer la condition de ma fonction de mouvement//
 void go (){
 for(int i=1; i<isNearWater.length; i++)
 if (isNearWater[i]){   // J'intègre l'index de la cellule pour indiquer à toto l'action à réaliser //
 jump();
 println ("Booleanne jump from tab");
 }
 else{
 walk();
 println ("Bouleanne walk from tab");
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
 //Mes variables//
 int distance_totale=7;
 int position_toto=0;
 int nbMove=0;
 
 
 //D.3.1// Le démineur
 
 
 
 int[] initboard(int size,int bomb) {    // Je crée ma fonction initboard avec en paramétre la taille du tableau ainsi que le nombre de mines
 
 
 
 int [] board= new int [size];  //J'initialise mon tableau avec en indication une taille de variable size
 
 
 for (int i=0; i<board.length;i++) {    // Je lance une boucle pour parcourir mes cellules
 
 board [i]=0;    // Puis je lui demande de remplir chaque cellule avec une valeur de zéro;
 }
 
 while (bomb!=0){    //Je crée une boucle while pour génerer mes mines de manière aléatoire en lui précisant que s'il n'y a plus de bomb j'arrête la boucle //
 
 int v = floor(random (0, size)); //j'intègre une variable avec une fonction random //
 
 if (board[v] == 0){    // je crée dans cette boucle une condition quyi est de dire que si la cellule est égale à zéro:
 board [v] = 99;      // j'inscri 99 (soit une mine)
 bomb=bomb-1;        // et je déduis une mines de mon stock
 
 }
 
 
 }
 
 return board;    // je retourne "renvoi" la valeur de return
 }
 
 //Et je balance l'impression de ma fonction///
 void setup() {
 println (initboard(10,3));// En précisant bien les valeurs de ma fonction
 }
 
 */

//D.3.2//


int[] initboard(int size, int bomb) {
  int [] board= new int [size];
  for (int i=0; i<board.length; i++) {
    board [i]=0;
  }

  while (bomb!=0) {
    int v = floor(random (0, size));
    if (board[v] == 0) {
      board [v] = 99;
      bomb=bomb-1;
    }
  }
  return board;
}

boolean isAMine(int[] board, int cellule) {
  if (board [cellule]  == 99) {
    println("X");
    return true;
  } else {
    return false;
  }
}

boolean getMines(int[] board,int cellule) {
if (isAMine!=0)||isAMine < board,length)
  if (isAMine (board, cellule-1)||isAMine (board,cellule+1)) {
  
  
  }
}




//Et je balance l'impression de ma fonction///
void setup() {
  int[] board;
  board = initboard(10, 3);
  println (board);// En précisant bien les valeurs de ma fonction

  isAMine(board, 3);
}
