// lightbulb class
class Lightbulb extends Component {

  // constructor
  Lightbulb (float x1, float y1) {
    super("lightbulb", x1, y1);
    this.secondary_position = new PVector(x1 + grid_size, y1);
  }
  
  // draw lightbulb
  void drawMe() {
    super.drawMe();
    noFill();
    
    if (position.y == secondary_position.y) { // bulb part if component is horizontal
      float middle_x = (position.x + secondary_position.x)/2;
      rect(middle_x, position.y, size + grid_size/2, size);
      circle(middle_x, position.y, size);
    }
    
    if (position.x == secondary_position.x) { // bulb part if component is vertical
      float middle_y = (position.y + secondary_position.y)/2;
      rect(position.x, middle_y, size, size + grid_size/2);
      circle(position.x, middle_y, size);
    }
  }
  
}
