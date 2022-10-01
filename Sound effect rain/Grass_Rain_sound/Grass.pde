
class Grass {
  ArrayList blades = new ArrayList();
  PVector loc;
  int am = (int)random(12, 36);
  

  Grass(PVector loc) {
    this.loc = loc;
    for (int i = 0; i < am; i++) {
      blades.add(new Blade(random(10, 50)));
    }
  }

  void draw() {
    
    //float rand_green = random(100,150); 

    for (int i = 0; i < blades.size (); i++) {
       
      stroke(0, colour_Grass, 0);
      Blade b = (Blade) blades.get(i);
      pushMatrix();
      translate(loc.x, loc.y);
      rotate(radians(b.angle));
      b.branch(b.segments);
      popMatrix();
    }
  }
}

class Blade {
  float segments, angle;
  float num;

  Blade(float segments) {
    this.segments = segments;
    angle = random(-20, 20);
  }

  void branch(float len) {
    len *= 0.79;
    strokeWeight(map(len, 1, segments, 0.1, 4));
    line(0, 0, 0, -len);
    translate(0, -len);
    if (len > 5) {
      pushMatrix();
      rotate(radians(angle+sin(len+num)));
      branch(len);
      popMatrix();
    }
    /* Movement effectivle works on the computer, not on the web. */
    num+=0.01;
  }
}
