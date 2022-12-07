<?php
    include('../../config.php');

    $user               = $_POST['user'];
    $unit               = $_POST['unit'];
    $tglbookingmulai    = $_POST['tglbookingmulai'];
    $tglbookingselesai  = $_POST['tglbookingselesai'];
    $ruangan            = $_POST['ruangan'];
    $kepentingan        = $_POST['kepentingan'];
  
    $q = mysqli_query($connect, "SELECT * FROM meetingroom WHERE room='$ruangan' AND tgl_booking_mulai='$tglbooking'");
  
    if(mysqli_num_rows($q) >= 1){
        header('location:../../pages/meetingroom/index.php?&message=duplicate');
        return false;
    }else{
        $query = mysqli_query($connect,"INSERT INTO meetingroom VALUES (default,'$user','$unit','$ruangan','$tglbookingmulai','$tglbookingselesai','$kepentingan',now(),0)");
        if($query){
            header('location:../../pages/meetingroom/index.php?&message=success');
            return false;
        }else{
            // echo($unit.' '.$tglbooking.' '.$ruangan.' '.$kepentingan);
            header('location:../../pages/meetingroom/index.php?message=gagal');
            return false;
    	}
    }
?>