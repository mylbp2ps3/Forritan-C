/** Beregner areal og omkreds af billede ***/
final int BREDDE = 8; // Billedets bredde
final int XPOS = 10; // Venstre margin
int ypos;
void setup() {
  size(480, 480);
  ypos = 50;
  PFont f;
  f = createFont("Arial",16,true);
  textFont(f,36);
  fill(0);
  int hoejde = 3; // Højde på billede 1
  udskrivAreal(hoejde); udskrivOmkreds(hoejde);
  hoejde = 5; // Højde på billede 1
  udskrivAreal(hoejde); udskrivOmkreds(hoejde);
}
/* Visning af areal */
void udskrivAreal(int hoejde) {
  int areal = BREDDE * hoejde;
  text("Areal: " + areal, XPOS, ypos);
  ypos += 50;
}
/* Visning af omkreds */
void udskrivOmkreds(int hoejde) {
  int omkreds = 2 * (BREDDE + hoejde);
  text("Omkreds: " + omkreds, XPOS, ypos);
  ypos += 50;
}