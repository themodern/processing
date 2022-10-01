float volume = 0.1;
float speedControl = 1;
float LR = 0;

AudioContext ac;
SamplePlayer player1;
Gain g = new Gain(  1, volume);               // speaker channels, volume
Envelope rate = new Envelope( speedControl);// Global Envelope rate
Panner p = new Panner(LR); 

void sound(String soundFile) {
  //ac = AudioContext.getDefaultContext(); 
  //ac = new AudioContext();
  String newStr = dataPath(""); // Get present working directory
  int leng = newStr.length();
  soundFile = newStr.substring (0,leng-4)+soundFile;  // concate with the relative file path
  player1 = new SamplePlayer( SampleManager.sample(soundFile)); // load the sound file into the SamplePlayer
  player1.setRate(rate);
  player1.setLoopType(SamplePlayer.LoopType.NO_LOOP_FORWARDS);

  p.addInput(player1);
  g.addInput(p);
  ac.out.addInput(g);
  ac.start();
   
}
