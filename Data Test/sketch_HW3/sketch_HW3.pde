Table csv_Table;
int index = 0;
int y_value = 0;
//float x;
int frame = 60;

float colorR;
float colorG = 200;
float colorB;
float rotate_Value = 0;
float y_Axis = -250;
float shape_Size = random(50,100);  
float poly_Edges = random(1,10);
float spd = 1;

float beginX = 10.0;  // Initial x-coordinate
float beginY = 10.0;  // Initial y-coordinate
float endX = 570.0;   // Final x-coordinate
float endY = 320.0;   // Final y-coordinate
float distX;          // X-axis distance to move
float distY;          // Y-axis distance to move
float exponent = 4;   // Determines the curve
float x = 0.0;        // Current x-coordinate
float y = 0.0;        // Current y-coordinate
float step = 0.01;    // Size of each step along the path
float pct = 0.0;      // Percentage traveled (0.0 to 1.0)

void setup() {
  size(500, 500);
  // load the data for a humidity censor in csv format.
  csv_Table = loadTable("Air Temperature.csv");
  background(196,224,252);
  frameRate(frame);
  distX = endX - beginX;
  distY = endY - beginY;
}

void draw() {
  background(196,colorG,252);
  colorG = colorG+1;
  // read csv table 
  noStroke();
  if (index < csv_Table.getRowCount()) { 
    // read the 2nd column (the 1), and read the row based on index which increments each draw()
    y_value = csv_Table.getInt(index, 1);
    //println(y);// index is the row, 1 is the column with the data.
    index++;
    
  }
  //translate (height/2, width/2);
  //ellipse(-200, y-100, shape_Size, shape_Size);
  //ellipse(y-100, y-100, shape_Size, shape_Size);
  //y = y+spd*1.0;
  color(y-200*1.1,224,252 );
  
  //println(y);
  //y =y+spd*1.1;
  //x = y;
  println(y-320);
  
  float colorB = (y-320);
  fill(255,colorG,colorB);
  colorB = colorB + (y-320);
  rotate(PI/4);
  rotate(rotate_Value * 0.01);
  draw_Polygon(x,  y, 100,  poly_Edges) ;
  
  pct += step;
  if (pct < 1.0) {
    x = beginX + (pct * distX);
    y = beginY + (pow(pct, exponent) * distY);
  }
  //y_Axis = y_Axis+1;
  
  
}

void draw_Polygon(float x_Axis,  float y_Axis, float radius, float edges) {

  float angle = TWO_PI / edges;
  
  beginShape();
  
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x_Axis + cos(a) * radius;
    float sy = y_Axis + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
