// circuit components class
class Component{
  // fields
  String type;
  String status = "none"; // none, moving, awaiting secondary, awaiting primary
  PVector position;
  PVector secondary_position;
  int size = grid_size/4;
  int stroke_size = 2;
  color c = color(247, 194, 35);
  boolean horizontal;
  
  // constructor
  Component (String t, float x, float y) {
    this.type = t;
    this.position = new PVector(x,y);
  }

  // draw component
  void drawMe() { 
    strokeWeight(stroke_size);
    stroke(c);
  }

  // check for click
  boolean checkContact (float x, float y) {
    float left, right, up, down; // edges of component
    
    // check if component's primary end is clicked
    if (checkContactPrimary(x, y)) {
      status = "awaiting primary"; // update status to allow rotation about secondary point
      return true;
    }
    
    // check if component's secondary end is clicked
    else if (checkContactSecondary(x, y)) {
      status = "awaiting secondary"; // update status to allow rotation about primary point
      return true;
    }
    
    // assign following values to edges if the component is currently horizontal
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
            
    // assign following values to edges if the component is currently vertical
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
    
    // check click on rest of component
    if (left < x && right > x && up < y && down > y) {
      status = "moving"; // update status to allow translation
      return true;
    } else {return false;}
  }
  
  // check if primary point has been clicked
  boolean checkContactPrimary (float x, float y) {
    if (position.x - size < x 
     && position.x + size > x
     && position.y - size < y
     && position.y + size > y) {
       return true;
    } else {return false;}
  }
  
  // check if secondary point has been clicked
  boolean checkContactSecondary (float x, float y) {
    if (secondary_position.x - size < x 
     && secondary_position.x + size > x
     && secondary_position.y - size < y
     && secondary_position.y + size > y) {
       return true;
    } else {return false;}
  }
  
  // object movement 
  void moveObject () {
    PVector displacement = PVector.sub(closest_point, position); // calculate displacement of primary position
    position = closest_point;
    secondary_position.add(displacement); // move secondary position respectively to translate entire component
  }
  
  // rotate component about the secondary position
  void movePrimary () {
    // determine orientation of component based on mouse position
    if (abs(secondary_position.x - mouseX) > abs(secondary_position.y - mouseY)) { // if component should be horizontal
      if (secondary_position.x - mouseX < 0) { // if primary point should face right
        position = new PVector(secondary_position.x + grid_size, secondary_position.y);
      } else {
        position = new PVector(secondary_position.x - grid_size, secondary_position.y);
      }
    } else { // if component should be vertical
      if (secondary_position.y - mouseY < 0) { // if primary point should face right
        position = new PVector(secondary_position.x, secondary_position.y + grid_size);
      } else {
        position = new PVector(secondary_position.x, secondary_position.y - grid_size);
      }
    }
  }
  
  // rotate component about the primary position
  void moveSecondary () {
    // determine orientation of component based on mouse position
    if (abs(position.x - mouseX) > abs(position.y - mouseY)) { // if component should be horizontal
      if (position.x - mouseX < 0) { // if secondary point should face right
        secondary_position = new PVector(position.x + grid_size, position.y);
      } else {
        secondary_position = new PVector(position.x - grid_size, position.y);
      }
    } else { // if component should be vertical
      if (position.y - mouseY < 0) { // if secondary point should face right
        secondary_position = new PVector(position.x, position.y + grid_size);
      } else {
        secondary_position = new PVector(position.x, position.y - grid_size);
      }
    }
    
  }

}
