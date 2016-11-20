
ArrayList<Rectangle> rectangles;
int nRectanglesX = 30;
int nRectanglesY = 20;

void setup() {

  size(1024, 768);
  rectMode(CENTER);
  
  rectangles = new ArrayList<Rectangle>();
  
  for (int i = 0; i < nRectanglesX; i++) {
    
    for (int j = 0; j < nRectanglesY; j++) {
    
      int pasoX = width / nRectanglesX;
      int pasoY = height / nRectanglesY;
      Rectangle rectangle = new Rectangle(pasoX / 2 + i * pasoX, pasoY/2 + j * pasoY, pasoX, pasoY/5, color(255));
      rectangles.add(rectangle);
    
    }
    
  }
  
}

void draw() {
  
  background(0);
  
  for (int i = 0; i < rectangles.size(); i++) {
    
    int x = abs(i / nRectanglesX);
    int y = i % nRectanglesY;
    
    float angle = float(millis()) / 1000 + 1 * PI * x / nRectanglesX + 3 * PI * y / nRectanglesY;
    rectangles.get(i).update(angle);
    rectangles.get(i).display();
    
  }
  
}