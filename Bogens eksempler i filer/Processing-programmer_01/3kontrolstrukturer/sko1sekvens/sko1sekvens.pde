int prcUsd;
float rateUsd;

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
       + nf(rateUsd, 1, 2), 50, 200);
}

void mousePressed() {
  noLoop();
  text("Prisen i DKK er: " + 
       nfc(prcUsd * rateUsd, 2), 50, 300);
}