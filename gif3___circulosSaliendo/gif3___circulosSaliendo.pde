import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;


ArrayList<Circle> circles;

void setup() {

  size(1024, 768);
  rectMode(CENTER);
    
  // Ani.init() must be called always first!
  Ani.init(this);
  
  circles = new ArrayList<Circle>();
   
}

void draw() {
  
  background(0);
  
  for (int i = circles.size() - 1; i >= 0; i--) {
    
    if (circles.get(i).isDone()) circles.remove(i);
    else {
      circles.get(i).update();
      circles.get(i).display();
    }
    
  }
  
}

void mousePressed() {

  circles.add(new Circle(mouseX, mouseY, 100, 100, color(255)));

}