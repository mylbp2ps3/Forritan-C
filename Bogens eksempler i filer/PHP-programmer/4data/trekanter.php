<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trekanter</title>
</head>
<body>
  <h1>Retvinklet trekant</h1>
  <form action="trekanter.php" method="get">
  <p>Hypotenusen: <input type="text" name="hyp"
                  autofocus/></p>
  <p>En spids vinkel:
    <input type="text" name="ang"/></p>
  <p><input type="submit" value="Beregn"></p>
  </form>

  <?php
  /* Beregner modstående ud fra hypo og vinkel */
  function oppFromHyp($hyp, $ang) {
    // Omregn fra radianer til grader ved Math.sin
    $angDeg = $ang * pi() / 180;
    // Beregn modstående side ud fra formel.
    $opposite = $hyp * sin($angDeg);
    return $opposite;
  }
  /* Ved indtastede værdier beregnes siden. */
  $hypEntered = !empty($_GET['hyp']);
  $angEntered = !empty($_GET['ang']);
  if ($hypEntered && $angEntered) {
    $hyp = $_GET['hyp'];
    $ang = $_GET['ang'];
    echo "<ul><li>Hypotenusen: $hyp</li>";
    echo "<li>En spids vinkel: $ang</li>";
    echo "<li>Modstående side til vinklen: ";
    echo oppFromHyp($hyp, $ang) . "</li></ul>";
  }
  ?>

</body>
</html>
