/* Microtaller IED One Year Course DA&ED 2017

   Author: Kike Ramírez
   Exercise: Salvapantallas con un objeto esfera (introducción a clases y objetos)
   Fecha: 25/11/2016
   
*/

// Importación de librerías

// Declaración de variables
Esfera esfera;



// Setup del sketch principal (solo se ejecuta la primera vez)
void setup() {

  // Definimos la ventana de trabajo
  size(1024,768);
  
  // Inicializamos los valores de las variables
  esfera = new Esfera(width/2, height/2, 40, color(255, 0, 0));
 
}


// Draw del sketch principal (ejecutado en bucle)
void draw() {

  // Borramos el canvas anterior
  background(0);
  
  // Actualizamos la esfera
  esfera.update();
  
  // Dibujamos la esfera
  esfera.display();
  
}