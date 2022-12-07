<?php
    include('../../config.php');

    $id = $_GET['id'];
    $unit = $_GET['unit'];
    $query = mysqli_query($connect,"DELETE FROM notulensi WHERE id='$id'");
    if ($query) {
        header('location:../notulensi/filterreset.php');
    }
?>