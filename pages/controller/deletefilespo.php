<?php
  $filename = $_GET['files']; //get the filename
  $unit     = $_GET['unit'];
  $id       = $_GET['id'];
  // echo($filename);

  unlink($filename); //delete it
  header('location: ../spo/detail.php?unit='.$unit.'&id='.$id.'&message=deleted');
?>