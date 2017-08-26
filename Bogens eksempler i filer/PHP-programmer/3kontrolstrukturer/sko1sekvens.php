<?php
/* Eksempel på kald til programmet:
   sko1sekvens.php?prcUsd=200&rateUsd=7.01 */
$prcDkk = $_GET['prcUsd'] * $_GET['rateUsd'];
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sko, udgave 1: Sekvens</title>
</head>

<body>
<p>Prisen i DKK er: <?= $prcDkk ?></p>
</body>

</html>
