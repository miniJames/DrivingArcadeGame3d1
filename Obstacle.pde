class Obstacle{
  PVector loc;
  int speed;
  int d;
   
  Obstacle(){
    loc = new PVector();
    loc.x = random(width);
    loc.z=random(-10000,-5000);;
    loc.y=height-35;
    d=10;
    speed=10;
  }
  void update(){
    loc.z += speed;  
    //println(loc.z);
    if (loc.z > 0){
      loc.z=random(-10000,-5000);
      loc.x=random(width);
      loc.y = height-35;
    }
  }
  void increaseSpeed(){
    speed+=5;
  }
  void display(){
    fill(255,0, 0);
    noStroke();
    lights();
    pushMatrix();
    translate(loc.x, loc.y, loc.z);
    sphere(d);
    popMatrix();
   
  }
}