int prcUsd;
float rateUsd, prcDkk;

void setup() {
  size(800,450); 
  textSize(32); fill(255); 
}

void draw() {
  background(0);
  rateUsd = 3 + float(mouseX)/100.0;
  prcUsd = mouseY;
  text("Hvad koster dine sko i USD (lodret): "
       + prcUsd, 50, 100);
  text("Hvad koster 1 USD i DKK (vandret): "
       + rateUsd, 50, 200);
}

void mousePressed() {
  noLoop();
  prcDkk = prcUsd * rateUsd;
  if (prcDkk > 80) { // Varen fortoldes
    if (prcDkk > 1150) {
      prcDkk = prcDkk * 1.17; // Told
    }
    prcDkk = prcDkk * 1.25; // Moms
    prcDkk = prcDkk + 160; // Importgebyr
  }
  text("Prisen i DKK er: " + prcDkk,
       50, 300);
}