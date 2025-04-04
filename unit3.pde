//sketch
color red = #FF0000;
color purple = #9800FF;
color blue = #001BFF;
color lightblue = #00BDFF;
color green = #29FF00;
color yellow = #FAFF00;
color orange = #FF9E00;
color grey = #DEDEDE;
color buttoncolor = #5F7A81;
color black = #030202;
color white = #FFFFFF;

color selectedColor;

float sliderX;
float thickness;

PImage person;
boolean personOn;

void setup() {
  selectedColor = black;
  size(980, 800);
  strokeWeight(5);
  textSize(30);
  personOn = false;
  sliderX = 275;
  thickness = 0;
  background(255);
  person = loadImage("person.png");
}

void draw() {

  thickness = map(sliderX, 29, 517, 1, 40); //x range, x, thickness 0-15
  strokeWeight(5);

  fill(grey);
  stroke(0);
  rect(2, 5, 975, 154);

  fill(buttoncolor);
  stroke(0);
  tactile1(560, 25, 50, 115);
  rect(560, 25, 50, 115);
  tactile1(635, 25, 50, 115);
  rect(635, 25, 50, 115);
  tactile1(710, 25, 50, 115);
  rect(710, 25, 50, 115);

  tactile(50, 50, 25);
  fill(red);
  circle(50, 50, 50);

  tactile(125, 50, 25);
  fill(orange);
  circle(125, 50, 50);

  tactile(200, 50, 25);
  fill(yellow);
  circle(200, 50, 50);

  tactile(275, 50, 25);
  fill(green);
  circle(275, 50, 50);

  tactile(350, 50, 25);
  fill(blue);
  circle(350, 50, 50);

  tactile(425, 50, 25);
  fill(lightblue);
  circle(425, 50, 50);

  tactile(500, 50, 25);
  fill(purple);
  circle(500, 50, 50);

  tactile(820, 48, 55);
  fill(black);
  circle(820, 48, 55);

  tactile(820, 117, 55);
  fill(white);
  circle(820, 117, 55);

  tactile1(872, 30, 80, 105);
  fill(grey);
  rect(872, 30, 80, 105);

  stroke(0);
  fill(selectedColor);
  strokeWeight(thickness);
  line(29, 116, 517, 116);
  stroke(0);
  strokeWeight(5);
  circle(sliderX, 116, 20);

  image(person, 867, 34);
  
  textSize(25);
  fill(black);
  text("C", 579, 88);
  text("S", 654, 88);
  text("L", 729, 88);
}

void tactile (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(grey);
  } else {
    stroke(0);
  }
}

void tactile1 (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(grey);
  } else {
    stroke(0);
  }
}

void mouseDragged() {
  controlSlider();
  if (mouseY > 150 && mouseY < 800) {
    if (personOn == false) {
      stroke(selectedColor);
      strokeWeight(thickness);
      line(pmouseX, pmouseY, mouseX, mouseY);
    } else {
      strokeWeight(0);
      image(person, mouseX, mouseY, thickness*3, thickness*3);
    }
  }
}

  void mouseReleased() {
    controlSlider();
  
    //load button
    if (mouseX > 710 && mouseX < 760 && mouseY > 25 && mouseY < 180) {
      selectInput("Pick an image to load", "openImage");
    }
    //clear button
    if (mouseX > 560 && mouseX < 610 && mouseY > 25 && mouseY < 140) {
      fill(white);
      stroke(white);
      rect(0, 164, 985, 700);
    }
    //save button
    if (mouseX > 635 && mouseX < 685 && mouseY > 25 && mouseY < 140) {
      selectOutput("Choose a name for your new image file", "saveImage");
    }
     
    if (mouseX > 872 && mouseX < 952 && mouseY > 30 && mouseY < 135) {
      personOn = true;
      } else {
      personOn = false;
    }
    
    if (dist(820, 48, mouseX, mouseY) < 27) {
      selectedColor = black;
    }

    if (dist(820, 117, mouseX, mouseY) < 27) {
      selectedColor = white;
    }

    if (dist(50, 50, mouseX, mouseY) < 25) {
      selectedColor = red;
    }

    if (dist(125, 50, mouseX, mouseY) < 25) {
      selectedColor = orange;
    }

    if (dist(200, 50, mouseX, mouseY) < 25) {
      selectedColor = yellow;
    }

    if (dist(275, 50, mouseX, mouseY) < 25) {
      selectedColor = green;
    }

    if (dist(350, 50, mouseX, mouseY) < 25) {
      selectedColor = blue;
    }

    if (dist(425, 50, mouseX, mouseY) < 25) {
      selectedColor = lightblue;
    }

    if (dist(500, 50, mouseX, mouseY) < 25) {
      selectedColor = purple;
    }
  }

  void controlSlider() {
    if (mouseX > 29 && mouseX < 517 && mouseY > 105 && mouseY < 127) {
      sliderX = mouseX;
    }
  }

void saveImage(File f) {
  if (f != null) {
    PImage canvas = get(0, 140, width, 660);
    canvas.save(f.getAbsolutePath());
  }
}

void openImage(File f) {
  if (f !=null) {
    int n = 0;
    while (n < 10) {
      PImage pic = loadImage(f.getPath());
      image(pic, 0, 140);
      n = n + 1;
    }
  }
}
