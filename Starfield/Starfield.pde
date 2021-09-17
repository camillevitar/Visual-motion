Star[] stars = new Star[5000];

float speed;
public void settings() {
  size(1200, 1200);
  for (int i = 0; i < stars.length; i++) {
      stars[i] = new Star();
  }
}

void draw() {
  speed = map(mouseX, 0, width, 0, 20);
  background(0);
  translate(height/2, width/2);
  for (int i = 0; i < stars.length; i++) {
      stars[i].update();
      stars[i].show();
  }
}
