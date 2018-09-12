float diameter = 20;
boolean x = true;
float arcV = 0;
float offset = PI/16;
float r = random(0,256);
float g = random(0,256);
float b = random(0,256);
float direction = 1.0;
float stage = 0;
boolean clicked = true;
void setup() {
  frameRate(60);
  size(400, 400);
}
void draw() {
  background(0, 0, 0);
  fill(255, 255, 255);
  ellipse(200, 200, diameter, diameter);
  fill(r, g, b);
  for (int i = 0; i < 8; i++) {
  	mArc(200, diameter, 0.18, i, offset);
  }
  arcV = arcV + direction * PI/40;
  if (x == true) {
    diameter = diameter + 12;
  } else {
    diameter = diameter - 12;
    if (diameter <  50) {
      x = true;
      r = (int)(Math.random()*256);
      g = (int)(Math.random()*256);
      b = (int)(Math.random()*256);
    }
  }  
  if (diameter > 350) {
    x = false;
    r = (int)(Math.random()*256);
    g = (int)(Math.random()*256);
    b = (int)(Math.random()*256);
  }
}
void mouseClicked() {
  if (clicked == true) {
    direction = -1.0;
    clicked = false;
  } else {
    direction = 1.0;
    clicked = true;
  }
}
void mArc(int c, float d, float s, int id, float offset){
	arc(c, c, d, d, s + arcV + id * 4 * offset, PI/6 + arcV + id * 4 * offset);
}