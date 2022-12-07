<?php
  $unit   = $_GET['unit'];
  $filter = $_POST['filterberdasarkan'];
  $date1  = $_POST['date1'];
  $date2  = $_POST['date2'];

  // var_dump($unit.' '.$filter.' '.$date1.' '.$date2);
  header('location:onprogress.php?unit='.$unit.'&filter='.$filter.'&date1='.$date1.'&date2='.$date2);