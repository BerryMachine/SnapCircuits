// Lightbulb class
class Lightbulb extends Component {
  boolean on = false;

  Lightbulb (float x1, float y1) {
    super("lightbulb", x1, y1);
    this.secondary_position = new PVector(x1 + grid_size, y1);
  }
  
  void drawMe() {
    super.drawMe();
    
    if (position.y == secondary_position.y) {
      float middle_x = (position.x + secondary_position.x)/2;
      rect(middle_x, position.y, size + grid_size/2, size);
      circle(middle_x, position.y, size);
    }
    
    if (position.x == secondary_position.x) {
      float middle_y = (position.y + secondary_position.y)/2;
      rect(position.x, middle_y, size, size + grid_size/2);
      circle(position.x, middle_y, size);
    }
  }

  boolean checkContact (float x, float y) {
    float left, right, up, down;
    
    if (checkContactPrimary(x, y)) {
      status = "awaiting primary";
      return true;
    }
    
    else if (checkContactSecondary(x, y)) {
      status = "awaiting secondary";
      return true;
    }
    
    else if (position.y == secondary_position.y) {
      if (position.x < secondary_position.x) {
        left = position.x - size;
        right = secondary_position.x + size;
      } else {
        left = secondary_position.x - size;
        right = position.x + size;
      }
      
      up = position.y - size;
      down = position.y + size;
            
    } else {
      if (position.y < secondary_position.y) {
        up = position.y - size;
        down = secondary_position.y + size;
      } else {
        up = secondary_position.y - size;
        down = position.y + size;
      }
      
      left = position.x - size;
      right = position.x + size;
      
    }
    
    if (left < x && right > x && up < y && down > y) {
      status = "moving";
      return true;
    } else {return false;}
  }
  
  
}
