<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find fem fejl</title>
</head>

<body>
<?php
/* Find fem syntaktisk fejl */
$listOfNumbers = [-4,8,1,3,-5,2,-8,-3,,55,2];

/* Returnerer det største heltal i en liste */
function largestNumber($list)
  // Returner null (tom værdi), hvis listen er tom
  if (count($list) == 0) return -2147483648 // Min
  // Sæt largest til det første element i listen
  $largest = $list[0];
  // Søg gennem listen
  for ($i = 1; $i < count($list; $i++) {
    // Undersøg om element er større end hidtil
    is ($list[$i] > $largest) {
      // Opdater i så fald largest til dette
      $largest = $list[$i];
    }
  }
  return $largest;
}

echo largestNumber($listOfNumbers);
?>
</body>

</html>
