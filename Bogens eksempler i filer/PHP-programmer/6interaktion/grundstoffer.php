<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Grundstoffer</title>
</head>
<body>
<h1>Grundstoffer</h1>
<table>
  <tr>
    <th>Nr</th>
    <th>Navn</th>
  </tr>
<?php
$dbh = new PDO("mysql:host=localhost;dbname=test",
               "programmering", "systime");
$sql = "SELECT nr, navn FROM grundstoffer ";
$sql .= "ORDER BY nr;";
$stmt = $dbh->prepare($sql);
if ($stmt->execute()) {
  while ($row = $stmt->fetch()) {
    echo "<tr>";
    echo "<td>" . $row["nr"] . "</td>";
    echo "<td>" . $row["navn"] . "</td>";
    echo "</tr>";
  }
}
?>
</table>
</body>
</html>
