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
void electricity(){
  fill(200,200,200);
   circle(ePos.x,ePos.y,5);
   if (ePos.x >= grid_size*10 && ePos.y >= grid_size*4){
    eVel = new PVector (0,1); 
   }
   if(ePos.y>=grid_size*6 && ePos.x >=grid_size*10){
    eVel = new PVector(-1,0); 
   }
   if (ePos.x<= grid_size*4 && ePos.y >= grid_size*6){
    eVel = new PVector(0,-1); 
   }
   if (ePos.x<= grid_size*4 && ePos.y <= grid_size*4){
    eVel = new PVector(1,0);
   }
 ePos.add(eVel);
  
  
}
