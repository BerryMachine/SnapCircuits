// init grid
void gridSetup (int size) {
  // fill window with points separated by equal distance
  for (int row = 0; row <= height; row+=size) {
    for (int col = 0; col <= width; col+=size) {
      grid_points.add(new PVector(col, row)); // add point to arraylist of grid points
    }
  }
}

// draw grid
void gridDraw (ArrayList<PVector> grid_points) {
  for (PVector point : grid_points) {
    stroke(50);
    strokeWeight(1);
    fill(50);
    circle(point.x, point.y, 2);
  }
}

// find closest grid point to given coordinates
PVector getPoint (float x, float y) {
  float smallest_dist = width; // store smallest distance from a point
  PVector closest_grid_point = new PVector(width, height);
  
  for (PVector point : grid_points) { // iterate through all grid points
    float dist = point.dist(new PVector(x, y)); // check distance
    
    if (dist < smallest_dist) { // store if closer than the current closest
      smallest_dist = dist;
      closest_grid_point = point.copy();
    }
  }
  
  return closest_grid_point; // return closest grid point
}

// draw a yellow outline around a grid point to indicate the closest grid point
void indicateClosestPoint () {
  if (closest_point != null) {
    strokeWeight(1);
    noFill();
    stroke(247, 194, 35);
    circle(closest_point.x, closest_point.y, 15);
  }
}
