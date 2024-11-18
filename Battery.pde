class Battery extends Component{
  float voltage;
  Battery(float x, float y, int s, boolean h, float v){
    super("battery",x,y,s,h);
    this.voltage = v; 
  }
  
  void drawMe(){
    rectMode(CENTER);
    fill(0,0,0);
    rect(this.position.x, this.position.y, size*2-10, size);
    fill(106,74,45);
    rect(this.position.x+size, this.position.y, 10, size); 
    fill(204);
    rect(this.position.x+size+7.5, this.position.y,5, size/2);
    textSize(size/4);
    fill(255,255,255);
    text("DURACELL®", this.position.x-size/2, this.position.y+size/10);
    noStroke();
    
  }
  
  
  
  
}
