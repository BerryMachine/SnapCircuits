class Component{
  String type;
  PVector position;
  int size;
  color c = 100;
  boolean horizontal;
  
  Component(String t, float x, float y, int s, boolean h){
    this.type = t;
    this.position = new PVector(x,y);
    this.size = s;
    this.horizontal = h;
  }
  
  void drawMe(){
    strokeWeight(5);
    rectMode(CENTER);
    noFill();
    stroke(247, 194, 35);
    square(this.position.x, position.y, size);
  }
  
 
  
  
}
