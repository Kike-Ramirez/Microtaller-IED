class Circle {

  int xCenter;
  int yCenter;
  float radioCircle;
  float desplaz;
  color colorCircle;
  float timeLife;
  float timeCreation;
  Ani radioAni;
  
  Circle(int xCenter_, int yCenter_, float radioCircle_, float desplaz_, color colorCircle_) {
  
    xCenter = xCenter_;
    yCenter = yCenter_;
    radioCircle = 10;
    desplaz = desplaz_;
    colorCircle = colorCircle_;
    timeLife = 4000;
    timeCreation = millis();
    // diameter animation
    radioAni = new Ani(this, timeLife/2, "radioCircle", radioCircle, Ani.EXPO_IN_OUT);
    // repeat yoyo style (go up and down)
    //radioAni.setPlayMode(Ani.YOYO);
    // repeat 1 times
    //radioAni.repeat(2);
    //radioAni.start();
    
    
  }
  
  void update() {
  
    float time = millis();
  
  }
  
  boolean isDone() {
  
    float time = millis();
    
    if (time-timeCreation > timeLife) return true;
    else return false;
  
  }

  void display() {
  
    noStroke();
    fill(colorCircle);
    ellipse(xCenter, yCenter, radioCircle, radioCircle);
    
  }


}