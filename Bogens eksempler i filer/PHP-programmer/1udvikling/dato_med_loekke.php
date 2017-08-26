<?php
// Variable til repræsentation af dato
$day;
$month;
$year;

/* Ændrer datoen til næste dag */
function setToNextDate() {
	global $day;
	$day = $day + 1;
	checkDayOverflow();
}

/* Viser datoen i formatet dd-mm-åååå */
function showDate() {
	global $day, $month, $year;
	echo $day . "-" . $month . "-" . $year;
}

function checkDayOverflow() {
	global $day, $month;
	if ($day > daysInMonth()) {
		$day = 1;
		$month = $month + 1;
		checkMonthOverflow();
	}
}

function checkMonthOverflow() {
	global $month, $year;
	if ($month > 12) {
		$month = 1;
		$year = $year + 1;
	}
}

function daysInMonth() {
	global $month;
	$daysInMonth = [31,28,31,30,31,30,31,31,30,31,30,31];
	$result = $daysInMonth[$month - 1];
	if ($month == 2 && isLeapYear()) {
		$result = $result + 1;
	}
	return $result;
}

function isLeapYear() {
	global $year;
	return (divides(4, $year) && !divides(100, $year))
					|| divides(400, $year);
}

function divides($a, $b) {
	return $b % $a == 0;
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

// Test af programmet med tilfældige datoer
for ($i = 0; $i < 5; $i = $i + 1) {
	test(random_int(1, 28), random_int(1, 12), 2017);
}
?>
