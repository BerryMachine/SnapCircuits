import g4p_controls.*;

int grid_size = 50;

ArrayList<Component> layer_1 = new ArrayList<Component>();
ArrayList<Component> layer_2 = new ArrayList<Component>();
ArrayList<Component> layer_3 = new ArrayList<Component>();
ArrayList<Component> layer_4 = new ArrayList<Component>();
ArrayList<Component> selected_layer;
Component selected_component;
ArrayList<PVector> grid_points;
PVector closest_point;
boolean creating = false;
Wire line;
String create_component_type;

void setup () {
  size(800,800);

  selected_layer = layer_1;

  grid_points = new ArrayList<PVector>();
  gridSetup(grid_size);

  //battery.drawMe();
  
  createGUI();
}

void draw(){
  background(100);

  gridDraw(grid_points);
  
  for (Component c: selected_layer) {
    c.drawMe();
  }
  
  //battery.drawMe();

}
