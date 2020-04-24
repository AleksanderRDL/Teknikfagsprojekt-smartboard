// Hovedmenu
class Hmenu {

  Hmenu() {
  }

  void display() {
    rectMode(CENTER);
    textSize(75);
    fill(255);
    
    rect((width/4)-(height/7),height/1.8,width/3.3,height/1.3);
    rect((width/4)*2,height/1.8,width/3.3,height/1.3);
    rect((width/4)*3+(height/7),height/1.8,width/3.3,height/1.3);
    
    
  }
}
