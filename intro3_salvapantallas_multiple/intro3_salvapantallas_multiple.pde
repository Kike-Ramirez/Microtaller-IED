/* Microtaller IED One Year Course DA&ED 2017

   Author: Kike Ramírez
   Exercise: Salvapantallas con múltiples esferas (introducción a listas)
   Fecha: 25/11/2016
   
*/

// Importación de librerías

// Declaración de variables
ArrayList<Esfera> esferas;      // Lista de objetos esfera
int nEsferas = 20;              // Número de esferas en la lista


// Setup del sketch principal (solo se ejecuta la primera vez)
void setup() {

  // Definimos la ventana de trabajo
  size(1024,768);
  
  // Inicializamos los valores de las variables
  esferas = new ArrayList<Esfera>();
  
  // Llenamos la lista de objetos esfera
  colorMode(HSB);
  
  for (int i = 0; i < nEsferas; i++) {
  
    esferas.add(new Esfera(width/2, height/2, 40, color(random(255), 255, 255)));
    
  }

 
}


// Draw del sketch principal (ejecutado en bucle)
void draw() {

  // Borramos el canvas anterior
  background(0);
  
  // Recorremos la lista actualizando y dibujando esferas
  for (int i = 0; i < esferas.size(); i++) {
    // Actualizamos la esfera
    esferas.get(i).update();
    
    // Dibujamos la esfera
    esferas.get(i).display();
  }
  
  fill(255);
  textSize(26);
  // Mostramos el frameRate en pantalla
  text("FrameRate: " + int(frameRate), 30, 30);
  
}