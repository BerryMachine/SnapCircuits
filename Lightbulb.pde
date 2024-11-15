class Lightbulb extends Component{
  int length; 
  
  Lightbulb ( float x, float y, int l, int s){
   super("lightbulb",x,y,s); 
   this.length = l;
  }
  
  void drawMe(){
    stroke(0,1,200);
    rect(this.position.x, position.y, 60,30);
    
  }
  
  
  
  
  
}
