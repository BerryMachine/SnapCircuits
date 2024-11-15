void mouseDragged(){
  if (selected_component != null) {
    selected_component.position = getPoint(mouseX, mouseY);
  }
}

void mousePressed(){
  if(creating == true){
     // selected_layer.add(new Component("battery", mouseX,mouseY,100));
     // creating = false;
    // NEW CODE:
      //float smallest_dist = width;
  //for (PVector point : grid_points) {
  //  float dist = point.dist(new PVector(mouseX, mouseY));
  //  if (dist < smallest_dist) {
  //    smallest_dist = dist;
  //    closest_point = point;
  //  }
  //}
  
  //if(creating == true && type == "battery"){
  //   components.add(new Component("battery", closest_point.x,closest_point.y,30));
  //   creating = false;
  //}else{

  //   components.add(new Wire(closest_point.x+25,closest_point.y,50));

  //   creating = false;
  

  } 
  
  else {
    println(selected_layer.size());
    for(int i = selected_layer.size()-1; i>=0; i--){
      Component c = selected_layer.get(i);

      if (c.position.x - c.size/2 < mouseX
       && c.position.x + c.size/2 > mouseX
       && c.position.y - c.size/2 < mouseY
       && c.position.y + c.size/2 > mouseY) {
        println("DAMN");
        selected_component = c;
        break;
      }
    }
  }
}

void mouseReleased(){
  selected_component = null;
}
