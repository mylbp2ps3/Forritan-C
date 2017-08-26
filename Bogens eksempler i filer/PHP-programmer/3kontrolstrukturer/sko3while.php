<?php
/* Eksempel på kald til programmet:
   sko3while.php?prcUsd=200&rateUsd=7.01 */
$pricesDkk = []; // Array til gennemsnitspriser
$i = 1; // Tæller til løkke
while ($i != 5) { // Beregning af priser
  // Pris for i par sko:
  $prcDkk = $_GET['prcUsd'] * $_GET['rateUsd'] * $i;
  if ($prcDkk > 80) { // Varen fortoldes
    if ($prcDkk > 1150) {
      $prcDkk = $prcDkk * 1.17; // Told
    }
    $prcDkk = $prcDkk * 1.25; // Moms
    $prcDkk = $prcDkk + 160; // Importgebyr
  }
  $pricesDkk[$i-1] = $prcDkk / $i; // Gennemsnitspris
  $i = $i + 1; // Tæller forøges
}
$htmlPrices = ""; // HTML-kode indsat længere nede
$i = 1;
while ($i != 5) { // Visning af priser
  $htmlPrices .= "<li>" . $i . " par sko: " .
    $pricesDkk[$i-1] . "</li>";
  $i = $i + 1;
}
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sko, udgave 3: While-løkke</title>
</head>

<body>
  <p>Prisen i DKK er:
    <ul>
      <?= $htmlPrices ?>
    </ul>
  </p>
</body>

</html>
