/* Microtaller IED One Year Course DA&ED 2017

   Author: Kike Ramírez
   Exercise: Efecto rotatorio circulos saliendo
   Fecha: 25/11/2016
   
*/

// Clase Circle
class Circle {

  // Parametros de la clase
  float xCenter;
  float yCenter;
  float radioCircle;
  float desplaz;
  color colorCircle;
  float timeLife;
  float timeCreation;
  Ani radioAni;
  PVector direction;
  
  // Constructor de la clase
  Circle(float xCenter_, float yCenter_, float radioCircle_, float desplaz_, color colorCircle_) {
  
    xCenter = xCenter_;
    yCenter = yCenter_;
    direction = new PVector(xCenter - width/2, yCenter - height/2);
    direction.normalize();
    radioCircle = 0;
    desplaz = desplaz_;
    colorCircle = colorCircle_;
    timeLife = 5000;
    timeCreation = millis();
    // diameter animation
    radioAni = new Ani(this, timeLife/2000, "radioCircle", radioCircle_, Ani.SINE_IN_OUT);
    // repeat yoyo style (go up and down)
    radioAni.setPlayMode(Ani.YOYO);
    // repeat 1 times
    radioAni.repeat(2); 
  }
  
  // Actualizamos parametros
  void update() {
  
    xCenter += direction.x;
    yCenter += direction.y;  
  
  }
  
  // Comprobamos si ya ha desaparecido
  boolean isDone() {
  
    float time = millis();
    
    if (time-timeCreation > timeLife) return true;
    else return false;
  
  }
  
  // Dibujamos el circulo
  void display() {
  
    noStroke();
    fill(colorCircle);
    ellipse(xCenter, yCenter, radioCircle, radioCircle);
    
  }


}