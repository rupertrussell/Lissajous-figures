// Draws a Lissajous figures
// 6 April 2011
// created in "Processing":http://processing.org/
// "Examples":http://www.rupert.id.au/tutorials/processing/examples.php

float radius =1.0;
float dotSize;
float counter;
int count;

void setup(){
  smooth();
  fill(255);
  strokeWeight(0.5);   // Thin
  size(2000, 2000);
  }

void draw(){
  fill(#000000);

  for (int deg = 0; deg < 360 * 0.25 ; deg += 11) {
    dotSize = dotSize + 0.01;
    float angle = radians(deg);
    float x = 200 + (cos(angle) * radius);
    float y = 200 + (sin(angle) * radius);
    ellipse(x, y, dotSize, dotSize);
    radius = radius + 0.1;
    counter = counter + 1;
      
  }
}

void mouseClicked() {
  save("figure.png");
  exit();
}
