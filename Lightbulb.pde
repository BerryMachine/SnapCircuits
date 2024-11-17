class Lightbulb extends Component{
  int length; 
  boolean on;
  Lightbulb ( float x, float y, int s, boolean o ){
   super("lightbulb",x,y,s,false); 
   this.on = o; 

}
  
  void drawMe(){
    rectMode(CENTER);
    strokeWeight(5);
    noFill();
    stroke(0,1,200);
    stroke(247, 194, 35);
    rect(this.position.x, position.y, size*2+10,size-20);
    
    circle(this.position.x, position.y-(size),50);
    
  }
  
  
  
  
  
}
