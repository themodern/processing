float rot_Val = TWO_PI/3;


void setup()
{
  size(1600, 1200);
}

void draw()
{
  background(255);
  //point(100,100);

  triangle(width/2, height/2, width/2-10, height, width/2+10, height);
  
  //Rotating triangles
  pushMatrix();
  translate(width/2,height/2); // define the position of the wind turbine
 
  //translate(100,150);
  rotate(frameCount*radians(90) / 20);
  translate(-width/2,-height/2);
  //translate(-350, -350); //define the rotation center
  fill(100);
  tri(rot_Val);
  tri(rot_Val*2);
  tri(rot_Val*3);
  
  
  //triangle(-30, 30, -20, -60, 30, 30);
  //triangle(-30, 30, 0, -60, 30, 30);
  popMatrix();
}

void tri(float rot_Val){
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(rot_Val);
  translate(-30, -30);
  triangle(-30, 30, -10, -100, 25, 30);
  popMatrix();

}
