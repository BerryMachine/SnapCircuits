void draw_sim(){
  PVector closest;

  //bottom wire
  closest = getPoint(grid_size*5, grid_size*6);
  
  selected_component = new Wire(closest.x, closest.y);

  selected_component.position = closest;
  
  closest = getPoint(grid_size*10, grid_size*6);

  selected_component.secondary_position = closest;

  selected_layer.add(selected_component);
  
  
  //top wire
  closest = getPoint(grid_size*5, grid_size*4);
  
  selected_component = new Wire(closest.x, closest.y);

  selected_component.position = closest;
  
  closest = getPoint(grid_size*10, grid_size*4);

  selected_component.secondary_position = closest;

  selected_layer.add(selected_component);
  
  //right wire
  closest = getPoint(grid_size*10, grid_size*4);
  
  selected_component = new Wire(closest.x, closest.y);

  selected_component.position = closest;
  
  closest = getPoint(grid_size*10, grid_size*6);

  selected_component.secondary_position = closest;

  selected_layer.add(selected_component);
  
  //left wire
  closest = getPoint(grid_size*4, grid_size*4);
  
  selected_component = new Wire(closest.x, closest.y);

  selected_component.position = closest;
  
  closest = getPoint(grid_size*4, grid_size*6);

  selected_component.secondary_position = closest;

  selected_layer.add(selected_component);
  
  //battery
  closest = getPoint(grid_size*4, grid_size*4);
  
  selected_component = new Battery(closest.x, closest.y);  

  selected_layer.add(selected_component);
  
  //LED
  closest = getPoint(grid_size*4, grid_size*6);

  selected_component = new Lightbulb(closest.x, closest.y);
  
  selected_layer.add(selected_component);
 
}

