
//D.3.1// Le démineur
 
 /*
 
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

//D.3.2// Démineur en ligne Parcours // 

int[] initboard(int size, int bomb) {
  int [] board= new int [size];
  for (int i=0; i<board.length; i++) {        // Fonction qui initie mon tableau et lui demande de mettre des zéros partout
    board [i]=0;
  }

  while (bomb!=0) {
    int v = floor(random (0, size));        //boucle while qui, tant que le nombre de bombe ne sera pas egale à zéro, va placer des bombes 99 s'il n'y en a pas déja une dessus.
    if (board[v] == 0) {
      board [v] = 99;
      bomb=bomb-1;
    }
  }
  return board;
}

boolean isAMine(int[] board, int cellule) {      // ici ma fonction boolean qui de dit, si je lui indique une cellule, si il y a une bombe desus ou non
  if (board [cellule]  == 99) {
   // println("Oui apparait alors un X");
    return true;
  } else {
   // println ("non");
    return false;
  }
}

int getMines (int[] board, int cellule) {

  int nbbomb=0;      // une variable qui va servir de compteur

  if (cellule >= 0 && cellule < board.length) {    //// La je dit que: SI la cellule est bien dans le tableau    

    //print ("Il est passé par le IF n°1 et la valeur de nbbomb est de : ");
   // println (nbbomb);
      }
      
      
    if (isAMine(board, cellule) == false && board[cellule+1]==99) {      ///et si la cellule d'avant est égale à 99

     // print ("Il est passé par le IF n°2 ");

      nbbomb=nbbomb +1;
    //  print ("Si tu vois ça il devrait ajouter une bombe a nbbomb, dailleurs a cet endroit la valeur de nbbomb est de : ");
    //  println (nbbomb);
 }
      if (isAMine(board, cellule) == false && board[cellule-1]==99) {    /// et si la cellule d'après est égale à 99
        
       // print ("Il est passé par le IF n°3 ");
 
        nbbomb=nbbomb +1;
       // print ("Si tu vois ça il devrait ajouter une bombe a nbbomb, dailleurs a cet endroit la valeur de nbbomb est de : ");
       // println (nbbomb);

    }
  return nbbomb;      /// Je retourne ma valeur nbbomb


}
///Et je balance ma console pour printer le tout  // 
void setup() {
  int[] board;
  board = initboard(10, 3);
  println ("Je lance la fonction qui initie mon tableau et voici mon tableau : ");println (board);// En précisant bien les valeurs de ma fonction
  print ("Est ce qu'il y a une bombe sur la case indéxée ? : ");
   isAMine(board, 3);
  println ("Il y a Combien de bombes autour de la case indéxée ?? : "); 
  println (getMines (board, 3));
}
