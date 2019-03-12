class Obstacles {
  ArrayList<Obstacle> obs;

  Obstacles() {
    obs = new ArrayList<Obstacle>();
    for (int c = 0; c<3; c++) {
      obs.add(new Obstacle());
    }
  }


  void display() {
    for (Obstacle o : obs) {


      o.display();
    }
  }
  void addOb() {
    Obstacle a;
    a=new Obstacle();
    a.speed =obs.get(0).speed;
    obs.add(a);
  }
  void update() {
    for (Obstacle o : obs) {


      o.update();
    }
  }
  void increaseSpeed(){
    for(Obstacle o : obs){
      o.increaseSpeed();  
    }
  }
}