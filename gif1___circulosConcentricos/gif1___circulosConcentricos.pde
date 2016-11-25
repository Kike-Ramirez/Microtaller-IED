/* Microtaller IED One Year Course DA&ED 2017

   Author: Kike Ramírez
   Exercise: Efecto psicodélico círculos concéntricos
   Fecha: 25/11/2016
   
*/

// Definimos las variables
ArrayList<Circle> circles;    // Lista de círculos
int nCircles = 10;            // Número de círculos

void setup() {

  // Definimos ventana de trabajo
  size(768, 768);
  
  // Inicializamos el valor de la lista de círculos (aún vacía)
  circles = new ArrayList<Circle>();
  
  // Llenamos la lista de círculos
  for (int i = 0; i < nCircles; i++) {
    
    float radio = map(i, 0, nCircles-1, 10, height);
    Circle circle = new Circle(width/2, height/2, radio, height/2/nCircles, color(255));
    circles.add(circle);
    
  }
  
}

void draw() {
  
  // Limpiamos canvas anterios
  background(0);
  
  // Recorremos la lista (en sentido inverso) actualizando y dibujando.
  for (int i = nCircles-1; i >= 0; i--) {
    
    float delta = i * 2 * PI / nCircles;
    float w = map( sin( float(millis()) / 500+delta ), -1, 1, 0, height/nCircles);
    circles.get(i).update(w);
    circles.get(i).display();
    
  }
  
}