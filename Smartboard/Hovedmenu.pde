// Hovedmenu
class Hmenu {

  Hmenu() {
    imageMode(CENTER);
  }

  void display() {
    rectMode(CENTER);
    textSize(75);
    fill(255);
    stroke(0);

    rect((width/4)-140, height/1.8, width/3.4, height/1.3);   // Første opskrift
    rect((width/4)*2, height/1.8, width/3.4, height/1.3);               // Anden
    rect((width/4)*3+140, height/1.8, width/3.4, height/1.3);    // Tredje

    fill(60);
    rect(width/2, 60, width, 120, 15);            // Banner
    rect((width/4)-140, 225, width/3.4, 90);   // Første opskrift titelkasse
    rect((width/4)*2, 225, width/3.4, 90);            // Anden opskrift titelkasse
    rect((width/4)*3+140, 225, width/3.4, 90);  // Tredje opskrift titelkasse

    rect((width/4)-140, 940, width/9, 75, 20);      // Først startknap
    rect((width/4)*2, 940, width/9, 75, 20);      // Anden startknap
    rect((width/4)*3+140, 940, width/9, 75, 20);      // Tredje startknap

    fill(255);
    text("VÆLG OPSKRIFT", width/2, 85);
    textSize(40);
    text(ops.get(0).titel, (width/4)-140, 240);
    text(ops.get(1).titel, (width/4)*2, 240);
    text(ops.get(2).titel, (width/4)*3+140, 240);

    image(ops.get(0).billede, (width/4)-140, 445);
    image(ops.get(1).billede, (width/4)*2, 445);
    image(ops.get(2).billede, (width/4)*3+140, 445);





    fill(0);
    textSize(32);
    textAlign(LEFT);
    text("Tid: " + ops.get(0).tid, 100, 700);
    text("Sværhedsgrad: " + ops.get(0).diff, 100, 750);
    text("Tid: " + ops.get(1).tid, 720, 700);
    text("Sværhedsgrad: " + ops.get(1).diff, 720, 750);
    text("Tid: " + ops.get(2).tid, 1340, 700);
    text("Sværhedsgrad: " + ops.get(2).diff, 1340, 750);

    // Ingredienser 1 boks
    noStroke();
    fill(0);
    textSize(32);
    text("Ingredienser", 100, 800);
    fill(150);
    ellipse(300, 780, 15, 15);
    fill(255);
    ellipse(300, 777, 2.5, 2.5);
    rect(300, 783, 2.5, 5);

    // Redskaber 1 boks
    fill(0);
    textSize(32);
    text("Redskaber", 100, 850);
    fill(150);
    ellipse(270, 830, 15, 15);
    fill(255);
    ellipse(270, 827, 2.5, 2.5);
    rect(270, 833, 2.5, 5);


    // Ingredienser 2 boks
    fill(0);
    textSize(32);
    text("Ingredienser", 720, 800);
    fill(150);
    ellipse(920, 780, 15, 15);
    fill(255);
    ellipse(920, 777, 2.5, 2.5);
    rect(920, 783, 2.5, 5);


    // Redskaber 2 boks
    fill(0);
    textSize(32);
    text("Redskaber", 720, 850);
    fill(150);
    ellipse(890, 830, 15, 15);
    fill(255);
    ellipse(890, 827, 2.5, 2.5);
    rect(890, 833, 2.5, 5);


    // Ingredienser 3 boks
    fill(0);
    textSize(32);
    text("Ingredienser", 1340, 800);
    fill(150);
    ellipse(1540, 780, 15, 15);
    fill(255);
    ellipse(1540, 777, 2.5, 2.5);
    rect(1540, 783, 2.5, 5);



    // Redskaber 3 boks
    fill(0);
    textSize(32);
    text("Redskaber", 1340, 850);
    fill(150);
    ellipse(1510, 830, 15, 15);
    fill(255);
    ellipse(1510, 827, 2.5, 2.5);
    rect(1510, 833, 2.5, 5);



    fill(255);
    textSize(40);
    textAlign(CENTER);
    fill(255);
    text("START", (width/4)-140, 950);
    text("START", (width/4)*2, 950);
    text("START", (width/4)*3+140, 950);

    if (checkHover(300, 780)) {
      textAlign(CENTER);
      stroke(0);
      rectMode(CORNER);
      rect((width/4)-30, 625, 300, ops.get(0).ing.length*25+5);
      textSize(20);
      fill(0);
      for (int i = 0; i < ops.get(0).ing.length; i++) {
        text(ops.get(0).ing[i], (width/4)+120, 650+(i*25));
      }
      noStroke();
      rectMode(CENTER);
    }
    else if (checkHover(270, 830)) {
      textAlign(CENTER);
      stroke(0);
      rectMode(CORNER);
      rect(455, 625, 200, ops.get(0).redskaber.length*25+10);
      textSize(20);
      fill(0);
      for (int i = 0; i < ops.get(0).redskaber.length; i++) {
        text(ops.get(0).redskaber[i], 560, 650+(i*25));
      }
      noStroke();
      rectMode(CENTER);
    }
   else if (checkHover(920, 780)) {
      textAlign(CENTER);
      stroke(0);
      rectMode(CORNER);
      rect(1075, 625, 300, ops.get(1).ing.length*25+5);
      textSize(20);
      fill(0);
      for (int i = 0; i < ops.get(1).ing.length; i++) {
        text(ops.get(1).ing[i], 1225, 650+(i*25));
      }
      noStroke();
      rectMode(CENTER);
    }
   else if (checkHover(890, 830)) {
      textAlign(CENTER);
      stroke(0);
      rectMode(CORNER);
      rect(1075, 625, 200, ops.get(1).redskaber.length*25+10);
      textSize(20);
      fill(0);
      for (int i = 0; i < ops.get(1).redskaber.length; i++) {
        text(ops.get(1).redskaber[i], 1180, 650+(i*25));
      }
      noStroke();
      rectMode(CENTER);
    }
   else if (checkHover(1540, 780)) {
      textAlign(CENTER);
      stroke(0);
      rectMode(CORNER);
      rect(1690, 625, 300, ops.get(2).ing.length*25+5);
      textSize(20);
      fill(0);
      for (int i = 0; i < ops.get(2).ing.length; i++) {
        text(ops.get(2).ing[i], 1840, 650+(i*25));
      }
      noStroke();
      rectMode(CENTER);
    }  
   else if (checkHover(1510, 830)) {
      textAlign(CENTER);
      stroke(0);
      rectMode(CORNER);
      rect(1690, 625, 200, ops.get(2).redskaber.length*25+10);
      textSize(20);
      fill(0);
      for (int i = 0; i < ops.get(2).redskaber.length; i++) {
        text(ops.get(2).redskaber[i], 1795, 650+(i*25));
      }
      noStroke();
      rectMode(CENTER);
    }
  }

  boolean checkHover(float x, float y) {
    if (dist(mouseX, mouseY, x, y) < 7.5) {
      return true;
    } else {
      return false;
    }
  }
}
