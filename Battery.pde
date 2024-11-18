class Battery extends Component{
  float voltage = 9;
  
  Battery(float x, float y){
    super("battery", x, y);
    this.secondary_position = new PVector(x + grid_size, y);
  }
  
  void drawMe(){
    stroke(247, 194, 35);
    strokeWeight(stroke_size);
    fill(0,0,0);
    rect(this.position.x, this.position.y, size*2-10, size);
    fill(106,74,45);
    rect(this.position.x+size, this.position.y, 10, size); 
    fill(204);
    rect(this.position.x+size+7.5, this.position.y,5, size/2);
    textSize(size/4);
    fill(255,255,255);
    text("DURACELL®", this.position.x-size/2, this.position.y+size/10);
    
  }
  
  
  
  
}
