// Importación de librerías

// Declaración de variables

int x;          // Posicion X de la esfera
int y;          // Posicion Y de la esfera
float velX;     // Velocidad de la esfera, en X
float velY;     // Velocidad de la esfera, en Y
float radio;    // Radio de la esfera
color col;      // Color de la esfera


// Setup del sketch principal (solo se ejecuta la primera vez)
void setup() {

  // Definimos la ventana de trabajo
  size(1024,768);
  
  // Inicializamos los valores de las variables
  x = width/2;
  y = height/2;
  velX = random(-10, 10);
  velY = random(-10,10);
  col = color(255);
  radio = 50;
  
  // Configuramos el modo de dibujo
  fill(col);
  noStroke();
  
}


// Draw del sketch principal (ejecutado en bucle)
void draw() {

  // Borramos el canvas anterior
  background(0);
  
  // Actualizamos las posiciones
  x += velX;
  y += velY;
  
  // Comprobamos que no nos salimos de la pantalla
  if (x <= 0) velX *= -1;
  else if (x >= width) velX *= -1;

  if (y <= 0) velY *= -1;
  else if (y >= height) velY *= -1;
  
  // Dibujamos la esfera
  ellipse(x, y, radio, radio);
  
}