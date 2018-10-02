
int[] cols = new int[4];


void setup() {
  size(500, 500);

  for (int i = 0; i < cols.length; i++) {
    cols[i]=0;
  }
  stroke(255,0,120);
}

void draw() {
  int xWidth = width / cols.length;

  if (keyPressed) {

    for ( int i = 0; i < cols.length; i++) {
      if (mouseX< (i + 1) * xWidth && mouseX > xWidth * i){
        cols[i]++;
        
    }
  }
  }

  for (int i = 0; i<cols.length; i++) {
    fill(cols[i]);
    rect(i * xWidth, 0, xWidth, height);
  }
}
