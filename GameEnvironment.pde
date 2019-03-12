class GameEnvironment {
  Car player;
  Obstacles ob;
  int gameState = 0;
  int level;
  int frameStart;
  int score;
  GameEnvironment() {
    reset();
  }
  void reset() {
    player = new Car();
    ob = new Obstacles();
    level=1;
    score =0;
  }
  void display() {
    
    player.display();
    ob.display();
    
  }
  int getScore(){

    return score;
  }
  void update() {
    if ((frameCount - frameStart) % 500 ==0 && gameState==1 ){
      level+=1;
      ob.increaseSpeed();
      for(int c=0;c<5;c++){
        ob.addOb();
      }
    }
    if (gameState==1) {
      gameState =player.update(ob.obs);
      ob.update();
      score = frameCount - frameStart;
    } else if (gameState==0) {
      text("PRESS 's' TO START", width/2-45, height/2-5);  

      
    }
  }
  void keyInput() {
    if (gameState ==1) {
      if (keyCode==LEFT) {
        player.speed=player.maxSpeed;
        player.dir.x=-player.speed;
        println("LEFT");
      } else if (keyCode==RIGHT) {
        player.speed=player.maxSpeed;
        println("RIGHT");
        player.dir.x=player.speed;
      }
    } else if (gameState==0) {
      if (key == 's' || key == 'S') {
        reset();
        gameState =1;
        frameStart = frameCount;
      }
    }
  }
  void keyUp() {
    if (gameState==1) {
      player.speed = 0;
      player.dir.x*=.2 ;
    }
  }
}