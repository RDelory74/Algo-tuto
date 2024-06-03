int[][] initboard(int larg, int haut, int bomb) {

  int [][] board= new int [larg][haut];

  for (int i=0; i<board.length; i++) {
    for (int j=0; j< board[i].length; j++) {
      board [i][j]= 0;
      //print (board [i][j]);
    }
    //println ();
  }
  //println ();

  while (bomb!=0) {
    int v = floor(random (0, larg));
    int x = floor(random (0, haut));
    if (board[v][x] == 0) {
      board [v][x] = 99;
      bomb=bomb-1;
    }
  }

  return board;
}

boolean isAMine(int[][] board, int cellulex, int celluley) {
  if (board [cellulex][celluley]  == 99) {
    println("Oui apparait alors un X");
    return true;
  } else {
    println ("non");
    return false;
  }
}


int getMines (int[][] board, int cellulex, int celluley) {

  int nbbomb=0;

  if (cellulex >= 0 && cellulex < board.length) {    //// La je dit que: SI la cellule est bien dans le tableau
    if (celluley >=0 && celluley < board.length) {
      print ("Il est bien dans le tableau ");
    }
  }


  if (isAMine(board, cellulex, celluley) == false && board[cellulex+1][celluley+1]==99) {
    println ("Bomb en bas à droite : "+"1");
    nbbomb=nbbomb +1;
  }
  if (isAMine(board, cellulex, celluley) == false && board[cellulex-1][celluley-1]==99) {
    println ("Bomb en haut a gauche : "+"1");
    nbbomb=nbbomb +1;
  }
  if (isAMine(board, cellulex, celluley) == false && board[cellulex][celluley-1]==99) {
    println ("Bomb en haut: "+"1");
    nbbomb=nbbomb +1;
  }
  if (isAMine(board, cellulex, celluley) == false && board[cellulex-1][celluley]==99) {
    println ("Bomb à gauche: "+"1");
    nbbomb=nbbomb +1;
  }
  if (isAMine(board, cellulex, celluley) == false && board[cellulex+1][celluley]==99) {
    println ("Bomb à droite: "+"1");
    nbbomb=nbbomb +1;
  }
  if (isAMine(board, cellulex, celluley) == false && board[cellulex-1][celluley+1]==99) {
    println ("Bomb en bas a gauche : "+"1");
    nbbomb=nbbomb +1;
  }
  if (isAMine(board, cellulex, celluley) == false && board[cellulex][celluley+1]==99) {
    println ("Bomb en bas : "+"1");
    nbbomb=nbbomb +1;
  }
  if (isAMine(board, cellulex, celluley) == false && board[cellulex+1][celluley-1]==99) {
    println ("Bomb en haut à droite: "+"1");
    nbbomb=nbbomb +1;
  }


  println ("Nombre de bombes autour de la cellule indéxée :" + nbbomb);

  return nbbomb;
}





void Printfonction (int[][] board ) {
  for (int i=0; i<board.length; i++) {
    for (int j=0; j< board[i].length; j++) {

      print   (board [i][j]);
    }
    println ();
  }
  println ();
}



  void setup () {
    int[][] board;
    board = initboard(5, 10, 5);
    Printfonction(board);
    print ("Est ce qu'il y a une bombe sur la case indéxée ? : ");
    isAMine(board, 3, 2);
    getMines(board, 3, 2);
  }
  // int[][] boardTest = {{0,99},{0,99}};

  //println("Should equals 3 ",getMines(boardTest, 3,5));
  //println("Should equals 0 ",getMines(boardTest, 2,2));
