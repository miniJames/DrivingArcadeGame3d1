class Car {
  PVector loc;
  PVector dir;
  int maxSpeed = 5;
  int speed;
  int d;
 
  Car() {
    loc = new PVector(width/2, height-35);
    dir=new PVector();
    d=15;
  }

  void display() {
    fill(255, 255, 0);
    //ellipse(loc.x, loc.y, d,d);
        noStroke();
    lights();
    pushMatrix();
    translate(loc.x, loc.y, loc.z);
    sphere(d);
    popMatrix();
  }

  int update(ArrayList<Obstacle> ob) {
    loc.add(dir);
    if (loc.x < d/2 ) {
      loc.x = d/2;
    } 
    if (loc.x > width -( d/2)) { 
      loc.x = width-(d/2);
    }


    //collision detection.
    for (Obstacle o : ob) {
      
      if (o.loc.dist(loc)< o.d   + d  ) {
        println(o.loc);
        println(loc);
        println(o.loc.dist(loc));
        text( "GAMEOVER", width /2 -30, height /3);
        return 0;
      }
    }
    return 1;
  }
}