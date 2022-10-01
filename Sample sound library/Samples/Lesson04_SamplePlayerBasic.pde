import beads.*;
import java.util.Arrays; 

AudioContext ac;
Panner p;

void setup() {
  size(300,300);
  ac = new AudioContext();
  selectInput("Select an audio file:", "fileSelected");
  //sound();
}

void fileSelected(File selection) {
//void sound() {
  //String audioFileName = "/Users/bebop/Documents/TEACHING/interactive_media_2021/Week 7/AudioExamples_2021/Samples/Nylon_Guitar/Clean_A_harm.wav";
  String audioFileName = selection.getAbsolutePath();
  SamplePlayer player = new SamplePlayer(ac, SampleManager.sample(audioFileName));
  
  /*
   * And as before...
   */
  
  Envelope rate = new Envelope(ac, 1);
  player.setRate(rate);
  //rate.addSegment(1.5, 1000); 
  
  Panner p = new Panner(ac, 0);  
  Gain g = new Gain(ac, 2, 0.2);
  p.addInput(player);
  g.addInput(p);
  //g.addInput(player);
  ac.out.addInput(g);
  ac.start();
}

color fore = color(255, 102, 204);
color back = color(0,0,0);

/*
 * Just do the work straight into Processing's draw() method.
 */
void draw() {
  loadPixels();
  //set the background
  Arrays.fill(pixels, back);
  //scan across the pixels
  for(int i = 0; i < width; i++) {
    //for each pixel work out where in the current audio buffer we are
    int buffIndex = i * ac.getBufferSize() / width;
    //then work out the pixel height of the audio data at that point
    int vOffset = (int)((1 + ac.out.getValue(0, buffIndex)) * height / 2);
    //draw into Processing's convenient 1-D array of pixels
    vOffset = min(vOffset, height);
    pixels[vOffset * height + i] = fore;
  }
  updatePixels();
}
