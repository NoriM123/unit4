color grey = #C1C1C1;
color brown = #762626;
color lightbrownvl = #D8BE9D;
color darkerlightbrown =#8E7B64;
color gray = #551919;
color darkgray = #A5A5A5;
color grassgreen = #619842;
color darkg = #556C2E;
color beige = #FCE8A3;
void setup() {
  size(800, 600);
}

void draw() {
  background(beige);
  house(350, 350, 0.5);
  house(450, 350, 0.5);
  house(550, 350, 0.5);
  house(650, 350, 0.5);
  house(250, 350, 0.5);
  house(150, 350, 0.5);
  house(50, 350, 0.5);
  stroke(grassgreen);
  fill(grassgreen);
  rect(0, 401, 1000, 200);
  stroke(darkg);
  fill(darkg);
  rect(0, 401, 1000, 25);
  triangle(0, 401, 800, 401, 800, 451);
}

void house(float x, float y, float s ) {
  pushMatrix();
  translate(x, y);
  //rotate(PI/2);
  scale(s);
  

  roof();
  bodyhouse();
  crate();
  door();
  flag();

  popMatrix();
}

void bodyhouse() {
  fill(grey);
  stroke(grey);
  strokeWeight(3);
  rect(0, 0, 100, 100);
  fill(darkgray);
  stroke(darkgray);
  strokeWeight(3);
  rect(75, 0, 25, 100);
}

void roof() {
  fill(brown);
  stroke(brown);
  triangle(-15, -3, 50, -87, 115, -3);
  fill(gray);
  stroke(gray);
  triangle(80, -3, 53, -82, 115, -3);
}

void crate() {
  fill(lightbrownvl);
  stroke(darkerlightbrown);
  strokeWeight(3);
  rect(103, 80, 30, 20, 0, 10, 0, 0);
}
void door() {
  fill(lightbrownvl);
  stroke(darkerlightbrown);
  strokeWeight(3);
  rect(20, 50, 30, 50, 25, 25, 0, 0);
}

void flag() {
}
