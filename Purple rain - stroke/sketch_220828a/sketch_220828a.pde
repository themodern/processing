Drop [] drops = new Drop[500]; // the number control number of rain drops


void setup(){
  size (640,640);
  for (int i=0; i< drops.length; i++){
    drops[i] = new Drop();
  }
}

void draw(){
  background(230,230,250);
  for (int i=0; i< drops.length; i++){
    drops[i].fall();
    drops[i].show();
    
  }
}
