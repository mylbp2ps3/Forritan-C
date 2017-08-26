int price; float rate;
boolean usaSet = false;
float[] pricesUS = new float[4];
float[] pricesCh = new float[4];

/* Returnerer array med gennemsnitspriser 1-4 */
float[] prices(int price, float rate) {
  float[] prices = new float[4]; 
  for (int i = 1; i != 5; i = i + 1) { // Beregning
    float prcDkk = price * rate * i; // Pris: i par
    if (prcDkk > 80) { // Varen fortoldes
      if (prcDkk > 1150) {
        prcDkk = prcDkk * 1.17; // Told
      }
      prcDkk = prcDkk * 1.25; // Moms
      prcDkk = prcDkk + 160; // Importgebyr
    }
    prices[i-1] = prcDkk / i; // Gennemsnitspris
  }
  return prices;
}

void setup() {
  size(800,450); 
  textSize(24); fill(255); 
}

void draw() {
  background(0);
  rate = float(mouseX)/100.0;
  price = mouseY;
  text("Hvad koster dine sko i " + 
       (usaSet ? "yuan" : "USD") + " (lodret): "
       + price, 50, 50);
  text("Hvad koster 1 " + (usaSet ? "yuan" : "USD")
       + " i DKK (vandret): " + 
       rate, 50, 75);
}

void mousePressed() {
  if (!usaSet) {
    usaSet = true;
    // Beregn for USA
    pricesUS = prices(price, rate);
  } else {
    noLoop();
    // Beregn for Kina
    pricesCh = prices(price, rate);
    // Vis alle priser
    for (int i = 1; i != 5; i = i + 1) { // Beregning
      text("USA - Prisen for " + i + " par er: " + 
           pricesUS[i-1], 50, 100 + i * 25);
      text("Kina - Prisen for " + i + " par er: " + 
           pricesCh[i-1], 50, 225 + i * 25);
    }
  }
}