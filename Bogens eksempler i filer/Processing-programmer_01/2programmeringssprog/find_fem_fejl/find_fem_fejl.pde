/* Find fem syntaktisk fejl */
int[] listOfNumbers = {-4,8,1,3,-5,2,-8,-3,,55,2};

/* Returnerer det største heltal i en liste */
int largestNumber(int[] list) 
  // Returner null (tom værdi), hvis listen er tom
  if (list.length == 0) return -2147483648 // Min
  // Sæt largest til det første element i listen
  int largest = list[0];
  // Søg gennem listen
  for (int i = 1; i < list.length(); i++) {
    // Undersøg om element er større end hidtil 
    is (list[i] > largest) {
      // Opdater i så fald largest til dette 
      largest = list[i];
    }
  }
  return largest;
}

void setup() {
  println(largestNumber(listOfNumbers));
}