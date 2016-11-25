/* Microtaller IED One Year Course DA&ED 2017

   Author: Kike Ramírez
   Exercise: Rejilla de elementos rotatorios
   Fecha: 25/11/2016
   
*/

// Clase rectángulo
class Rectangle {

  // Parámetros de la clase
  int xCenter;
  int yCenter;
  float heightRectangle;
  float widthRectangle;
  float angle;
  color colorRectangle;
  
  // Constructor de la clase
  Rectangle(int xCenter_, int yCenter_, float widthRectangle_, float heightRectangle_, color colorRectangle_) {
  
    xCenter = xCenter_;
    yCenter = yCenter_;
    heightRectangle = heightRectangle_;
    widthRectangle = widthRectangle_;
    angle = 0;
    colorRectangle = colorRectangle_;
    
  }
  
  // Actualizamos parámetros
  void update(float angle_) {
  
    angle = angle_;
  
  }

  // Dibujamos el rectángulo
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