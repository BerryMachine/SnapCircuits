void mouseMoved() {
  closest_point = getPoint(mouseX, mouseY);
}

void mouseDragged(){
  closest_point = getPoint(mouseX, mouseY);

  if (selected_component != null) {
    if (selected_component.position != closest_point && selected_component.secondary_position != closest_point) {
      if (selected_component.status == "moving") {
        selected_component.moveObject();
      }
      
      else if (selected_component.status == "awaiting primary") {
        selected_component.movePrimary();
      }
      
      else if (selected_component.status == "awaiting secondary") {
        selected_component.moveSecondary();
      }
    }
  }

}

void mousePressed(){
  if (creating) {
    if(create_component_type == "battery"){
      selected_component = new Battery(closest_point.x, closest_point.y);  
    }
    
    else if (create_component_type == "lightbulb") {
      selected_component = new Lightbulb(closest_point.x, closest_point.y);
    }
    
    else if (create_component_type == "wire") {
      selected_component = new Wire(closest_point.x, closest_point.y);
    }
    
    selected_layer.add(selected_component);
    selected_component.status = "awaiting secondary";
  
  }
 
  else {
    for(int i = selected_layer.size()-1; i>=0; i--){
      Component c = selected_layer.get(i);

      if (c.checkContact(mouseX, mouseY)) {
        if (deleting == true) {
            selected_layer.remove(c);
            deleting = false;
        } else {selected_component = c;}
        
        break;
      }
    }

  }
  
}

void mouseReleased(){
  creating = false;
  selected_component = null;
  selected_wire = null;
}
