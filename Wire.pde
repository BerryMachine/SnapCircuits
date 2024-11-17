class Wire extends Component{
  int length; 
  boolean horizontal; 
  Wire ( float x, float y, int l, boolean h){
   super("wire",x,y,10,h); 
   this.length = l;
   this.horizontal = h; 
  }
  
  void drawMe(){
     strokeWeight(10);
     
    if (this.horizontal == true){
    stroke(0,1,200);
    line(this.position.x-this.length/2, this.position.y, this.position.x+this.length/2, this.position.y);
    stroke(200,1,1);
    line(this.position.x+this.length/2+2, this.position.y , this.position.x+this.length/2, this.position.y);

    line(this.position.x-this.length/2-2, this.position.y , this.position.x-this.length/2, this.position.y);
    }
    else{
    stroke(0,1,200);
    line(this.position.x, this.position.y-this.length/2, this.position.x, this.position.y+this.length/2);
    stroke(200,1,1);
    line(this.position.x, this.position.y+this.length/2+2 , this.position.x, this.position.y+this.length/2);

    line(this.position.x, this.position.y-this.length/2-2 , this.position.x, this.position.y-this.length/2);
      
      
      
    }
    noStroke();
    
  }
  
  
  
  
  
}
