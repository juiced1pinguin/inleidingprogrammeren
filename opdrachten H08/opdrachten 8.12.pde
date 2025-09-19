size(400, 400);
background(255, 255, 255);
int xWaarde = 20;
int yWaarde = 20;
int xWaarde2 = 40;
int yWaarde2 = 40;
for (int i = 0; i < 4; i++) {
  for (int j = 0; j < 4; j++) {
    fill(0, 0, 0);
    rect(xWaarde, yWaarde, 20, 20);
    noFill();
    fill(0, 0, 0);
    rect(xWaarde2, yWaarde2, 20, 20);
    noFill();
    rect(20,20,160,160);
    yWaarde = yWaarde + 40;
    yWaarde2 = yWaarde2 + 40;
  }
  yWaarde = 20;
  xWaarde = xWaarde + 40;

  yWaarde2 = 40;
  xWaarde2 = xWaarde + 20;
}
