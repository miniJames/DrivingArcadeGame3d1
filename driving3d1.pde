GameEnvironment g;

void setup() {
  ellipseMode(CENTER)  ;
  size(600,600,P3D);
  g= new GameEnvironment();
}

void draw() {
  //camera(width/2,height/2,750,width/2,height/2,0,0,1,0);
  background(0);
  g.update();
  g.display();
  fill(255);
  text("LEVEL: " + g.level,10,10);
  text("SCORE:" + g.getScore(), 10,20);

}

void keyPressed() {
  g.keyInput();
}

void keyReleased(){
 g.keyUp(); 
}