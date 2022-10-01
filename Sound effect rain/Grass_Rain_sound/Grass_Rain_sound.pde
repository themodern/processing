ArrayList grass = new ArrayList();
Drop [] drops = new Drop[500];
PImage img_monster;
PImage img_cloud1;
PImage img_cloud2;

float cloudSpeed = random(1,3);
float x_start = -1*width;
float x_start2 = -1*width;

float cloud_spd = 1;
float cloud_spd2 = 13;
void setup() {
  
  size(1000, 640);
  stroke(0, 100, 0);
  
  //cloud
  img_monster = loadImage("image/cloud/Shadow_monsterhunter2.png");
  img_cloud1 = loadImage("image/cloud/cloud_1.png");
  img_cloud2 = loadImage("image/cloud/cloud_2.png");

  //Control
  cp5 = new ControlP5(this);

  control_Slider("colour_R", 0, 255,  0,  0,  255, 150, 150, 255);
  control_Slider("colour_G", 1,  15,175,  2,  139, 214, 138, 255);
  control_Slider("colour_B", 2,   0, 86,255,  87, 127, 211, 255);
  
  control_Slider("colour_Grass", 4,   0, 255,0,  87, 127, 211, 50);

  //add sound file
  soundfile = new SoundFile(this, "mixkit-light-rain-loop-1253 (1).wav");
  soundfile.loop();  
  
  
  //Grass
  for (int x = 0; x <= width; x+=12) {
    grass.add(new Grass(new PVector(x, height+30)));
  }
  //Rain effect
  for (int i=0; i< drops.length; i++){
    drops[i] = new Drop();
  }
}

void draw() {
  frameRate(60);
  //background(255);
  println("R", colour_R, "G", colour_G, "B", colour_B);
  background(colour_R,colour_G,colour_B);
  
  //pan the raindrop sound
  float position = map(mouseX, 0, width, -1.0, 1.0);
  soundfile.pan(position);  
  
  
  //Monster
  image(img_monster, width/2, height/2, width/2, height/2);
  //x_start+=cloud_spd*1;
  //if (x_start>=width){
  //x_start = width*-1;
  //}
  
  //Cloud
  image(img_cloud1, x_start, 50, width/2, height/3);
  x_start+=cloud_spd*1;
  if (x_start>=width){
  x_start = width*-1;
  }
  
  //Cloud2
  image(img_cloud2, x_start2, height/3, width*2, height/3);
  x_start2+=cloud_spd2;
  if (x_start2>=width){
    x_start2 = width*2*-1;
  }
  
  
  
  //draw Grass
  for (int i = 0; i < grass.size (); i++) {
    Grass g = (Grass) grass.get(i);
    g.draw();
  }
  
  //draw RainDrop
  for (int xx=0; xx< drops.length; xx++){
  //for (int xx=0; xx< 20; xx++){

  drops[xx].fall();
  drops[xx].show();
  }
  

  //x_start = x_start + x_spd;
  //if (x_start == width){
  //x_start = width*-1;
}
