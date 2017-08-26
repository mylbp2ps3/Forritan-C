// Standard funktion til opsætning
void setup() {
  size(480, 480);
  PFont f;
  f = createFont("Arial",16,true);
  textFont(f,36);
  fill(255);  
}

// Standard funktion til tegning i vinduet
void draw() {
}

// Sæt datoen til næste dag
void setToNextDate() {
}

// Returner en streng i formatet dd-mm-åååå
void showDate(int xpos, int ypos) {
  text("",xpos,ypos);
}