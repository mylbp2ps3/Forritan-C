<?php
/* Eksempel på kald til programmet:
   sko4for.php?prcUsd=200&rateUsd=7.01 */
$pricesDkk = []; // Array til gennemsnitspriser
for ($i = 1; $i != 5; $i = $i + 1) { // Beregninger
  // Pris for i par sko:
  $prcDkk = $_GET['prcUsd'] * $_GET['rateUsd'] * $i;
  if ($prcDkk > 80) { // Varen fortoldes
    if ($prcDkk > 1150) {
      $prcDkk = $prcDkk * 1.17; // Told
    }
    $prcDkk = $prcDkk * 1.25; // Moms
    $prcDkk = $prcDkk + 160; // Importgebyr
  }
  $pricesDkk[$i-1] = $prcDkk / $i; // Gennemsnit
}
$htmlPrices = ""; // HTML-kode indsat længere nede
for ($i = 1; $i != 5; $i = $i + 1) { // Visning
  $htmlPrices .= "<li>" . $i . " par sko: " .
    $pricesDkk[$i-1] . "</li>";
}
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sko, udgave 4: For-løkke</title>
</head>

<body>
  <p>Prisen i DKK er:
    <ul>
      <?= $htmlPrices ?>
    </ul>
  </p>
</body>

</html>
