
void gridSetup (int size) {
  for (int row = 0; row <= height; row+=size) {
    for (int col = 0; col <= width; col+=size) {
      grid_points.add(new PVector(col, row));
    }
  }
}
//Draw grid
void gridDraw (ArrayList<PVector> grid_points) {
  for (PVector point : grid_points) {
    stroke(50);
    strokeWeight(1);
    fill(50);
    circle(point.x, point.y, 2);
  }
}

PVector getPoint (float x, float y) {
  float smallest_dist = width;
  PVector closest_grid_point = new PVector(width, height);
  
  for (PVector point : grid_points) {
    float dist = point.dist(new PVector(x, y));
    
    if (dist < smallest_dist) {
      smallest_dist = dist;
      closest_grid_point = point.copy();
    }
  }
  
  return closest_grid_point;
}

void indicateClosestPoint () {
  if (closest_point != null) {
    strokeWeight(1);
    noFill();
    stroke(247, 194, 35);
    circle(closest_point.x, closest_point.y, 15);
  }
}
