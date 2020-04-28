// Hovedmenu
class Hmenu {

  Hmenu() {
    imageMode(CENTER);
  }

  void display() {
    rectMode(CENTER);
    textSize(75);
    fill(255);

    rect((width/4)-140, height/1.8, width/3.4, height/1.3);   // Første opskrift
    rect((width/4)*2, height/1.8, width/3.4, height/1.3);               // Anden
    rect((width/4)*3+140, height/1.8, width/3.4, height/1.3);    // Tredje

    fill(60);
    rect(width/2, 60, width, 120, 20);            // Banner
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
    image(ops.get(3).billede, (width/4)*3+140, 445);





    fill(0);
    textSize(32);
    text("Tid:  " + ops.get(0).tid,(width/4)-140, 700);
    text("Sværhedsgrad:  " + ops.get(0).diff,(width/4)-140, 750);
    text("Tid:  " + ops.get(1).tid,(width/4)*2, 700);
    text("Sværhedsgrad:  " + ops.get(1).diff,(width/4)*2, 750);
    text("Tid:  " + ops.get(2).tid,(width/4)*3+140, 700);
    text("Sværhedsgrad:  " + ops.get(2).diff,(width/4)*3+140, 750);


    fill(255);
    textSize(40);
    fill(255);
    text("START", (width/4)-140, 950);
    text("START", (width/4)*2, 950);
    text("START", (width/4)*3+140, 950);

    // Ingredienser 1 boks
    fill(0);
    textSize(32);
    text("Ingredienser", (width/4)-140, 800);
    fill(150);
    ellipse((width/4)-33, 780, 15, 15);
    fill(255);
    ellipse((width/4)-33, 777, 2.5, 2.5);
    rect((width/4)-33, 783, 2.5, 5);

    // Redskaber 1 boks
    fill(0);
    textSize(32);
    text("Redskaber", (width/4)-140, 850);
    fill(150);
    ellipse((width/4)-48, 830, 15, 15);
    fill(255);
    ellipse((width/4)-48, 827, 2.5, 2.5);
    rect((width/4)-48, 833, 2.5, 5);
    
        // Ingredienser 2 boks
    fill(0);
    textSize(32);
    text("Ingredienser", (width/4)*2, 800);
    fill(150);
    ellipse((width/4)*2+107, 780, 15, 15);
    fill(255);
    ellipse((width/4)*2+107, 777, 2.5, 2.5);
    rect((width/4)*2+107, 783, 2.5, 5);

    // Redskaber 2 boks
    fill(0);
    textSize(32);
    text("Redskaber", (width/4)*2, 850);
    fill(150);
    ellipse((width/4)*2+92, 830, 15, 15);
    fill(255);
    ellipse((width/4)*2+92, 827, 2.5, 2.5);
    rect((width/4)*2+92, 833, 2.5, 5);
    
        // Ingredienser 3 boks
    fill(0);
    textSize(32);
    text("Ingredienser", (width/4)*3+140, 800);
    fill(150);
    ellipse((width/4)*3+247, 780, 15, 15);
    fill(255);
    ellipse((width/4)*3+247, 777, 2.5, 2.5);
    rect((width/4)*3+247, 783, 2.5, 5);

    // Redskaber 3 boks
    fill(0);
    textSize(32);
    text("Redskaber", (width/4)*3+140, 850);
    fill(150);
    ellipse((width/4)*3+232, 830, 15, 15);
    fill(255);
    ellipse((width/4)*3+232, 827, 2.5, 2.5);
    rect((width/4)*3+232, 833, 2.5, 5);
  }
}
