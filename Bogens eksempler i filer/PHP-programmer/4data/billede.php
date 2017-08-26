<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Billede</title>
</head>

<body>
<?php
define("BREDDE",  8); // Billedets konstante bredde
/* Visning af areal */
function udskrivAreal($hoejde) {
  $areal = BREDDE * $hoejde;
  echo "Areal: " . $areal . "<br/>";
}
/* Visning af omkreds */
function udskrivOmkreds($hoejde) {
  $omkreds = 2 * (BREDDE + $hoejde);
  echo "Omkreds: " . $omkreds . "<br/>";
}
$hoejde = 3; // Højden på billede 1
udskrivAreal($hoejde); udskrivOmkreds($hoejde);
$hoejde = 5; // Højden på billede 2
udskrivAreal($hoejde); udskrivOmkreds($hoejde);
?>
</body>

</html>
