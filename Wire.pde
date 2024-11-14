class Wire extends Component{
  int length; 
  Wire ( float x, float y, int l, int s){
   super("wire",x,y,s); 
   this.length = l;
  }
  
  void drawMe(){
    stroke(0,1,200);
    line(this.position.x-this.length/2, this.position.y, this.position.x+this.length/2, this.position.y);
    stroke(200,1,1);
    line(this.position.x+this.length/2+2, this.position.y , this.position.x+this.length/2, this.position.y);

    line(this.position.x-this.length/2-2, this.position.y , this.position.x-this.length/2, this.position.y);
    strokeWeight(10);
    
  }
  
  
  
  
  
}
