<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mængder</title>
</head>

<body>
<?php
/** Beregner egenskaber ud fra boolsk algebra ***/
// Array til mænd
$M = ["Jens", "Viktor", "Birk", "Markus"];
// Array til børn
$C = ["Viktor", "Birk", "Markus", "Ida"];
// Array til venstrehåndede
$L = ["Birk", "Markus", "Dorte", "Marie"];

function vis($besked) {
  echo $besked . "<br/>";
}
vis(isFemale("Jens") ? "Sandt" : "Falsk");
vis(isFemale("Dorte") ? "Sandt" : "Falsk");
vis("--");
vis(isBoy("Jens") ? "Sandt" : "Falsk");
vis(isBoy("Dorte") ? "Sandt" : "Falsk");
vis(isBoy("Markus") ? "Sandt" : "Falsk");
vis("--");
vis(isWomanOrChild("Jens") ? "Sandt" : "Falsk");
vis(isWomanOrChild("Dorte") ? "Sandt" : "Falsk");
vis(isWomanOrChild("Markus") ? "Sandt" : "Falsk");

/* Undersøger om name er hunkøn. */
function isFemale($name) {
  global $M, $C, $L;
  return !contains($M, $name);
}

/* Undersøger om name er en dreng. */
function isBoy($name) {
  global $M, $C, $L;
  return contains($M, $name) && contains($C, $name);
}

/* Undersøger om name er kvinde eller barn */
function isWomanOrChild($name) {
  global $M, $C, $L;
  return !contains($M, $name) || contains($C, $name);
}

/* Undersøger om array indeholder element. */
function contains($array, $element) {
  global $M, $C, $L;
  for ($i = 0; $i < count($array); $i++) {
    // Returner sand, hvis dette er elementet.
    if ($array[$i] == $element) return true;
  }
  // Returner falsk, hvis den ikke blev fundet.
  return false;
}
?>
</body>

</html>
