void gridSetup (int size) {
  for (int row = 0; row <= height; row+=size) {
    for (int col = 0; col <= width; col+=size) {
      grid_points.add(new PVector(col, row));
    }
  }
}

void gridDraw (ArrayList<PVector> grid_points) {
  for (PVector point : grid_points) {
    fill(50);
    circle(point.x, point.y, 2);
  }
}

void drawSquare (float x, float y) {
  rectMode(CENTER);
  fill(0);
  square(x, y, 30);
}
