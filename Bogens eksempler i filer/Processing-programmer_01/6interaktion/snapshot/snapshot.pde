/* Snapshot: Indlæser billede og dekorerer det. */
// Snefnug
int[][] snow;
// Billedstørrelse
int width, height;
// Foto
PImage photo;
// Udløserknap diameter og y-værdi fra bunden
int btnDiameter, btnYoffset;

void setup() {
  // Sæt faste værdier.
  width = 480; height = 640;
  size(480, 640);
  btnDiameter = 100; btnYoffset = 20;
  // Indlæs foto (simulér kamera).
  photo = loadImage("foto.jpg");
  // Generer koordinater til snefnug
  snow = new int[10][2];
  for (int i = 0; i < 10; i++) {
    snow[i][0] = int(random(width));
    snow[i][1] = int(random(height));
  }
}

void draw() {
  // Vis fotoet i baggrunden.
  image(photo, 0, 0, width, height);
  noStroke();
  fill(#ffffff);
  // Lad ethvert snefnug dale ved at ændre y.
  for (int i = 0; i < 10; i++) {
    snow[i][1]++;
    if (snow[i][1] > height) {
      snow[i][1] = 0;
    }
    // Tegn det pågældende snefnug.
    ellipse(snow[i][0], snow[i][1], 20, 20);
  }
  // Tegn udløserknappen i bunden af skærmen.
  stroke(#ffffff);
  noFill();
  ellipse(width/2, height - btnDiameter, 
          btnDiameter - btnYoffset,
          btnDiameter - btnYoffset);
}

/* Håndterer et klik med musen i skærmen. */
void mouseClicked() {
  // Kontroller ved museklik om det er på knap.
  if (dist(mouseX, mouseY, width/2,
           height - btnYoffset)
      < btnDiameter) {
    // Gem i så fald billedet (simulér send).
    save("snap.jpg");
  }
}