<?php
  include('../../config.php');
  $id=$_GET['id'];
  
  $query = mysqli_query($connect,"SELECT * FROM panduan WHERE id='$id'");
  $data = mysqli_fetch_array($query);
  
  $unit = $data['unit'];
  $judul= $data['judul'];

  $query = mysqli_query($connect,"DELETE FROM panduan WHERE id='$id'");
  if($query){
    $filename = $unit.'-'.$judul.'.pdf';
    // var_dump($filename);
    unlink('../../files/'.$filename); //delete it
    header('location: index.php?unit='.$unit.'&message=deleted');
  }