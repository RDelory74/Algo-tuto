

void mouton(int x, int y){

rectMode(CENTER);
//ventre//
fill(234, 240, 236);
rect(200+x, 200+y, 200, 50);
//pattes//
fill(68, 33, 25);
rect(110+x, 250+y, 15, 50);
rect(155+x, 250+y, 15, 50);
rect(250+x, 250+y, 15, 50);
rect(285+x, 250+y, 15, 50);
//tete//
rect(330+x, 200+y, 60, 80);
//oreilles//
rect(291+x, 170+y, 15, 50);
rect(370+x, 170+y, 15, 50);
//oeils//
fill(255, 204, 51);
ellipse(310+x, 185+y, 10, 10);
ellipse(350+x, 185+y, 10, 10);

}



void setup(){
  size (1000, 1000);
    background(83, 149, 98);
 //fonctions moutons// 
  mouton(100, 50);
  mouton(300, 400);
  mouton(400, 200);
  mouton(250, 100);

}

 
