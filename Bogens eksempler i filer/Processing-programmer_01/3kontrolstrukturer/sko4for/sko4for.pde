int prcUsd;
float rateUsd, prcDkk;
// Array til gennemsnitspriser:
float[] pricesDkk = new float[4]; 

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
       + rateUsd, 50, 150);
}

void mousePressed() {
  noLoop();
  for (int i = 1; i != 5; i = i + 1) { // Beregning
    prcDkk = prcUsd * rateUsd * i; // Pris: i par
    if (prcDkk > 80) { // Varen fortoldes
      if (prcDkk > 1150) {
        prcDkk = prcDkk * 1.17; // Told
      }
      prcDkk = prcDkk * 1.25; // Moms
      prcDkk = prcDkk + 160; // Importgebyr
    }
    pricesDkk[i-1] = prcDkk / i; // Gennemsnitspris
  }
  for (int i = 1; i != 5; i = i + 1) { // Beregning
    text("Prisen i DKK er: " + 
         pricesDkk[i-1], 50, 200 + i * 50);
  }
}