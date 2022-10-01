import beads.*;
import java.util.Arrays;
PImage img;

void setup() {
  size(700,700);
  //ac = new AudioContext();
  //sound();
  sound("sound_files/mario-main-theme-overworld.mp3");
   //Add a slider control
  cp5 = new ControlP5(this);
  control_Slider("volume"       ,0, 255,    0,  0,  255, 150, 150,0   , 0.4);
  control_Slider("envelope_rate",1,   0,  255,  0,  255, 150, 150,0.5 , 1.5);
  
  img = loadImage("Mario.jpg");
}



void draw() {
  g.setGain(volume);
  rate.setValue(envelope_rate);
  //p.setValue(LR);
  println(volume);
  
  image(img, 0,0, width, height/2);
}
