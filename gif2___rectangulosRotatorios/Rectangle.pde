class Rectangle {

  int xCenter;
  int yCenter;
  float heightRectangle;
  float widthRectangle;
  float angle;
  color colorRectangle;
  
  Rectangle(int xCenter_, int yCenter_, float widthRectangle_, float heightRectangle_, color colorRectangle_) {
  
    xCenter = xCenter_;
    yCenter = yCenter_;
    heightRectangle = heightRectangle_;
    widthRectangle = widthRectangle_;
    angle = 0;
    colorRectangle = colorRectangle_;
    
  }
  
  void update(float angle_) {
  
    angle = angle_;
  
  }

  void display() {
  
    noStroke();
    fill(colorRectangle);
    pushMatrix();
    translate(xCenter, yCenter);
    rotate(angle);
    rect(0, 0, widthRectangle, heightRectangle);
    popMatrix();
    
  }


}