void mouseMoved () {
  float smallest_dist = width;
  for (PVector point : grid_points) {
    float dist = point.dist(new PVector(mouseX, mouseY));
    if (dist < smallest_dist) {
      smallest_dist = dist;
      closest_point = point;
    }
  }
  
  drawSquare(closest_point.x, closest_point.y);
  
}

void mouseClicked () {
  drawSquare(closest_point.x, closest_point.y);
}
