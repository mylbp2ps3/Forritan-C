<?php
// Variable til repræsentation af dato
$day;
$month;
$year;

/* Ændrer datoen til næste dag */
function setToNextDate() {
	global $day;
	$day = $day + 1;
}

/* Viser datoen i formatet dd-mm-åååå */
function showDate() {
	global $day, $month, $year;
	echo $day . "-" . $month . "-" . $year;
}

function test($d, $m, $y) {
	echo "<p>Datoen efter ";
	global $day, $month, $year;
	$day = $d; $month = $m; $year = $y;
	showDate();
  setToNextDate();
	echo " er ";
	echo showDate();
	echo ".</p>";
}

// Test af programmet med udvalgte datoer
test(14, 5, 1979);
test(30, 4, 1979);
test(30, 5, 1979);
test(28, 2, 1979);
test(28, 2, 1980);
test(28, 2, 1900);
test(28, 2, 2000);
test(31, 12, 2016);
?>
