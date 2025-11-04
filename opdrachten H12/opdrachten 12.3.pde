bankrekening moneystate = new bankrekening();

void setup() {
  size(500, 500);
}

void draw() {
  background(0, 155, 255);

  moneystate.withdrawButton();
  moneystate.depositButton();
  moneystate.money();
}




class bankrekening {
  int CircelCenterX = 125;
  int CircelCenterY = height/2;
  int CircelSize = 75;
  float balance = 256;

  void money() {
    textSize(16);
    text("Balance " + balance, width/2, height/2);
  }

  void withdrawButton() {
    fill(255, 0, 0);
    ellipse(CircelCenterX, CircelCenterY, CircelSize, CircelSize);
    noFill();
    fill(0, 0, 0);
    text("withdraw", CircelCenterX-25, CircelCenterY);
    noFill();
    if (dist(mouseX, mouseY, CircelCenterX, CircelCenterY) <= CircelSize/2 && mousePressed) {
      balance--;
    }
  }
  
  void depositButton() {
      fill(255, 0, 0);
      ellipse(CircelCenterX+200, CircelCenterY, CircelSize, CircelSize);
      noFill();
      fill(0, 0, 0);
      text("deposit", CircelCenterX+175, CircelCenterY);
      noFill();
      if (dist(mouseX, mouseY, CircelCenterX+200, CircelCenterY) <= CircelSize/2 && mousePressed) {
        balance++;
      }
    }
}
