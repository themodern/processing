
import controlP5.*;

ControlP5 cp5;


// this is the initial value of the slider, the draw loop will update this value accordingly
int colour_R = 100; //refer this variable to your element
int colour_G = 100;
int colour_B = 100;
int x_control_Pisition = 50;

Slider abc;

void setup() {
  size(700,700);
  noStroke();
  cp5 = new ControlP5(this);
 
  // add a horizontal sliders, the value of this slider will be linked
  // to variable 'sliderValue' 
  control_Slider("colour_R", 0, 255,  0,  0,  255, 150, 150);
  control_Slider("colour_G", 1,  15,175,  2,  139, 214, 138);
  control_Slider("colour_B", 2,   0, 86,255,  87, 127, 211);


}


// Create function calling the slider function
void control_Slider(String name, 
                    int y_control_Pisition,
                    int fore_R,
                    int fore_G,
                    int fore_B,
                    int active_R,
                    int active_G,
                    int active_B
                    ){
  cp5.addSlider(name)
     .setPosition(x_control_Pisition,70 + 30 * y_control_Pisition)
     
     // Set size of the sliderbar
     .setSize(100,20)
     
     //change the slider bar colour
     .setColorForeground(color(fore_R,fore_G, fore_B))
     
     // change the slider bar colour when the mouse is over it
     .setColorActive(color(active_R, active_G, active_B)) 
     
     // set the slider values, this is setting color, 
     // so we are going to have 0~255
     .setRange(0,255) 
     ;
}


//void draw() {
//  background(colour_R, colour_G, colour_B);
//  println(colour_G,colour_R, colour_B);
//  //println(colour_G);
  
//}
