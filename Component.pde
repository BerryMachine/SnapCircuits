class Component{
  String type;
  PVector position;
  int size;
  
  Component(String t, float x, float y, int s){
    this.type = t;
    this.position = new PVector(x,y);
    this.size = s;
  }
  
  void drawMe(){
    rectMode(CENTER);
    fill(100);
    square(this.position.x, position.y, size);
  }
  
  
}
