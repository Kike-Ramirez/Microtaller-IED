class Esfera {

  // Declaración de los parámetros de la clase
  int x;          // Posicion X de la esfera
  int y;          // Posicion Y de la esfera
  float velX;     // Velocidad de la esfera, en X
  float velY;     // Velocidad de la esfera, en Y
  float radio;    // Radio de la esfera
  color col;      // Color de la esfera
  
  // Constructor de la clase
  Esfera(int x_, int y_, float radio_, color col_) {
  
    // Damos valores iniciales a los parámetros (como setup de la clase)
    x = x_;
    y = y_;
    radio = radio_;
    col = col_;
    velX = random(-30, 30);
    velY = random(-30,30); 
  
  }
  
  // Actualizamos los parámetros
  void update() {

    // Actualizamos las posiciones
    x += velX;
    y += velY;
    
    // Comprobamos que no nos salimos de la pantalla
    if (x <= 0) velX *= -1;
    else if (x >= width) velX *= -1;
  
    if (y <= 0) velY *= -1;
    else if (y >= height) velY *= -1;
    
  }
  
  // Dibujamos la esfera
  void display() {

    // Configuramos el modo de dibujo
    fill(col);
    noStroke();
    ellipse(x, y, radio, radio);
  
  }


}