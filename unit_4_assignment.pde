size(600, 600);
background(255);
int y = 0;
int x = 0;

rectMode(CENTER);

//while (y <= 600) {

// line(0, y, y, 600);
//line(y, 0, 600, y);
//  line(y, y, 0, 600);
//line(600, 0, y, y);






// y = y+10;
//}


while (y >= 0) {
  circle(300, 300, y);
  y=y-10;
}
