class Circle {

  int xCenter;
  int yCenter;
  float radioCircle;
  float widthCircle;
  color colorCircle;
  
  Circle(int xCenter_, int yCenter_, float radioCircle_, float widthCircle_, color colorCircle_) {
  
    xCenter = xCenter_;
    yCenter = yCenter_;
    radioCircle = radioCircle_;
    widthCircle = widthCircle_;
    colorCircle = colorCircle_;
    
  }
  
  void update(float widthCircle_) {
  
    widthCircle = widthCircle_;
  
  }

  void display() {
  
    noStroke();
    fill(colorCircle);
    ellipse(xCenter, yCenter, radioCircle + widthCircle/2, radioCircle + widthCircle/2);
    fill(0);
    ellipse(xCenter, yCenter, radioCircle - widthCircle/2, radioCircle - widthCircle/2);
    
  }


}