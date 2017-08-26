/* Lykkehjulet                                 */
String word; // Hemmeligt ord
int attempts; // Antal forsøg
String category = "DANSK BY"; // Kategori
// Mulige hemmelige ord
String[] words = {"København", "Aarhus",
  "Odense", "Aalborg", "Esbjerg"}; 
// Status på spillet i et array
boolean[] guessed;

/* Viser vinduet og sætter ordet */
void setup() {
  // Vælg et tilfældigt ord som skal gættes.
  word = words[int(random(words.length))];
  guessed = new boolean[word.length()];
  size(800, 450); // Vis vinduet
  textSize(36); // Bogstavernes størrelse
}

/* Opdaterer skærmen */
void draw() {
  background(200, 200, 255); // Nulstiller 
  textAlign(LEFT); // Venstrestil kategorien
  text(category, 105, 100); // Viser kategorien
  textAlign(CENTER); // Centrer i hver kasse
  char letter; // Bogstav i iteration af ord
  // Løb igennem alle bogstaver i ordet
  for (int i = 0; i < word.length(); i++) {
    // Sæt bogstavet ind i en firkant.
    fill(0, 0, 0); // Sort skrift
    if (guessed[i]) {
      letter = word.charAt(i);
    } else {
      letter = 20;
    }
    text(letter, 125 + i*50, 200);
    noFill(); // Tomme kasser
    rect(105 + i*50, 200 - 35, 45, 45);
  }
}

/* Gætter på et bogstav */
void keyPressed() {
  char letter;
  for (int i = 0; i < word.length(); i++) {
    letter = word.substring(i, i+1).toLowerCase()
      .charAt(0);
    // Undersøg for hvert tegn om det er gættet
    if (letter == key) guessed[i] = true; //<>//
  }
}