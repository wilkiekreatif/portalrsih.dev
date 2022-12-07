<?php
  session_start();
  // var_dump($_SESSION['date1'].' '.$_SESSION['date2']);
  // die;
  if((!empty($_SESSION['unit'])) OR (!empty($_SESSION['filter'])) OR (!empty($_SESSION['date1'])) OR (!empty($_SESSION['date2']))){
    header('location:onprogress.php?unit='.$_SESSION['unit'].'&filter='.$_SESSION['filter'].'&date1='.$_SESSION['date1'].'&date2='.$_SESSION['date2']);
  }else{
    header('location:onprogress.php?unit='.$_SESSION['unit'].'&filter='.$_SESSION['filter']);
  }
  
  // var_dump($unit.' '.$filter.' '.$date1.' '.$date2);