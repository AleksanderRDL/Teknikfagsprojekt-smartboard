// Ramen

class Opskrift1 extends Opskrift {


  Opskrift1() {
    titel = "Japansk Ramen";
    ing = new String [] {"2 tykstegsbøffer", "1 spsk smør", "1 broccoli", "250g champignoner", "1,5L oksebouillon", "200g ramennudler", "2cm frisk ingefær", "halv frisk chili", "4 spsk sojasauce", "2 spsk fiskesauce","4 æg","3 forårsløg","1 håndfuld frisk koriander","150g bønnespirer","1 limefrugt"};
    redskaber = new String[] {"Skærebræt","Pande","Spiseske","Gryde","Skåle"};
    diff = 3;   // (Max)
    tid = "31-60 minutter";
    billede = loadImage("Sprites/ramen.jpg");
  }
}
