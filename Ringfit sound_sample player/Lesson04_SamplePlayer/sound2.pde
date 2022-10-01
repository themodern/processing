SamplePlayer player;

void sound1(String soundFile, float speed) {
  //ac = AudioContext.getDefaultContext(); 
  //ac = new AudioContext();
  String newStr = dataPath(""); // Get present working directory
  int leng = newStr.length();
  soundFile = newStr.substring (0,leng-4)+soundFile;  // concate with the relative file path
  player = new SamplePlayer( SampleManager.sample(soundFile)); // load the sound file into the SamplePlayer
  Envelope rate = new Envelope( speed);// Global Envelope rate
  player.setRate(rate);
  
  
  
  
  player.setLoopType(SamplePlayer.LoopType.NO_LOOP_FORWARDS);
  Gain g = new Gain(  1, 0.2);               // speaker channels, volume

  Panner p = new Panner(LR); 
  p.addInput(player);
  g.addInput(p);
  ac.out.addInput(g);
  ac.start();
   
}
