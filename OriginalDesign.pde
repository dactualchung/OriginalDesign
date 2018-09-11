int diameter = 20;
boolean x = true;
float arc = 0;
float offset = PI/16;
float r = random(0,256);
float g = random(0,256);
float b = random(0,256);
float direction = 1.0;
float stage = 0;
void setup() {
  frameRate(60);
  size(400, 400);
}
void draw() {
  background(0, 0, 0);
  fill(255, 255, 255);
  ellipse(200, 200, diameter, diameter);
  fill(r, g, b);
  arc(200, 200, diameter, diameter, 0.18 + arc, PI/6 + arc);
  arc(200, 200, diameter, diameter, 0.18 + arc + 4 * offset, PI/6 + arc + 4 * offset);
  arc(200, 200, diameter, diameter, 0.18 + arc + 8 * offset, PI/6 + arc + 8 * offset);
  arc(200, 200, diameter, diameter, 0.18 + arc + 12 * offset, PI/6 + arc + 12 * offset);
  arc(200, 200, diameter, diameter, 0.18 + arc + 16 * offset, PI/6 + arc + 16 * offset);
  arc(200, 200, diameter, diameter, 0.18 + arc + 20 * offset, PI/6 + arc + 20 * offset);
  arc(200, 200, diameter, diameter, 0.18 + arc + 24 * offset, PI/6 + arc + 24 * offset);
  arc(200, 200, diameter, diameter, 0.18 + arc + 28 * offset, PI/6 + arc + 28 * offset);
  arc = arc + direction * PI/40;
  if (x == true) {
    diameter = diameter + 12;
  } else {
    diameter = diameter - 12;
    if (diameter <  50) {
      x = true;
      r = random(0,256);
      g = random(0,256);
      b = random(0,256);
    }
  }  
  if (diameter > 350) {
    x = false;
    r = random(0,256);
    g = random(0,256);
    b = random(0,256);
  }
}
void mouseWheel(MouseEvent event) {
  direction = event.getCount();
}