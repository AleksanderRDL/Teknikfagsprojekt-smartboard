// Interaktiv skærebrætsprojekt - Aleksander, Caroline og Lucas

// Programmering
// Sprint 1: Opsætning af hovedmenu
// Sprint 2: Opsættelse af opskrift objekt
// Sprint 3: Grafik og animation skal loades ind i passende variabler
// Sprint 4: Arduino bevægelsescensor
// Sprint 5: Oprettelse af segmenter
// Sprint 6: Segmenterne programmeres
// Sprint 7: Finjustering og kommentering af kode
int state = 0;
Startscreen s;
Hmenu hm;

void setup() {
  fullScreen();
  s = new Startscreen();
  hm = new Hmenu();
}

void draw() {
  if (state == 0) {  // Startskærm
    background(255);
    s.display();
    s.update();
  } else if (state == 1) { // Hovedmenu
    background(195);
    hm.display();  
    println("Check");
  } else if (state == 2){   // Opskrifter
    //
  }
}

// Arduino
