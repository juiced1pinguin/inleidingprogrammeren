size(220, 220);
background(255, 255, 255);

int sizeE = 210;

for (int u= 0; u<50; u++){
  ellipse(110,110,sizeE,sizeE);
  sizeE = sizeE - 4;
}
________________________________________________________________
size(300,300);
background(255,2555,255);

int sizeE = 280;

for(int u = 0; u <= 50; u++){
  ellipse(4 + sizeE/2, 4 + sizeE/2, sizeE, sizeE);
  sizeE = sizeE - 5;
  println("one");
}
