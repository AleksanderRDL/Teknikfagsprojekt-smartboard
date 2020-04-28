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
    
    image(ops.get(0).billede,(width/4)-140, 445);
    image(ops.get(1).billede,(width/4)*2, 445);
    image(ops.get(2).billede,(width/4)*3+140, 445);
    
    
    
    

    textSize(40);
    fill(255);
    text("START", (width/4)-140, 950);
    text("START", (width/4)*2, 950);
    text("START", (width/4)*3+140, 950);
    
    // Ingredienser
    fill(0);
    textSize(32);
    text("Ingredienser",(width/4)-140,800);
    fill(150);
    ellipse((width/4)-33,780,15,15);
    fill(255);
    ellipse((width/4)-33,777,2.5,2.5);
    rect((width/4)-33,783,2.5,5);
    
    // Redskaber
    fill(0);
    textSize(32);
    text("Redskaber",(width/4)-140,800);
    fill(150);
    ellipse((width/4)-33,780,15,15);
    fill(255);
    ellipse((width/4)-33,777,2.5,2.5);
    rect((width/4)-33,783,2.5,5);
    
    
  }
}
