class Lightbulb extends Component{
  int length; 
  
  Lightbulb ( float x, float y, int s){
   super("lightbulb",x,y,s,false); 

}
  
  void drawMe(){
    rectMode(CENTER);
    strokeWeight(5);
    noFill();
    stroke(0,1,200);
    stroke(247, 194, 35);
    rect(this.position.x, position.y, size*2,size);
    
  }
  
  
  
  
  
}
