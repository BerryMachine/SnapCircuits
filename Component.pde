class Component{
  String type;
  PVector position;
  int size;
  color c = 100;
  
  Component(String t, float x, float y, int s){
    this.type = t;
    this.position = new PVector(x,y);
    this.size = s;
  }
  
  void drawMe(){
    rectMode(CENTER);
    fill(c);
    square(this.position.x, position.y, size);
  }
  
  
}
