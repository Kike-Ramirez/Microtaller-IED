/* Microtaller IED One Year Course DA&ED 2017

   Author: Kike Ramírez
   Exercise: Efecto rotatorio circulos saliendo
   Fecha: 25/11/2016
   
*/

// Importamos la librería de animación ANI
import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;


// Declaramos las variables
ArrayList<Circle> circles;
float timerCircle = 150;
float timeCircle = 0;
float radio = height;

// Setup
void setup() {

  // Limpiamos el canvas anterior
  size(768, 768);
  
      
  // Inicializamos el objeto ani
  Ani.init(this);
  
  // Inicializamos la lista de circulos (aun vacia)
  circles = new ArrayList<Circle>();
  
  // Damos valor a timeCircle
  timeCircle = millis();
  
}

// Draw
void draw() {

  // Limpiamos el canvas anterior
  background(0);
  
  // Comprobamos si tenemos que añadir otro círculo
  if (millis() - timeCircle > timerCircle) {
  
    float xCenter = width/2 + radio * cos(float(millis())/300);
    float yCenter = height/2 + radio * sin(float(millis())/300);
    Circle circle = new Circle(xCenter, yCenter, 80, 80, color(255));
    circles.add(circle);
    timeCircle = millis();
  
  }
  
  // Recorremos la lista hacia atrás
  for (int i = circles.size() - 1; i >= 0; i--) {
    
    // Si el circulo ya ha desaparecido, borralo de la lista
    if (circles.get(i).isDone()) circles.remove(i);
    
    // En otro caso, actualiza y dibuja
    else {
      circles.get(i).update();
      circles.get(i).display();
    }
    
  }
  
}


// Añade un circulo pulsando el raton
void mousePressed() {

  circles.add(new Circle(mouseX, mouseY, 100, 100, color(255)));

}