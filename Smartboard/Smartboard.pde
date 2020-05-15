// Interaktiv skærebrætsprojekt - Aleksander, Caroline og Lucas

// Programmering
// Sprint 1: Opsætning af hovedmenu
// Sprint 2: Opsættelse af opskrift objekt
// Sprint 3: Grafik og animation skal loades ind i passende variabler
// Sprint 4: Arduino bevægelsescensor
// Sprint 5: Oprettelse af segmenter
// Sprint 6: Segmenterne programmeres
// Sprint 7: Finjustering og kommentering af kode

import processing.serial.*;

// Opsætning af objekter
ArrayList<Opskrift> ops = new ArrayList<Opskrift>();
Startscreen s;
Hmenu hm;
Opskrift2 o2;
Serial myPort;

// Generelle variabler
int state = 0;
int segStep = 0;
PFont font;
PFont titel;

// Variabler til arduino

String val;
String hojre;
String venstre;
String [] mol;
float cool = 0;

void setup() {
  fullScreen();
  font = createFont("Ink Free", 35);
  titel = createFont("Ink Free", 65);

  //  String portName = Serial.list()[2];
  //   myPort = new Serial(this, portName, 115200);
  ops.add(new Opskrift1());
  ops.add(new Opskrift2());
  ops.add(new Opskrift3());
  ops.add(new Opskrift4());
  ops.add(new Opskrift5());
  o2 = new Opskrift2();

  s = new Startscreen();
  hm = new Hmenu();
}

void draw() {
  //Arduino code
  /*  if (myPort.available()>0) {
   val=myPort.readStringUntil('\n');
   } 
   mol = splitTokens(val);
   hojre = mol[1];
   venstre = mol[0]; 
   if (int(hojre) < 50 && state == 2 && millis() > cool+750){
   segStep++;
   cooldown = millis();
   if (segStep == 9) {
   x2 = 930;
   mil = millis();
   } else if (segStep == 10) {
   x2 = 1200;
   } else if (segStep == 11) {
   mil = millis();
   }
   if(segStep > 12){
   segStep = 12; 
   }
   } else if (int(venstre) < 50 && state == 2 && millis() > cool+750){
   segStep--;
   cooldown = millis();
   if(segStep < 0){
   segStep = 0; 
   }
   }
   */
  if (state == 0) {  // Startskærm
    background(195);
    s.display();
    s.update();
  } else if (state == 1) { // Hovedmenu
    background(195);
    hm.display();
  } else if (state == 2) {   // Opskrifter
    background(#E0903F);
    o2.segmenter();
  }
}
