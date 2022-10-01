Drop [] drops = new Drop[500]; // the number control number of rain drops

import processing.sound.*;
SoundFile soundfile;


void setup(){
  size (1000,640);
  cp5 = new ControlP5(this);
  noStroke();
  
  //controler adjust the background colour
  control_Slider("colour_R", 0, 255,  0,  0,  255, 150, 150);
  control_Slider("colour_G", 1,  15,175,  2,  139, 214, 138);
  control_Slider("colour_B", 2,   0, 86,255,  87, 127, 211);
  
  //Rain sound effect, sound file has to be mono in order to pan
  soundfile = new SoundFile(this, "/Users/chingching/Downloads/mixkit-light-rain-loop-1253 (1).wav");
  soundfile.loop();  
  
  //Rain effect
  for (int i=0; i< drops.length; i++){
    drops[i] = new Drop();
    

  }
}

void draw(){
  
  println("R", colour_R, "G", colour_G, "B", colour_B);
  background(colour_R,colour_G,colour_B);
  frameRate(60);
  
  for (int i=0; i< drops.length; i++){
    drops[i].fall();
    drops[i].show();
    
    
  float position = map(mouseX, 0, width, -1.0, 1.0);
  soundfile.pan(position);  
  

  
  
  
  }
}
