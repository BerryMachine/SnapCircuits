int grid_size = 20;
ArrayList<PVector> grid_points;
PVector closest_point;

void setup () {
  //noLoop();
  size(800,600);
  
  grid_points = new ArrayList<PVector>();
  
  gridSetup(grid_size);
}

void draw () {
  background(200);
  gridDraw(grid_points);
}
