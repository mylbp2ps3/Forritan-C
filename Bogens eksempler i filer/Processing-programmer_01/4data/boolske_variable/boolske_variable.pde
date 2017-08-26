/** Beregner egenskaber ud fra boolsk algebra ***/
// Array til mænd
String[] M = {"Jens", "Viktor", "Birk", "Markus"};
// Array til børn
String[] C = {"Viktor", "Birk", "Markus", "Ida"};
// Array til venstrehåndede
String[] L = {"Birk", "Markus", "Dorte", "Marie"};

void setup() {
  println(isFemale("Jens"));
  println(isFemale("Dorte"));
  println("--");
  println(isBoy("Jens"));
  println(isBoy("Dorte"));
  println(isBoy("Markus"));
  println("--");
  println(isWomanOrChild("Jens"));
  println(isWomanOrChild("Dorte"));
  println(isWomanOrChild("Markus"));
}

/* Undersøger om name er hunkøn. */
boolean isFemale(String name) {
  return !contains(M, name);
}

/* Undersøger om name er en dreng. */
boolean isBoy(String name) {
  return contains(M, name) && contains(C, name);
}

/* Undersøger om name er kvinde eller barn */
boolean isWomanOrChild(String name) {
  return !contains(M, name) || contains(C, name);
}

/* Undersøger om array indeholder element. */
boolean contains(String[] array, String element) {
  for (int i = 0; i < array.length; i++) {
    // Returner sand, hvis dette er elementet.
    if (array[i].equals(element)) return true;
  }
  // Returner falsk, hvis den ikke blev fundet.
  return false;
}