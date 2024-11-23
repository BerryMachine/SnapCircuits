// battery class
class Battery extends Component{
  // field
  color secondary_c = color(106,74,45);
  
  // constructor 
  Battery(float x, float y){
    super("battery", x, y);
    this.secondary_position = new PVector(x + grid_size, y); // set secondary position to the right by default
  }
  
  // draw battery 
  void drawMe(){
    super.drawMe();
      
    // if component is horizontal
    if (position.y == secondary_position.y) {
      float middle_x = (position.x + secondary_position.x)/2;
      fill(0);
      rect(middle_x, position.y, size + grid_size/2, size);

      fill(secondary_c);
      rect(this.secondary_position.x, this.secondary_position.y, size, grid_size/4);   
    }
    
    // if component is vertical
    if (position.x == secondary_position.x) {
      float middle_y = (position.y + secondary_position.y)/2;
      fill(0);
      rect(position.x, middle_y, size, size + grid_size/2);

      fill(secondary_c);
      rect(this.secondary_position.x, this.secondary_position.y, size, grid_size/4);
    }
    
  }
  
  
}
