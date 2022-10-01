int cat_Width =  100;
int cat_Height= 100;
float cat_Color = 255;
float bg_Color = 206;
float bg_Color2 = 251;
float bg_Color3 = 255;

void setup(){
  size(500,500);
  background(bg_Color,bg_Color2,bg_Color3);
  strokeWeight(10);
}

void draw(){
  // this are the ears
  stroke(1);
  strokeWeight(1);
  fill(cat_Color,cat_Color-25, cat_Color-25 );
  triangle(width/2, height/2, width/2+cat_Width/2, height/2,width/2+cat_Width/5*1.1, height/2/1.6-(3*cat_Height/100)*1.5);
  triangle(width/2, height/2, width/2-cat_Width/2, height/2,width/2-cat_Width/5*1.1, height/2/1.6-(3*cat_Height/100)*1.5);

  // cat whiskers
  stroke(1);
  strokeWeight(1);

  line(width/2 + cat_Width/2*2, height/2, width/2 - cat_Width/2*2, height/2);
  
  stroke(1);
  strokeWeight(1);
  line(width/2 + cat_Width/2*2, height/2+cat_Height/4, width/2 - cat_Width/2*2, height/2 - cat_Height/4);
  
  stroke(1);
  strokeWeight(1);
  line(width/2 + cat_Width/2*2, height/2-cat_Height/4, width/2 - cat_Width/2*2, height/2 + cat_Height/4);
  
  
  // This is the face
  fill (cat_Color);
  stroke(100);
  ellipse(width/2, height/2, cat_Width*1.5, cat_Height );
  
  // this is the eyes
  fill (cat_Color/5 );
  noStroke();
  //eye normal
  if (cat_Width<=120){
  ellipse(width/2-cat_Width/5, height/2-cat_Height/6, cat_Width/8, cat_Height/4 );
  ellipse(width/2+cat_Width/5, height/2-cat_Height/6, cat_Width/8, cat_Height/4 );
  }
  //eye not like it
  if (cat_Width<=160){
  arc(width/2-cat_Width/5, height/2-cat_Height/6, cat_Width/8, cat_Height/4, radians(0), radians(160), OPEN);
  arc(width/2+cat_Width/5, height/2-cat_Height/6, cat_Width/8, cat_Height/4, radians(20), radians(180), OPEN);
  }
  //eye angry 
  else{
  arc(width/2-cat_Width/5, height/2-cat_Height/6, cat_Width/8, cat_Height/4, radians(0), radians(200), OPEN);
  arc(width/2+cat_Width/5, height/2-cat_Height/6, cat_Width/8, cat_Height/4, radians(-20), radians(180), OPEN);
  }
}

void mousePressed() {
  // click to change cat_Width
  if (cat_Width < 200) {
    bg_Color = bg_Color+3;
    bg_Color2= bg_Color2-10; 
    bg_Color3= bg_Color3-10;
    background(bg_Color,bg_Color2,bg_Color3);
    cat_Width = cat_Width + 5;

    
  } 
  //reset
  if (cat_Width == 200){
    bg_Color = 206;
    bg_Color2 = 251;
    bg_Color3 = 255;
    background(bg_Color,bg_Color2,bg_Color3);
    strokeWeight(10);
    cat_Width = 100;
    cat_Height= 100;
    cat_Color = 255;
  }
}
