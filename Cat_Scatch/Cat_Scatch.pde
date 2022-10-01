void setup(){
  size(500,500);
  stroke(150);
}

void draw(){
  triangle(150,100,160,200,250,250);
  triangle(350,100,350,200,250,250);
  strokeWeight(16);
  line(100,200, 400,290);
  line(100,250, 400,250);
  line(100,290, 400,200);
  ellipse(500/2,500/2, 230, 150);
  beginShape(TRIANGLES);
  vertex(250, 250);
  vertex(300, 300);
  vertex(320, 300);
  endShape();
}
