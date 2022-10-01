
import controlP5.*;
ControlP5 cp5;

int x_control_Pisition = height/2;
int set_p_range ;

Slider abc;

// Create function calling the slider function
void control_Slider(String name, 
                    int y_control_Pisition,
                    int fore_R,
                    int fore_G,
                    int fore_B,
                    int active_R,
                    int active_G,
                    int active_B,
                    float set_min_range,
                    float set_max_range
                    ){
  cp5.addSlider(name)
     .setPosition(x_control_Pisition,height/2+100 + 30 * y_control_Pisition)
     
     // Set size of the sliderbar
     .setSize(100,20)
     
     //change the slider bar colour
     .setColorForeground(color(fore_R,fore_G, fore_B))
     
     // change the slider bar colour when the mouse is over it
     .setColorActive(color(active_R, active_G, active_B)) 
     
     // set the slider values, this is setting color, 
     // so we are going to have 0~255
     .setRange(set_min_range, set_max_range) 
     ;
}
