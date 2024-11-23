// wire class
class Wire extends Component {
  // fields 
  color c = color(0, 0, 200);
  int wire_size = 5;
  
  // constructor 
  Wire (float x1, float y1) {
    super("wire", x1, y1);
    this.secondary_position = new PVector(x1, y1);
  }
  
  // draw wire
  void drawMe() {
    strokeWeight(wire_size);
    stroke(c);
    line(position.x, position.y, secondary_position.x, secondary_position.y);
  }
  
  // check if clicked
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
        left = position.x - wire_size;
        right = secondary_position.x + wire_size;
      } else {
        left = secondary_position.x - wire_size;
        right = position.x + wire_size;
      }
      
      up = position.y - wire_size;
      down = position.y + wire_size;
            
    } else {
      if (position.y < secondary_position.y) {
        up = position.y - wire_size;
        down = secondary_position.y + wire_size;
      } else {
        up = secondary_position.y - wire_size;
        down = position.y + wire_size;
      }
      
      left = position.x - wire_size;
      right = position.x + wire_size;
      
    }
    
    if (left < x && right > x && up < y && down > y) {
      status = "moving";
      return true;
    } else {return false;}
  }
  
  // check if primary point has been clicked
  boolean checkContactPrimary (float x, float y) {
    if (position.x - wire_size < x 
     && position.x + wire_size > x
     && position.y - wire_size < y
     && position.y + wire_size > y) {
       return true;
    } else {return false;}
  }
  
  // check if secondary point has been clicked
  boolean checkContactSecondary (float x, float y) {
    if (secondary_position.x - wire_size < x 
     && secondary_position.x + wire_size > x
     && secondary_position.y - wire_size < y
     && secondary_position.y + wire_size > y) {
       return true;
    } else {return false;}
  }
  
  // update primary point position
  void movePrimary () {
    position = closest_point;
  }

  // update secondary point position
  void moveSecondary () {
    secondary_position = closest_point;
  }

}
