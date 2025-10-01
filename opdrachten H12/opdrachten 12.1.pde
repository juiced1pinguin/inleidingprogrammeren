class Rectangle {
  float x;
  float y;
  float breed;
  float hoog;

  Rectangle(float x, float y, float breed, float hoog) {
    this.x = x;
    this.y = x;
    this.breed = breed;
    this.hoog = hoog;
  }

  void display() {
    rect(x, y, breed, hoog);
  }
}

void setup() {
  size(400, 400);
  Rectangle myRectangle = new Rectangle(100, 100, 200, 200);
  myRectangle.display();
}
