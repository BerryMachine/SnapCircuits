import g4p_controls.*;

int grid_size = 50;

ArrayList<Component> layer_1 = new ArrayList<Component>();
ArrayList<Component> layer_2 = new ArrayList<Component>();
ArrayList<Component> layer_3 = new ArrayList<Component>();
ArrayList<Component> layer_4 = new ArrayList<Component>();
ArrayList<Component> selected_layer;
Component selected_component;
Wire selected_wire;
ArrayList<PVector> grid_points;
PVector closest_point;
boolean creating = false;
boolean deleting = false;
Wire line;
String create_component_type;
boolean create_wire_orientation;
boolean gridShowing = true;

void setup () {
  size(800,800);

  rectMode(RADIUS);

  selected_layer = layer_1;

  grid_points = new ArrayList<PVector>();
  gridSetup(grid_size);
  
  createGUI();
}

void draw(){
  background(100);

  if (gridShowing) {
    gridDraw(grid_points);
    indicateClosestPoint();
  }
  
  for (Component c: selected_layer) {
    c.drawMe();
  }

}
