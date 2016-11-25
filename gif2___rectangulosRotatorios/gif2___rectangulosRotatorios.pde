/* Microtaller IED One Year Course DA&ED 2017

   Author: Kike Ramírez
   Exercise: Rejilla de elementos rotatorios
   Fecha: 25/11/2016
   
*/


// Declaramos las variables
ArrayList<Rectangle> rectangles;
int nRectanglesX = 30;
int nRectanglesY = 20;


// Setup
void setup() {

  // Definimos la ventana de trabajo
  size(1024, 768);
  
  // Fijamos el anchor point del rectángulo en el centro
  rectMode(CENTER);
  
  // Inicializamos la lista de rectángulos (aún vacía)
  rectangles = new ArrayList<Rectangle>();
  
  // Recorremos la rejilla llenando la lista de objetos
  for (int i = 0; i < nRectanglesX; i++) {
    
    for (int j = 0; j < nRectanglesY; j++) {
    
      int pasoX = width / nRectanglesX;
      int pasoY = height / nRectanglesY;
      Rectangle rectangle = new Rectangle(pasoX / 2 + i * pasoX, pasoY/2 + j * pasoY, pasoX, pasoY/5, color(255));
      rectangles.add(rectangle);
    
    }
    
  }
  
}

// Draw
void draw() {
  
  // Limpiamos el canvas anterior
  background(0);
  
  // Recorremos la lista de rectangulos actualizando valores y dibujando
  for (int i = 0; i < rectangles.size(); i++) {
    
    int x = abs(i / nRectanglesX);
    int y = i % nRectanglesY;
    
    float angle = float(millis()) / 1000 + 1 * PI * x / nRectanglesX + 3 * PI * y / nRectanglesY;
    rectangles.get(i).update(angle);
    rectangles.get(i).display();
    
  }
  
}