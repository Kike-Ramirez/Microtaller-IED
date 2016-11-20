
ArrayList<Circle> circles;
int nCircles = 10;

void setup() {

  size(1024, 768);
  
  circles = new ArrayList<Circle>();
  
  for (int i = 0; i < nCircles; i++) {
    
    float radio = map(i, 0, nCircles-1, 10, height);
    Circle circle = new Circle(width/2, height/2, radio, height/2/nCircles, color(255));
    circles.add(circle);
    
  }
  
}

void draw() {
  
  background(0);
  
  for (int i = nCircles-1; i >= 0; i--) {
    
    float delta = i * 2 * PI / nCircles;
    float w = map( sin( float(millis()) / 500+delta ), -1, 1, 0, height/nCircles);
    circles.get(i).update(w);
    circles.get(i).display();
    
  }
  
}