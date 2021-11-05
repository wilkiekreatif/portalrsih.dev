<?php
  include('../../config.php');

  $unit         = $_POST['unit'];
  $masalah      = $_POST['masalah'];
	$tindaklanjut = $_POST['tindaklanjut'];
	$pic1         = $_POST['pic1'];
	$pic2         = $_POST['pic2'];
	$pic3         = $_POST['pic3'];
	$deadline     = $_POST['deadline'];

  //simpan data ke database
	$query = mysqli_query($connect,"INSERT INTO notulensi VALUES(default,
																															'$unit',
																															'$masalah',
																															'$tindaklanjut',
																															'$pic1',
																															'$pic2',
																															'$pic3',
																															'$deadline',
																															Null,
																															Null,
																															Null,
																															'0',
																															default,
																															Null)") or die(mysqli_error($query));

  if ($query) {
		header('location:../../pages/notulensi/index.php?message=success');
  }
?>