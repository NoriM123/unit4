void setup() {
  size(800, 600);
}

void draw() {
  face(200, 100);
}

void face(int x, int y) {
   pushMatrix();
   translate(x,y);
   popMatrix();
}
