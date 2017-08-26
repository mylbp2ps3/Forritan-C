/**** Viser en nattehimmel fyldt med stjerner ***/
// Vinduets størrelse
int width = 1600; int height = 900;
// Antal stjerner
int number = width/7;
// Koordinater og radius
int[] xs = new int[number];
int[] ys = new int[number];
int[] rads = new int[number];

void setup() {
  // Åbn vinduet
  size(1600, 900);
  background(0, 0, 0);
  // Sæt tilfældig data for enhver stjerne.
  for (int i = 0; i < xs.length; i++) {
    xs[i] = int(random(0, width));
    ys[i] = int(random(0, height));
    rads[i] = int(random(1, 5));
  }
  // Tegn stjernerne
  noStroke();
  fill(255, 255, 255);
  for (int i = 0; i < xs.length; i++) {
    ellipse(xs[i], ys[i], rads[i], rads[i]);
  }
}