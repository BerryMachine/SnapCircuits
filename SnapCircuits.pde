import g4p_controls.*;

int grid_size = 50;

ArrayList<Component> layer_1 = new ArrayList<Component>();
ArrayList<Component> layer_2 = new ArrayList<Component>();
ArrayList<Component> layer_3 = new ArrayList<Component>();
ArrayList<Component> layer_4 = new ArrayList<Component>();
ArrayList<Component> layer_5 = new ArrayList<Component>();
ArrayList<Component> selected_layer;
Component selected_component;
ArrayList<PVector> grid_points;
PVector closest_point;
boolean creating = false;
boolean deleting = false;
String create_component_type;
boolean gridShowing = true;

ArrayList<PVector> positions = new ArrayList<PVector>();
ArrayList<PVector> velocities = new ArrayList<PVector>();
PVector closest;
int numFiles = 1;


int frame = 0;
void setup () {
  size(800,800);
  rectMode(RADIUS);

  selected_layer = layer_1;

  grid_points = new ArrayList<PVector>();
  gridSetup(grid_size);
  
  createGUI();
  message.setVisible(false);

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
if (selected_layer == layer_5){
     electricity();
     frame++;
}
}
