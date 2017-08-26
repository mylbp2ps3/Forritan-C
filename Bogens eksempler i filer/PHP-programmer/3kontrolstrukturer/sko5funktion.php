<?php
/* Eksempel på kald til programmet:
   sko5funktion.php?prcUsd=200&rateUsd=7.01&
                    prcYuan=300&rateYuan=1.05 */

/* Returnerer array med gennemsnitspriser 1-4 */
function prices($price, $rate) {
  $pricesDkk = []; // Array til gennemsnitspriser
  for ($i = 1; $i != 5; $i = $i + 1) { // Beregninger
    // Pris for i par sko:
    $prcDkk = $price * $rate * $i;
    if ($prcDkk > 80) { // Varen fortoldes
      if ($prcDkk > 1150) {
        $prcDkk = $prcDkk * 1.17; // Told
      }
      $prcDkk = $prcDkk * 1.25; // Moms
      $prcDkk = $prcDkk + 160; // Importgebyr
    }
    $pricesDkk[$i-1] = $prcDkk / $i; // Gennemsnit
  }
  return $pricesDkk;
}
// USA
$pricesUS = prices($_GET['prcUsd'], $_GET['rateUsd']);
$htmlPricesUS = ""; // HTML-kode indsat længere nede
$i = 1;
for ($i = 1; $i != 5; $i = $i + 1) { // Visning
  $htmlPricesUS .= "<li>" . $i . " par sko: " .
    $pricesUS[$i-1] . "</li>";
}
// Kina
$pricesCh = prices($_GET['prcYuan'], $_GET['rateYuan']);
$htmlPricesCh = ""; // HTML-kode indsat længere nede
$i = 1;
for ($i = 1; $i != 5; $i = $i + 1) { // Visning
  $htmlPricesCh .= "<li>" . $i . " par sko: " .
    $pricesCh[$i-1] . "</li>";
}
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sko, udgave 5: Funktion</title>
</head>

<body>
  <h1>Skopriser i USA</h1>
  <p>Prisen i DKK er:
    <ul>
      <?= $htmlPricesUS ?>
    </ul>
  </p>
  <h1>Skopriser i Kina</h1>
  <p>Prisen i DKK er:
    <ul>
      <?= $htmlPricesCh ?>
    </ul>
  </p>
</body>

</html>
