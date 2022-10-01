float move = 2;
float increment_val = 1;


void setup(){
  size (700,700);
}

void draw(){
  background(91);
  //float forward_move = 50-move;
  //println("forward_move", forward_move, "increment_val", increment_val);

  //translate(width/2-100, height/2);

  //line(20,20,forward_move,50 ); //Right side leg1
  //line(20,20,move,40 );         //leg side leg2

  //line(-20,20,-50 + move,50 );  //Left side leg3
  //line(-20,20,-move,50 );       //Left side leg3
  //ellipse(0, 0, 100,70 );
  
  ////leg swinging back and forth
  //move = move+increment_val;
  //if (forward_move == 5){
  //    increment_val = -1;
  //}
  // if (forward_move ==52){
  //    increment_val = 1;
  //}
  cat1(width/2, height/2, 10);
}
