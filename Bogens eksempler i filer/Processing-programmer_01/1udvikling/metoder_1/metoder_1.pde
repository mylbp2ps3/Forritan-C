// Standard funktion til opsætning
// Attributter til repræsentation af en dato
int day; // Dag
int month; // Måned
int year; // År
int ypos;

void setup() {
  size(480, 480);
  ypos = 10;
  PFont f;
  f = createFont("Arial",16,true);
  textFont(f,36);
  fill(255);  
  test(14, 5, 1979);
  test(30, 4, 1979);
  test(30, 5, 1979);
  test(28, 2, 1979);
  test(28, 2, 1980);
  test(28, 2, 1900);
  test(28, 2, 2000);
  test(31, 12, 2016);
}

// Standard funktion til tegning i vinduet
void draw() {
}

// Sæt datoen til næste dag
void setToNextDate() {
  // Optælling af dag
  day = day + 1;
}

// Returner en streng i formatet dd-mm-åååå
void showDate(int xpos, int ypos) {
  text(day + "-" + month + "-" + year,xpos,ypos);
}

void test(int d, int m, int y) {
  day = d; month = m; year = y;
  ypos = ypos + 50;
  showDate(10, ypos);
  setToNextDate();
  showDate(220, ypos);
}