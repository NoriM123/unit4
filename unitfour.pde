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
  drawFish(400, 300, 1.5);
  fish(int(random(0, 800)), int(random(0, 600)));
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
  strokeWeight(3);
  stroke(0);
  fill(#ffa500);
  ellipse(x, y, 40, 20);
  triangle(x - 22, y, x - 35, y - 10, x - 35, y + 10);
  noStroke();
  fill(0);
  ellipse(x + 10, y - 5, 5, 5);
}



void drawFish(float x, float y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);

  noStroke();
  // Body
  fill(#dce6ea);
  ellipse(0, 0, 200, 100); // main body
  noStroke();
  fill(#c1d6e6);
  rect(100, -25, 50, 50, 25, 5, 5, 25);
  // Eye
  fill(255);
  ellipse(-60, -20, 30, 30); // eye white
  fill(0);
  ellipse(-60, -20, 10, 10); // pupil
  // Fin
  fill(#bcced6);
  triangle(-10, -50, -40, -100, 20, -50);
  ellipse(-20, 30, 20, 10);
  triangle(-20, 30, -5, 70, 10, 65);

  
  

  popMatrix();
}
