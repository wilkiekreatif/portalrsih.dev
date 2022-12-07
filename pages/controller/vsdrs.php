<?php
  include('../../config.php');

  $unit       = $_GET['unit'];
  $judul      = $_POST['judul'];
  $deskripsi  = $_POST['deskripsi'];
  $target_dir = "../../files/";

  $ekstensi_diperbolehkan	= array('pdf');

  $namafile = $_FILES['upload']['name'];
  $ukuran	= $_FILES['upload']['size'];
  $file_tmp = $_FILES['upload']['tmp_name'];
	$x = explode('.', $namafile);
	$ekstensi = strtolower(end($x));
  // echo($namafile.' '.$ukuran);

  $q = mysqli_query($connect, "SELECT * FROM sdrs WHERE unit='$unit' AND judul='$judul'");
  if(mysqli_num_rows($q) >= 1){
    header('location:../../pages/sdrs/index.php?unit='.$unit.'&message=duplicate');
    return false;
  }else if(in_array($ekstensi, $ekstensi_diperbolehkan) === true){
    if($ukuran < 5242880){
      $lokasi = '../../files/'.$unit.'-'.$judul.'.'.$ekstensi;
      move_uploaded_file($file_tmp,$lokasi);
      $query = mysqli_query($connect,"INSERT INTO sdrs VALUES(NULL,'$unit','$judul','$deskripsi','$lokasi',now())");
      if($query){
        header('location:../../pages/sdrs/index.php?unit='.$unit.'&message=success');
        return false;
      }else{
        header('location:../../pages/sdrs/index.php?unit='.$unit.'&message=gagal');
        return false;
      }
		}else{
      header('location:../../pages/sdrs/index.php?unit='.$unit.'&error=1');
      return false;
		}
	}else{
		header('location:../../pages/sdrs/index.php?unit='.$unit.'&error=2');
		return false;
	}
?>