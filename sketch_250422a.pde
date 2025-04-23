color darkblue = #001f3f;
color cyan = #00c9ff;
color deepBlue = #001f3f;
color aqua = #00ffff;
color seaGreen = #2e8b57;
color coralPink = #ff7f50;
color sandy = #f4e2d8;
color bubbleWhite = #e0ffff;
color sunYellow = #fff700;
color fishOrange = #ffa500;
color rockGray = #7d7f7d;
color reefPurple = #800080;

void setup() {
  size(800, 600);
  drawGradient(color(cyan), color(darkblue));
  fish(int(random(0, 800)), int(random(0, 600)));
  drawFish(random(300, 400), random(300,600), 1.5);
  fish(int(random(0, 800)), int(random(0, 600)));
  thing(200,400);
}

void drawGradient(color c1, color c2) {
  int y = 0;
  while (y < height) {
    float inter = map(y, 0, height, 0, 1);       // % between top and bottom
    color c = lerpColor(c1, c2, inter);          // blend color based on position
    stroke(c);
    line(0, y, width, y);                        // draw horizontal line
    y=y+1;
  }
}

void fish(int x, int y) {
  strokeWeight(0);
  stroke(0);
  fill(#ffa500);
  triangle(x - 10, y, x - 35, y - 10, x - 35, y + 10);
  fill(#F09800);
  ellipse(x, y, 40, 20);
  noStroke();
  fill(0);
  ellipse(x + 10, y -2, 5, 5);
}

void thing(int x, int y) {
 colorMode(HSB);
 fill(darkblue);
 arc(0, 0, 30, 40, 0, radians(180));
}
  



void drawFish(float x, float y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);

  noStroke();
  fill(#c1d6e6);
  rect(90, -25, 50, 50, 25, 5, 5, 25);
  fill(#bcced6);
  triangle(-10, -50, 25, -70, 20, -40);
  // Body
  fill(#dce6ea);
  ellipse(0, 0, 200, 100); // main body
  noStroke();

  // Eye
  fill(255);
  ellipse(-60, -20, 30, 30); // eye white
  fill(0);
  ellipse(-60, -20, 10, 10); // pupil
  // Fin
  fill(#bcced6);
  triangle(0, 45, -40, 25, -40, 65);




  popMatrix();
}
