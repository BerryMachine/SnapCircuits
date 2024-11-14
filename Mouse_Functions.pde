boolean dragging = false;

void mouseMoved () {
  float smallest_dist = width;
  for (PVector point : grid_points) {
    float dist = point.dist(new PVector(mouseX, mouseY));
    if (dist < smallest_dist) {
      smallest_dist = dist;
      closest_point = point;
    }
  }
  
  drawSquare(closest_point.x, closest_point.y);
  
}

//void mouseDragged(){

//    if(dragging == true){
//      c = components.get(i);
//      c.position.x = mouseX;
//      c.position.y = mouseY;
//   }else{
//     for(int i = components.size()-1; i>=0; i--){
//      Component c = components.get(i);

//      if(c.position.x-c.size/2<mouseX && c.position.x+c.size/2>mouseX && c.position.y-c.size/2<mouseY && c.position.y+c.size/2>mouseY){
//        c.position.x = mouseX;
//        c.position.y = mouseY;
//        dragging = true;

//        break;
//      }
      
//    }
//   }
    
//}

void mouseClicked(){
  if(creating == true){
     components.add(new Component("battery", mouseX,mouseY,100));
     creating = false;
  }
}
void mouseReleased(){
  dragging = false;

}
