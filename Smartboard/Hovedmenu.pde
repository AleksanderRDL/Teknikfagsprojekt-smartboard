// Hovedmenu
class Hmenu {
  int n = 0;
  float cooldown;

  Hmenu() {
    imageMode(CENTER);
  }

  void display() {
    rectMode(CENTER);
    textSize(75);
    fill(255);
    stroke(0);

    // Kode for layout af hovedmenuens bokse
    rect((width/4)-140, height/1.8, width/3.4, height/1.3);      // Første opskrift
    rect((width/4)*2, height/1.8, width/3.4, height/1.3);        // Anden
    rect((width/4)*3+140, height/1.8, width/3.4, height/1.3);    // Tredje

    fill(60);
    rect(width/2, 60, width, 120);              // Banner
    rect((width/4)-140, 225, width/3.4, 90);    // Første opskrift titelkasse
    rect((width/4)*2, 225, width/3.4, 90);      // Anden opskrift titelkasse
    rect((width/4)*3+140, 225, width/3.4, 90);  // Tredje opskrift titelkasse

    rect((width/4)-140, 940, width/9, 75, 20);     // Først startknap
    rect((width/4)*2, 940, width/9, 75, 20);       // Anden startknap
    rect((width/4)*3+140, 940, width/9, 75, 20);   // Tredje startknap

    fill(255);
    textFont(titel);
    text("VÆLG OPSKRIFT", width/2, 80);
    textFont(font);
    textSize(40);

    // Henter billed og titel fra opskriftens objekt
    text(ops.get(n).titel, (width/4)-140, 240);
    text(ops.get(n+1).titel, (width/4)*2, 240);
    text(ops.get(n+2).titel, (width/4)*3+140, 240);

    image(ops.get(n).billede, (width/4)-140, 445);
    image(ops.get(n+1).billede, (width/4)*2, 445);
    image(ops.get(n+2).billede, (width/4)*3+140, 445);

    fill(0);
    textSize(32);
    textAlign(LEFT);
    text("Tid: " + ops.get(n).tid, 100, 700);
    text("Sværhedsgrad: " + ops.get(n).diff, 100, 750);
    text("Tid: " + ops.get(n+1).tid, 720, 700);
    text("Sværhedsgrad: " + ops.get(n+1).diff, 720, 750);
    text("Tid: " + ops.get(n+2).tid, 1340, 700);
    text("Sværhedsgrad: " + ops.get(n+2).diff, 1340, 750);

    // Ingredienser 1 boks
    noStroke();
    fill(0);
    textSize(32);
    text("Ingredienser", 100, 800);
    fill(150);
    ellipse(282, 780, 15, 15);
    fill(255);
    ellipse(282, 777, 2.5, 2.5);
    rect(282, 783, 2.5, 5);

    // Redskaber 1 boks
    fill(0);
    textSize(32);
    text("Redskaber", 100, 850);
    fill(150);
    ellipse(252, 830, 15, 15);
    fill(255);
    ellipse(252, 827, 2.5, 2.5);
    rect(252, 833, 2.5, 5);


    // Ingredienser 2 boks
    fill(0);
    textSize(32);
    text("Ingredienser", 720, 800);
    fill(150);
    ellipse(902, 780, 15, 15);
    fill(255);
    ellipse(902, 777, 2.5, 2.5);
    rect(902, 783, 2.5, 5);


    // Redskaber 2 boks
    fill(0);
    textSize(32);
    text("Redskaber", 720, 850);
    fill(150);
    ellipse(872, 830, 15, 15);
    fill(255);
    ellipse(872, 827, 2.5, 2.5);
    rect(872, 833, 2.5, 5);


    // Ingredienser 3 boks
    fill(0);
    textSize(32);
    text("Ingredienser", 1340, 800);
    fill(150);
    ellipse(1522, 780, 15, 15);
    fill(255);
    ellipse(1522, 777, 2.5, 2.5);
    rect(1522, 783, 2.5, 5);



    // Redskaber 3 boks
    fill(0);
    textSize(32);
    text("Redskaber", 1340, 850);
    fill(150);
    ellipse(1492, 830, 15, 15);
    fill(255);
    ellipse(1492, 827, 2.5, 2.5);
    rect(1492, 833, 2.5, 5);

    fill(255);
    textSize(40);
    textAlign(CENTER);
    fill(255);
    text("START", (width/4)-140, 950);
    text("START", (width/4)*2, 950);
    text("START", (width/4)*3+140, 950);

    // Pillene i siden af skærmen
    fill(255, 150);
    ellipse(width-28, height/2, 50, 50);
    ellipse(28, height/2, 50, 50);
    fill(0);
    rect(width-30, height/2, 23, 12);
    rect(30, height/2, 23, 12);
    triangle(width-15, height/2, width-25, height/2-15, width-25, height/2+15);
    triangle(15, height/2, 25, height/2-15, 25, height/2+15);
    fill(255);

    // Funktionerne der tjekker om man svæver over i'et og displayer oplsyningerne hvis man gør
    if (checkHover(282, 780, 7.5)) {
      textAlign(CENTER);
      stroke(0);
      rectMode(CORNER);
      rect((width/4)-30, 625, 300, ops.get(n).ing.length*25+5);
      textSize(20);
      fill(0);
      for (int i = 0; i < ops.get(n).ing.length; i++) {
        text(ops.get(n).ing[i], (width/4)+120, 650+(i*25));
      }
      noStroke();
      rectMode(CENTER);
    } else if (checkHover(252, 830, 7.5)) {
      textAlign(CENTER);
      stroke(0);
      rectMode(CORNER);
      rect(455, 625, 200, ops.get(n).redskaber.length*25+10);
      textSize(20);
      fill(0);
      for (int i = 0; i < ops.get(n).redskaber.length; i++) {
        text(ops.get(n).redskaber[i], 560, 650+(i*25));
      }
      noStroke();
      rectMode(CENTER);
    } else if (checkHover(902, 780, 7.5)) {
      textAlign(CENTER);
      stroke(0);
      rectMode(CORNER);
      rect(1075, 625, 300, ops.get(n+1).ing.length*25+5);
      textSize(20);
      fill(0);
      for (int i = 0; i < ops.get(n+1).ing.length; i++) {
        text(ops.get(n+1).ing[i], 1225, 650+(i*25));
      }
      noStroke();
      rectMode(CENTER);
    } else if (checkHover(872, 830, 7.5)) {
      textAlign(CENTER);
      stroke(0);
      rectMode(CORNER);
      rect(1075, 625, 200, ops.get(n+1).redskaber.length*25+10);
      textSize(20);
      fill(0);
      for (int i = 0; i < ops.get(n+1).redskaber.length; i++) {
        text(ops.get(n+1).redskaber[i], 1180, 650+(i*25));
      }
      noStroke();
      rectMode(CENTER);
    } else if (checkHover(1522, 780, 7.5)) {
      textAlign(CENTER);
      stroke(0);
      rectMode(CORNER);
      rect(1690, 625, 300, ops.get(n+2).ing.length*25+5);
      textSize(20);
      fill(0);
      for (int i = 0; i < ops.get(n+2).ing.length; i++) {
        text(ops.get(n+2).ing[i], 1840, 650+(i*25));
      }
      noStroke();
      rectMode(CENTER);
    } else if (checkHover(1492, 830, 7.5)) {
      textAlign(CENTER);
      stroke(0);
      rectMode(CORNER);
      rect(1690, 625, 200, ops.get(n+2).redskaber.length*25+10);
      textSize(20);
      fill(0);
      for (int i = 0; i < ops.get(n+2).redskaber.length; i++) {
        text(ops.get(n+2).redskaber[i], 1795, 650+(i*25));
      }
      noStroke();
      rectMode(CENTER);
    } 

    // Tjekker om der er trykket på pilene i siden
    else if (checkHover(width-28, height/2, 25) && mousePressed && millis() > cooldown+150) {  // Højre pil
      n++;
      cooldown = millis();
      if (n+2 > 4) {
        n = 2;
      }
    } else if (checkHover(28, height/2, 25) && mousePressed && millis() > cooldown+150) {    // venstre pil
      n--;
      cooldown = millis();
      if (n < 0) {
        n = 0;
      }
    } 

    // Tjekker om der er trykket på startknappen til omelet opskriften
    else if (dist(mouseX, 0, (width/4)*2, 0) < (width/9)/2 && dist(0, mouseY, 0, 940) < 75/2 && n == 0 && mousePressed) { // Anden startknap
      state = 2;
    } else if (dist(mouseX, 0, (width/4)-140, 0) < (width/9)/2 && dist(0, mouseY, 0, 940) < 75/2 && n == 1 && mousePressed) { // Første
      state = 2;
    }
  }  

  // Funktion der checker om musen er over en cirkel
  boolean checkHover(float x, float y, float r) {
    if (dist(mouseX, mouseY, x, y) < r) {
      return true;
    } else {
      return false;
    }
  }
}
