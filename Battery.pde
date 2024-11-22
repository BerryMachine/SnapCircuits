//Battery class
class Battery extends Component{
  //Field
  float voltage = 9;
  
  //Constructor 
  
  Battery(float x, float y){
    super("battery", x, y);
    this.secondary_position = new PVector(x + grid_size, y);
  }
  //Method
  
 //Draw  battery 
  void drawMe(){
    stroke(247, 194, 35);
    strokeWeight(stroke_size);

     if (position.y == secondary_position.y) {
      float middle_x = (position.x + secondary_position.x)/2;
      fill(0,0,0);
      rect(middle_x, position.y, size + grid_size/2, size);

      //rect(middle_x-25, this.position.y, size*2, size);
      fill(106,74,45);
      rect(this.secondary_position.x, this.secondary_position.y, size, grid_size/4);   
      //circle(middle_x, position.y, size);
    }
    
    if (position.x == secondary_position.x) {
      float middle_y = (position.y + secondary_position.y)/2;
      fill(0,0,0);
      rect(position.x, middle_y, size, size + grid_size/2);

      //rect(this.position.x-25, middle_y, size*2, size);
      fill(106,74,45);
      rect(this.secondary_position.x, this.secondary_position.y, size, grid_size/4);
      //circle(position.x, middle_y, size);
    }
    
  }
  
  
  
  
}
