/* Microtaller IED One Year Course DA&ED 2017

   Author: Kike Ramírez
   Exercise: Efecto psicodélico círculos concéntricos
   Fecha: 25/11/2016
   
*/

// Clase circulo

class Circle {

  // Parámetros de la clase
  int xCenter;
  int yCenter;
  float radioCircle;
  float widthCircle;
  color colorCircle;
  
  // Constructor de la clase
  Circle(int xCenter_, int yCenter_, float radioCircle_, float widthCircle_, color colorCircle_) {
  
    xCenter = xCenter_;
    yCenter = yCenter_;
    radioCircle = radioCircle_;
    widthCircle = widthCircle_;
    colorCircle = colorCircle_;
    
  }
  
  // Actualizamos parametros
  void update(float widthCircle_) {
  
    widthCircle = widthCircle_;
  
  }

  // Dibujamos el circulo
  void display() {
  
    noStroke();
    fill(colorCircle);
    ellipse(xCenter, yCenter, radioCircle + widthCircle/2, radioCircle + widthCircle/2);
    fill(0);
    ellipse(xCenter, yCenter, radioCircle - widthCircle/2, radioCircle - widthCircle/2);
    
  }


}