color grey = #C1C1C1;
color brown =#762626;

void setup() {
  size(800, 600);
}

void draw() {
  house(200, 100);
  
}

void house(int x, int y) {
   pushMatrix();
   translate(x,y);
   
  roof();
  bodyhouse();
  crate();
   
   popMatrix();
}

void bodyhouse() {
 fill(grey);
 stroke(brown);
 strokeWeight(3);
 rect(400, 200, 100, 400);
}

void roof() {
 fill(brown)
 stroke(brown);
 strokeWeight(3);
 triangle()
}
