//Simulation
void draw_sim(){
  PVector[] wire_positions = {getPoint(grid_size*5, grid_size*6),getPoint(grid_size*10, grid_size*6),getPoint(grid_size*5, grid_size*4),getPoint(grid_size*10, grid_size*4),getPoint(grid_size*10, grid_size*4),getPoint(grid_size*10, grid_size*6),getPoint(grid_size*4, grid_size*4),getPoint(grid_size*4, grid_size*6)};
  
  for(int i = 0; i<4; i++){
    selected_component = new Wire(wire_positions[i*2].x,wire_positions[i*2].y);
    selected_component.position = wire_positions[i*2];
    selected_component.secondary_position = wire_positions[i*2+1];
    selected_layer.add(selected_component);
  }
  
  //battery
  closest = getPoint(grid_size*4, grid_size*4);
  
  selected_component = new Battery(closest.x, closest.y);  

  selected_layer.add(selected_component);
  
  //LED
  closest = getPoint(grid_size*4, grid_size*6);

  selected_component = new Lightbulb(closest.x, closest.y);
  
  selected_layer.add(selected_component);
 
}

// Draw electricity flowing through circuit
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
