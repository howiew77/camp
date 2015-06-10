class ShapeFactory {

  PShape basicBullet;
  PShape basicPlayer;
  PShape basicEnemy;

  //the constructor - very important!
  ShapeFactory() {
    buildBasicBullet();
    buildBasicPlayer();
    buildBasicEnemy();
  }

  PShape getBasicBullet() { 
    return basicBullet;
  }
  PShape getBasicPlayer() { 
    return basicPlayer;
  }
  PShape getBasicEnemy() { 
    return basicEnemy;
  }

  void buildBasicBullet() {
    //your code goes here
  }

  void buildBasicPlayer() {
    basicPlayer = createShape(GROUP);
    PShape chassis = createShape();
    chassis.beginShape();
    chassis.vertex(40, -20);
    chassis.vertex(40, -20);
    chassis.vertex(40, 60);
    chassis.vertex(-40, 60);
    chassis.vertex(-40, -20);
    chassis.vertex(40, -20);
    chassis.endShape();
    PShape cockpit = createShape(ELLIPSE, 0, -10, 10, -30);
    basicPlayer.addChild(chassis);
    basicPlayer.addChild(cockpit);
  }

  void buildBasicEnemy() {
    //your code goes here
  }
}

