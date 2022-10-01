float r1 = 200;
float r2 = 200;

float m1 = 40;
float m2 = 40;

float a1 = 0;
float a2 = 0;

void setuop(){
  size (600,600);
}

void draw (){
  background(255);
  stroke(0);
  strokeWeight(2);
  
  translate(300, 50);
  
  float x1 = r1 * sin(a1);
  float y1 = r1 * cos(a2);
  line (0,0,x1,y1);
  fill(0);
  ellipse (x1, y1, m1, m1);
  
}
