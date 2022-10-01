import beads.*;
import java.util.Arrays;
PImage img;

void setup() {
  size(700,700);
  //ac = new AudioContext();
  //sound();
  ac = AudioContext.getDefaultContext(); 
  sound("sound_files/01. Title.mp3");
   //Add a slider control
  cp5 = new ControlP5(this);
  control_Slider("volume"       ,0, 0,    0,  0,  255, 150, 150,0   , 0.5);
  control_Slider("speedControl",1,   0,  255,  0,  255, 150, 150,0.5 , 1.5);
  background(0);
  img = loadImage("Pic/run.jpeg");
}

color fore = color(255, 102, 204);
color back = color(0,0,0);
void draw() {
  g.setGain(volume); // update the volume
  rate.setValue(speedControl); // update the speed
  //p.setValue(LR); // it is not working for pan
  println(volume);
  
  //the image
  image(img, 0,0, width, height/2);
  //
  loadPixels();
  
  
  //set the background
  //Arrays.fill(pixels, back);
  ////scan across the pixels
  //for(int i = 0; i < width; i++) {
  //  //for each pixel work out where in the current audio buffer we are
  //  int buffIndex = i * ac.getBufferSize() / width;
  //  //then work out the pixel height of the audio data at that point
  //  int vOffset = (int)((1 + ac.out.getValue(0, buffIndex)) * height / 2);
  //  //draw into Processing's convenient 1-D array of pixels
  //  vOffset = min(vOffset, height);
  //  pixels[vOffset * height + i] = fore;
  //}
  //updatePixels();
}
