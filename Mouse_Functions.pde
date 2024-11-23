// when mouse has moved and not pressed down
void mouseMoved() {
  closest_point = getPoint(mouseX, mouseY); // get nearest grid point
}

// when mouse has moved and is pressed down 
void mouseDragged(){
  closest_point = getPoint(mouseX, mouseY); // get nearest grid point

  if (selected_component != null) { // if a component is selected
    if (selected_component.position != closest_point && selected_component.secondary_position != closest_point) {
      if (selected_component.status == "moving") { // move component
        selected_component.moveObject();
      }
      
      else if (selected_component.status == "awaiting primary") { // rotate component about secondary point
        selected_component.movePrimary();
      }
      
      else if (selected_component.status == "awaiting secondary") { // rotate component about primary point
        selected_component.moveSecondary();
      }
    }
  }

}

// when mouse has been pressed
void mousePressed(){
  if (creating) { // if in creation mode
    if(create_component_type == "battery"){ // create battery
      selected_component = new Battery(closest_point.x, closest_point.y);
    }
    
    else if (create_component_type == "lightbulb") { // create lightbulb
      selected_component = new Lightbulb(closest_point.x, closest_point.y);
    }
    
    else if (create_component_type == "wire") { // create wire
      selected_component = new Wire(closest_point.x, closest_point.y);
    }
    
    selected_layer.add(selected_component); // add component to layer
    selected_component.status = "awaiting secondary"; // allow rotation of object immediately for ease of use
  
  }
 
  else { // if not in creation mode
    // check mouse contact with any component
    // most recently created component has priority
    for(int i = selected_layer.size()-1; i>=0; i--){ // iterate backwards through the components of the layer
      Component c = selected_layer.get(i);

      if (c.checkContact(mouseX, mouseY)) { // check contact
        if (deleting == true) { // if in deleting mode remove component from layer arraylist
            selected_layer.remove(c);
            deleting = false;
        } else {selected_component = c;} // update selected component
        
        break;
      }
    }

  }
  
}

// reset variables when mouse is released
void mouseReleased(){
  creating = false;
  selected_component = null;
}
