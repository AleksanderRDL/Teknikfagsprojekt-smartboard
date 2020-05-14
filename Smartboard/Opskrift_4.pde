// Pasta & kødsovs

class Opskrift4 extends Opskrift {
  Opskrift4() {
    titel = "Pasta & kødsovs";
    tid = "45 minutter";
    redskaber = new String [] {"2 gryder", "grydeske" };
    ing = new String [] {"500 g oksekød", "1 glas pastasovs", "1 løg", "pastaskruer", "vand", "salt og peber" };
    diff = "Nem"; 
    billede = loadImage("Sprites/pasta.jpg");
    billede.resize(564, 350);
  }
}
