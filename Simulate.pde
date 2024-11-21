void draw_sim(){

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
  stroke(247,194,35);
  strokeWeight(1);
  //PVector[] positions = new PVector[5];
    int i = 0;

    for(PVector pos:positions){
      circle(pos.x,pos.y,5);
      
      if (pos.x >= grid_size*10 && pos.y >= grid_size*4){
        velocities.get(i).x = 0; 
        velocities.get(i).y = 1; 
       }
       if(pos.y>=grid_size*6 && pos.x >=grid_size*10){
        velocities.get(i).x = -1; 
        velocities.get(i).y = 0; 
       }
       if (pos.x<= grid_size*4 && pos.y >= grid_size*6){
        velocities.get(i).x = 0; 
        velocities.get(i).y = -1; 
       }
       if (pos.x<= grid_size*4 && pos.y <= grid_size*4){
        velocities.get(i).x = 1; 
        velocities.get(i).y = 0; 
       }
       
       pos.add(velocities.get(i));
       
       i++;

  
     }
     
  if(frame%30==0 && frame<=26*30){
    positions.add(new PVector(grid_size*4, grid_size*4));
    velocities.add(new PVector(1,0));
    
  }
  
  if(frame>22*30){
    fill(247, 194, 35);
    
    circle(grid_size*4.5, closest.y, grid_size/4);

  }
   
}
