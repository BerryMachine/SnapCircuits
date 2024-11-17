void gridSetup (int size) {
  for (int row = 0; row <= height; row+=size) {
    for (int col = 0; col <= width; col+=size) {
      grid_points.add(new PVector(col, row));
    }
  }
}

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
  
  for (PVector point : grid_points) {
    float dist = point.dist(new PVector(x, y));
    
    if (dist < smallest_dist) {
      smallest_dist = dist;
      closest_point = point;
    }
  }
  
  return closest_point;
}
