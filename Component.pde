class Component{
  String type;
  String status = "none"; // none, moving, awaiting secondary, awaiting primary
  PVector position;
  PVector secondary_position;
  int size = grid_size/4;
  int stroke_size = 5;
  color c = color(247, 194, 35);
  boolean horizontal;
  
  Component (String t, float x, float y) {
    this.type = t;
    this.position = new PVector(x,y);
  }
  
  void drawMe() { 
    strokeWeight(stroke_size);
    noFill();
    stroke(c);
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
  
  boolean checkContactPrimary (float x, float y) {
    if (position.x - size < x 
     && position.x + size > x
     && position.y - size < y
     && position.y + size > y) {
       return true;
    } else {return false;}
  }
  
  boolean checkContactSecondary (float x, float y) {
    if (secondary_position.x - size < x 
     && secondary_position.x + size > x
     && secondary_position.y - size < y
     && secondary_position.y + size > y) {
       return true;
    } else {return false;}
  }
  
  void moveObject () {
    PVector displacement = PVector.sub(closest_point, position);
    position = closest_point;
    secondary_position.add(displacement);
  }
  
  void movePrimary () {
    if (abs(secondary_position.x - mouseX) > abs(secondary_position.y - mouseY)) {
      if (secondary_position.x - mouseX < 0) {
        position = new PVector(secondary_position.x + grid_size, secondary_position.y);
      } else {
        position = new PVector(secondary_position.x - grid_size, secondary_position.y);
      }
    } else {
      if (secondary_position.y - mouseY < 0) {
        position = new PVector(secondary_position.x, secondary_position.y + grid_size);
      } else {
        position = new PVector(secondary_position.x, secondary_position.y - grid_size);
      }
    }
  }

  void moveSecondary () {
    if (abs(position.x - mouseX) > abs(position.y - mouseY)) {
      if (position.x - mouseX < 0) {
        secondary_position = new PVector(position.x + grid_size, position.y);
      } else {
        secondary_position = new PVector(position.x - grid_size, position.y);
      }
    } else {
      if (position.y - mouseY < 0) {
        secondary_position = new PVector(position.x, position.y + grid_size);
      } else {
        secondary_position = new PVector(position.x, position.y - grid_size);
      }
    }
    
  }

}
