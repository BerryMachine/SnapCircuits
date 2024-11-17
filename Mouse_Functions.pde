void mouseDragged(){
  if (selected_component != null) {
    PVector closest_point = getPoint(mouseX,mouseY);
    
    if(selected_component.type == "battery"){
      selected_component.position = getPoint(mouseX, mouseY);
    
    }else if(selected_component.type == "lightbulb"){
      selected_component.position.x = closest_point.x+25;
      selected_component.position.y = closest_point.y;
    
    }else if(selected_component.type == "wire"){
      if(selected_component.horizontal == true){
        selected_component.position.x = closest_point.x+25;
        selected_component.position.y = closest_point.y;
      }else{
        selected_component.position.x = closest_point.x;
        selected_component.position.y = closest_point.y+25;
      }
      

    }
    
  }
}

void mousePressed(){
  PVector closest_point = getPoint(mouseX,mouseY);
  
  
  if(creating == true){
    
    if(create_component_type == "battery"){
      selected_layer.add(new Component("battery", closest_point.x,closest_point.y,30,false));
      
    }else if(create_component_type == "lightbulb"){
       selected_layer.add(new Lightbulb(closest_point.x+25,closest_point.y,30));

    
    }else if(create_component_type == "wire"){
      
      if(create_wire_orientation == true){
        selected_layer.add(new Wire(closest_point.x+25,closest_point.y,50, true));

      }else{
         selected_layer.add(new Wire(closest_point.x,closest_point.y+25,50, false));

      
      }
    }
    
    creating = false;
  

  } 
  
  else {
    println(selected_layer.size());
    for(int i = selected_layer.size()-1; i>=0; i--){
      Component c = selected_layer.get(i);
      
      if(c.type == "battery"){
        if (c.position.x - c.size/2 < mouseX
       && c.position.x + c.size/2 > mouseX
       && c.position.y - c.size/2 < mouseY
       && c.position.y + c.size/2 > mouseY) {
          println("DAMN");
          selected_component = c;
          break;
        }
      }else if(c.type == "lightbulb"){
       if (c.position.x - c.size-5 < mouseX
       && c.position.x + c.size+5 > mouseX
       && c.position.y - c.size/2 < mouseY
       && c.position.y + c.size/2 > mouseY) {
          println("DAMN");
          selected_component = c;
          break;
        }
        
      }else if(c.type == "wire"){
        if(c.horizontal == true){
          if (c.position.x - grid_size/2 < mouseX
       && c.position.x + grid_size/2 > mouseX
       && c.position.y - 5 < mouseY
       && c.position.y + 5 > mouseY){
            println("DAMN");
            selected_component = c;
            break;
           }
        }else{
          if (c.position.x - 5 < mouseX
       && c.position.x + 5 > mouseX
       && c.position.y - grid_size/2 < mouseY
       && c.position.y + grid_size/2 > mouseY){
            println("DAMN");
            selected_component = c;
            break;
           }
        
        }
        
      }
      
    }
  }
}

void mouseReleased(){
  selected_component = null;
}
