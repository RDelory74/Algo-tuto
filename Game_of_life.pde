boolean grid[][] = new boolean[128][96];
 
void setup() {
  size(641, 481);
  for (int i = 0; i < 128; i++) {
    for (int j = 0; j < 96; j++) {
      if(random(1) < .4) grid[i][j] = true;
    }
  }
  frameRate(30);
}
 
void draw() {
  textFont(createFont("Courier", 20));
  background(10, 20, 30);
  noStroke();
  for (int i = 0; i < 128; i++) {
    for (int j = 0; j < 96; j++) {
      fill(10, 0, 10);
      if (grid[i][j]) fill(255);
      rect(i*5, j*5, 4, 4);
    }
  }
  update();
}
 
void update() {
  boolean buffer[][] = new boolean[128][96];
  for (int i = 0; i < 128; i++) {
    for (int j = 0; j < 96; j++) {
      int c = 0;
      c+=getpos(i, j+1);
      c+=getpos(i, j-1);
      c+=getpos(i-1, j+1);
      c+=getpos(i-1, j);
      c+=getpos(i-1, j-1);
      c+=getpos(i+1, j+1);
      c+=getpos(i+1, j);
      c+=getpos(i+1, j-1);
      buffer[i][j] = grid[i][j];
      if(!buffer[i][j] && c == 3) buffer[i][j] = true;
      if(buffer[i][j] && (c < 2 || c > 3)) buffer[i][j] = false;
    }
  }
  grid = buffer;
}
 
int getpos(int x, int y){
  if(x > 0 && y > 0 && x < 128 && y < 96){
    if(grid[x][y]) return 1;
  }
  return 0;
}
