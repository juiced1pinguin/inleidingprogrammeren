public boolean gamestart = false;
boolean gameover = false;

float AllFruitSpeed = 2;
public int fruitsOnScreen = 10;
public int ScoreCounter = 25;
public int Score = 0;
int trail = 1;
public boolean level1Beat = false;
public boolean level2Beat = false;
public boolean level3Beat = false;
public boolean level4Beat = false;
public boolean level5Beat = false;
public boolean level1 = false;
public boolean level2 = false;
public boolean level3 = false;
public boolean level4 = false;
public boolean level5 = false;
public boolean level6 = false;
boolean gamestartText = true;
public int Levens = 5;


fruit fruitLevel = new fruit();
levelBeatClass levelBeat = new levelBeatClass();
Levels LevelsGame = new Levels();
basicVar AllVariables = new basicVar();


ArrayList<fruit> fruitBowl;


void setup() {
  size(500, 700);

  fruitBowl = new ArrayList<fruit>();
}

void draw() {
  background(0, 155, 255);

  if (Levens <= 0) {
    gamestart = false;
    gameover = true;
    textSize(width/6);
    text("game over", width/6, height/2);
    fruitLevel.originalVar();
  }

  if (gameover && !gamestart && mousePressed) {
    gamestart = true;
    gameover = false;
    AllVariables.basicVariables();
  }

  //houd score bij om de fruitSpeed aan te passen
  if (Score >= ScoreCounter) {
    ScoreCounter+= 25;
    AllFruitSpeed += 0.25;
  }

  //runt de dingen van me voids in me classes
  levelBeat.levelGameBeat();
  LevelsGame.LevelsMake();

  //maakt het startscherm
  if (!gameover && !gamestart && mousePressed) {
    gamestartText = false;
    gamestart = true;
  }

  //startscherm text
  if (gamestartText) {
    textSize(width/6);
    text("start game", width/6, height/2);
  }

  for (int i = 0; i <= trail; i++) {
    ellipse(mouseX, mouseY, 10, 10);
  }
}

//maakt de class fruit
class fruit {
  float fruitCenterX = random(25, 475);
  public float fruitCenterY = -25;
  public float fruitSize = 50;
  boolean fruitVisible = false;
  public float fruitSpeed = AllFruitSpeed;


  void originalVar() {
    fruitCenterX = random(25, 475);
    fruitCenterY = -25;
    fruitSize = 50;
    fruitVisible = false;
    fruitSpeed = AllFruitSpeed;
  }

  void fruitHit() {
    if (dist(mouseX, mouseY, fruitCenterX, fruitCenterY) <= fruitSize/2) {
      fruitCenterY = -50;
      fruitCenterX = random(25, 475);
      Score = Score + 1;
    }
  }

  void fruitCreate() {
    ellipse(fruitCenterX, fruitCenterY, fruitSize, fruitSize);
  }

  void move() {
    if (fruitCenterY >= height + 25) {
      fruitCenterX = random(0, 500);
    }

    if (gamestart) {
      fruitVisible = true;
    }

    //als de ball zichtbaar is beweegt die
    if (fruitVisible) {
      fruitSpeed = AllFruitSpeed;
      fruitCenterY = fruitCenterY + fruitSpeed;
    }

    if (fruitCenterY >= height + 35) {
      fruitCenterY = -25;
      //Score= Score  - 2;
      background(255, 0, 0);
      Levens--;
    }

    //if (Score >= ScoreCounter){
    //  ScoreCounter+= 30;
    //  fruitSpeed += AllFruitSpeed;
    //}
  }
}


class levelBeatClass {
  void levelGameBeat() {
    if (Score >= 30 && level1) {
      level1Beat = true;
    }

    if (Score >= 60 && level2) {
      level2Beat = true;
    }
    if (Score >= 90 && level3) {
      level3Beat = true;
    }
    if (Score >= 120 && level4) {
      level4Beat = true;
    }
    if (Score >= 150 && level5) {
      level5Beat = true;
    }
  }
}


class Levels {
  void LevelsMake() {
    if (gamestart) {
      level1 = true;
    }
    if (level1Beat) {
      level2 = true;
    }
    if (level2Beat) {
      level3 = true;
    }
    if (level3Beat) {
      level4 = true;
    }
    if (level4Beat) {
      level5 = true;
    }
    if (level5Beat) {
      level6 = true;
    }

    if (level1) {
      fruitBowl.add(new fruit());
      fruitBowl.add(new fruit());
      fruitBowl.get(0).move();
      fruitBowl.get(1).move();
    }
    if (level2) {
      fruitBowl.add(new fruit());
      fruitBowl.get(2).move();
    }
    if (level3) {
      fruitBowl.add(new fruit());
      fruitBowl.get(3).move();
    }
    if (level4) {
      fruitBowl.add(new fruit());
      fruitBowl.get(4).move();
    }
    if (level5) {
      fruitBowl.add(new fruit());
      fruitBowl.get(5).move();
    }
    if (level6) {
      fruitBowl.add(new fruit());
      fruitBowl.get(6).move();
    }

    if (gamestart) {
      if (level1) {
        fruitBowl.get(0).move();
        fruitBowl.get(0).fruitHit();
        fruitBowl.get(1).move();
        fruitBowl.get(1).fruitHit();
      }
      if (level2) {
        fruitBowl.get(2).move();
        fruitBowl.get(2).fruitHit();
      }
      if (level3) {
        fruitBowl.get(3).move();
        fruitBowl.get(3).fruitHit();
      }
      if (level4) {
        fruitBowl.get(4).move();
        fruitBowl.get(4).fruitHit();
      }
      if (level5) {
        fruitBowl.get(5).move();
        fruitBowl.get(5).fruitHit();
      }
      if (level6) {
        fruitBowl.get(6).move();
        fruitBowl.get(6).fruitHit();
      }

      if (Score < 0) {
        Score = 0;
      }
      for (int u = 0; u < fruitsOnScreen; u++) {
        fill(255, 0, 0);
        fruitBowl.get(0).fruitCreate();
        fruitBowl.get(1).fruitCreate();
        if (level1Beat) {
          fruitBowl.get(2).fruitCreate();
        }
        if (level2Beat) {
          fruitBowl.get(3).fruitCreate();
        }
        if (level3Beat) {
          fruitBowl.get(4).fruitCreate();
        }
        if (level4Beat) {
          fruitBowl.get(5).fruitCreate();
        }
        if (level5Beat) {
          fruitBowl.get(6).fruitCreate();
        }
        noFill();
      }
      fill(0);
      textSize(20);
      text("score " + Score, 20, 20);
      text("speed " + AllFruitSpeed, 20, 40);
      text("levens " + Levens, width - 85, 20);
      noFill();
    }
  }
}

class basicVar {
  void basicVariables() {
    AllFruitSpeed = 2;
    fruitsOnScreen = 10;
    ScoreCounter = 25;
    Score = 0;
    trail = 1;
    level1Beat = false;
    level2Beat = false;
    level3Beat = false;
    level4Beat = false;
    level5Beat = false;
    level1 = false;
    level2 = false;
    level3 = false;
    level4 = false;
    level5 = false;
    level6 = false;
    gamestartText = false;
    Levens = 5;
  }
}
