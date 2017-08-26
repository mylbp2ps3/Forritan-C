<?php
/* Eksempel på kald til programmet:
   sko2forgrening.php?prcUsd=200&rateUsd=7.01 */
$prcDkk = $_GET['prcUsd'] * $_GET['rateUsd'];
if ($prcDkk > 80) { // Varen fortoldes
  if ($prcDkk > 1150) {
    $prcDkk = $prcDkk * 1.17; // Told
  }
  $prcDkk = $prcDkk * 1.25; // Moms
  $prcDkk = $prcDkk + 160; // Importgebyr
}
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sko, udgave 2: Forgrening</title>
</head>

<body>
<p>Prisen i DKK er: <?= $prcDkk ?></p>
</body>

</html>
