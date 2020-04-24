// Hovedmenu
class Hmenu {

  Hmenu() {
  }

  void display() {
    rectMode(CENTER);
    textSize(75);
    fill(255);

    rect((width/4)-(height/7), height/1.8, width/3.3, height/1.3);   // Første opskrift
    rect((width/4)*2, height/1.8, width/3.3, height/1.3);               // Anden
    rect((width/4)*3+(height/7), height/1.8, width/3.3, height/1.3);    // Tredje

    fill(60);
    rect(width/2, 60, width, 120, 20);            // Banner
    rect((width/4)-(height/7), 225, width/3.3, 90);   // Første opskrift titelkasse
    rect((width/4)*2, 225, width/3.3, 90);            // Anden opskrift titelkasse
    rect((width/4)*3+(height/7), 225, width/3.3,90);  // Tredje opskrift titelkasse
    
    fill(255);
    text("VÆLG OPSKRIFT",width/2,85);
  }
}
