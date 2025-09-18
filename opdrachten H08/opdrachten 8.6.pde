size(300,300);
background(255,2555,255);

int sizeE = 280;

for(int u = 0; u < 5; u++){
  ellipse(300 - sizeE/2, 300 - sizeE/2, sizeE, sizeE);
  sizeE = sizeE - 30;
}
