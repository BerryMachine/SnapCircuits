void mouseDragged(){
  if (selected_component != null) {
    selected_component.position = getPoint(mouseX, mouseY);
  }
}

void mousePressed(){
  if(creating == true){
     selected_layer.add(new Component("battery", mouseX,mouseY,100));
     creating = false;
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
