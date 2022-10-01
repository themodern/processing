

void setup(){
size(500,500);
frameRate ( 1);
}

void draw(){
    translate (random(0,500), random(0,500));
  //for (int i = 0; i < 5; i++) {

  drawRect();
  

  //}
}

void drawRect(){
  for (int i = 0; i < 5; i++) {
    //fill(fill_Color2);
    rotate(radians(360/5)); //rotate
    //rotate(PI/3.0);
    rect(0, -50, 50, 50);

}
}
