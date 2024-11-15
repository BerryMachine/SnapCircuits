Component battery;
Component selected_component;
import g4p_controls.*;
boolean creating = false;
ArrayList<Component> layer_1 = new ArrayList<Component>();
ArrayList<Component> selected_layer;
int grid_size = 50;
ArrayList<PVector> grid_points;
PVector closest_point;

void setup(){
  size(800,800);
  
  selected_layer = layer_1;
  
  grid_points = new ArrayList<PVector>();
  gridSetup(grid_size);
  
  battery = new Component("battery", 100,100,100);
  //battery.drawMe();
  
  createGUI();

}

void draw(){
  background(100);
  
  gridDraw(grid_points);
  
  for(Component c: layer_1){
    c.drawMe();
  }
  
  //battery.drawMe();

}
