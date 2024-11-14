
Component battery;
Component c;
import g4p_controls.*;
boolean creating = false;
ArrayList<Component> components = new ArrayList<Component>();
int grid_size = 50;
ArrayList<PVector> grid_points;
PVector closest_point;
Wire line;

void setup(){
  size(800,800);
  
  grid_points = new ArrayList<PVector>();
  gridSetup(grid_size);
  
  battery = new Component("battery", 100,100,100);
  //battery.drawMe();
  
  createGUI();
  line = new Wire(100,100,grid_size,100);
}

void draw(){
  background(100);
   line.drawMe();

  gridDraw(grid_points);
  
  for(Component c: components){
    c.drawMe();
  }
  line.drawMe();

  
  //battery.drawMe();

}
