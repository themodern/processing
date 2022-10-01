float count = 0; //counter for mouth


void cat1(float x_pos, float y_pos, float size){
  noStroke();
  translate(x_pos, y_pos);
  
  //mouth
  fill(0); 
  square(0*size,0*size,size);
  square(1*size,1*size,size);
  square(-1*size,1*size,size);
  
  //mouth movement
  if ((frameCount%60)==0){
    count = count+1;
  }
  if ((count<3)&&(count>1)){
    fill(#FC8F8F);
    square(0*size,1*size,size);
    square(0*size,2*size,size);
  }  
  if ((count>5)){
      count = 0;
  }
  println("mouth :",count);
  
  //eye
  fill(#4279EA); 
  square(-3*size,-1*size,size);
  square(-3*size,0*size,size);
  square(-4*size,1*size,size);
  square(-5*size,0*size,size);
  square(-5*size,-1*size,size);
    
    
  fill(0); 
  square(-4*size,0*size,size);
  square(-4*size,-1*size,size);

  fill(#4279EA); 
  square(2*size,0*size,size);
  square(4*size,0*size,size);
  square(4*size,-1*size,size);
  square(2*size,-1*size,size);
  square(3*size,1*size,size);
  square(2*size,0*size,size);
  
  fill(0); 
  square(3*size,0*size,size);
  square(3*size,-1*size,size);
  
  //face
  square(6*size,-1*size,size);
  square(6*size,0*size,size);
  square(6*size,1*size,size);
  square(6*size,2*size,size);
  square(7*size,0*size,size);
  square(7*size,2*size,size);
  square(5*size,3*size,size);
  square(4*size,4*size,size);
  square(4*size,4*size,size);
  square(-7*size,2*size,size);
  square(-8*size,2*size,size);
  square(-9*size,2*size,size);
  square(-8*size,1*size,size);
  square(-8*size,0*size,size);
  square(-7*size,0*size,size);
  square(-9*size,0*size,size);
  square(-8*size,-1*size,size);
  square(-8*size,-2*size,size);
  square(-7*size,-3*size,size);
  square(-7*size,-4*size,size);
  square(-6*size,-4*size,size);
  square(-6*size,-5*size,size);
  
  square(-6*size,-6*size,size);
  square(-5*size,-7*size,size);
  square(-4*size,-6*size,size);
  square(-3*size,-5*size,size);
  square(-2*size,-5*size,size);
  square(-1*size,-5*size,size);
  square(0*size,-5*size,size);
  square(1*size,-5*size,size);
  square(2*size,-6*size,size);
  square(3*size,-7*size,size);
  square(4*size,-6*size,size);
  square(4*size,-5*size,size);
  square(4*size,-4*size,size);
  square(5*size,-3*size,size);
  square(6*size,-2*size,size);
  
  fill(#F7BEBF);
  square(-4*size,-5*size,size);
  square(3*size,-5*size,size);
  //collar
  fill(#DB6F16);
  square(3*size,4*size,size);
  square(2*size,4*size,size);  
  square(1*size,4*size,size);
  square(0*size,4*size,size);
  square(-1*size,4*size,size);
  square(-2*size,4*size,size);
  square(-3*size,4*size,size);
  square(-4*size,4*size,size);
  square(-5*size,4*size,size);
  square(-6*size,3*size,size);
  fill(#D7F240);
  square(0*size,5*size,size);
  
  
  //body
  fill(0);
  square(-7*size,3*size,size);
  square(-6*size,4*size,size);
  square(-7*size,4*size,size);
  square(-8*size,4*size,size);
  square(-9*size,4*size,size);
  square(-10*size,4*size,size);
  square(-11*size,4*size,size);
  square(-12*size,4*size,size);
  
  //tail
  fill(0);
  square(-13*size,3*size,size);
  square(-14*size,2*size,size);
  square(-14*size,1*size,size);
  square(-13*size,0*size,size);
  square(-12*size,-1*size,size);
  square(-11*size,-2*size,size);
  square(-11*size,-3*size,size);
  square(-12*size,-4*size,size);
  square(-13*size,-3*size,size);
  square(-14*size,-2*size,size);
  square(-15*size,-1*size,size);
  square(-16*size,0*size,size);
  square(-17*size,1*size,size);
  square(-17*size,2*size,size);
  square(-16*size,3*size,size);
  square(-15*size,4*size,size);
  square(-14*size,5*size,size);
  square(-13*size,6*size,size);
  square(-13*size,7*size,size);
  square(-13*size,8*size,size);
  
  square(4*size,5*size,size);
  square(4*size,6*size,size);
  square(4*size,7*size,size);
  //front_leg1
  square(4*size,8*size,size);
  square(5*size,9*size,size);
  square(5*size,10*size,size);
  square(4*size,11*size,size);
  square(3*size,11*size,size);
  square(2*size,10*size,size);
  square(1*size,9*size,size);
  
  //front_leg2_backward
  
  square(1*size,10*size,size);
  square(0*size,9*size,size);
  square(-1*size,10*size,size);
  square(-2*size,11*size,size);
  square(-3*size,11*size,size);
  square(-4*size,10*size,size);
  square(-4*size,9*size,size);
  //square(-3*size,9*size,size);
  
  //front_leg2_forward 
  //square(1*size,10*size,size);
  //square(0*size,11*size,size);
  //square(-1*size,11*size,size);
  //square(-2*size,10*size,size);
  //square(-3*size,9*size,size);
  
  
  
  //belly
  square(-4*size,10*size,size);
  square(-5*size,10*size,size);
  square(-6*size,10*size,size);
  square(-7*size,10*size,size);
  square(-8*size,10*size,size);

  
  //back_leg1_backward
  square(-10*size,9*size,size);
  square(-11*size,10*size,size);
  square(-12*size,11*size,size);
  square(-13*size,11*size,size);
  square(-14*size,10*size,size);
  square(-14*size,9*size,size);
  //square(-13*size,9*size,size);
  
  //back_leg1_forward
  //square(-9*size,9*size,size);
  //square(-9*size,10*size,size);
  //square(-10*size,11*size,size);
  //square(-11*size,11*size,size);
  //square(-12*size,10*size,size);
  //square(-13*size,9*size,size);
 
  //back_leg2 
  square(-9*size,10*size,size);
  square(-8*size,11*size,size);
  square(-9*size,11*size,size);
  
}
