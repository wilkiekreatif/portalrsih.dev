<?php
  include('../../config.php');

  $id           = $_GET['id'];
  $unit         = $_GET['unit'];
  // echo($id);
  $masalah      = $_POST['masalah'];
  $tindaklanjut = $_POST['tindaklanjut'];
	$pic1         = $_POST['pic1'];
	$pic2         = $_POST['pic2'];
	$pic3         = $_POST['pic3'];
	$deadline     = $_POST['deadline'];
  $deadlinebaru = $_POST['deadlinebaru'];
  $hasil        = $_POST['hasil'];
  $status       = $_POST['status'];

  $query = mysqli_query($connect,"UPDATE notulensi SET  masalah='$masalah',
                                                        tindaklanjut='$tindaklanjut',
                                                        pic1='$pic1',
                                                        pic2='$pic2',
                                                        pic3='$pic3',
                                                        deadline='$deadline',
                                                        deadline_baru='$deadlinebaru',
                                                        hasil='$hasil',
                                                        status='$status'
                                  WHERE id='$id'");
  if ($query) {
		header('location:../../pages/notulensi/onprogress.php?unit='.$unit.'&filter=0&message=updated');
  }
?>