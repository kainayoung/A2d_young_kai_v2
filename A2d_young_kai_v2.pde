int x = -28;
int xMove = 14;
int xPosition = 0;
int yPosition = 0;

void setup() {
  size(1414, 800);
  smooth();
}

void draw() {
  background(10);
  for (int i = 0; i < conflicts.length; i++) {
    noStroke();
    //x += xMove;
    //rect(x, 0, 14, 14);
    //rect(x, 788, 14, 14);
    int lineOriginX = i * 14 + 7;
    for (int j = 0; j < conflicts[i].length; j++) {
      int lineEndX = conflicts[i][j];
      lineEndX = lineEndX * 14 + 7;
      if (conflicts[i][0] == -1 && conflicts[i][j] > -1) {
        stroke(255, 0, 0, 145);
        line(lineOriginX, 7, lineEndX, 788);
      }
      if (conflicts[i][0] != -1 && conflicts[i][j] > -1) {
        stroke(0, 0, 255, 145);
        line(lineOriginX, 7, lineEndX, 788);
      }


      /*lineEndX = lineEndX * 14 + 7;
       
       if (conflicts[i][j] > -1) {
       stroke(255, 125);
       line(lineOriginX, 7, lineEndX, 788);
       }*/
    }
  }
}