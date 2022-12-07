<?php
    session_start();
    require('../controller/accountcontrol.php');
    include('../../config.php');
    $_SESSION['menu']='Update Notulensi';
    
?>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title><?php echo($_SESSION['menu'].' | '.$app_name);?></title>

        <!-- Bootstrap Core CSS -->
        <link href="../../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="../../assets/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="../../assets/dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="../../assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        
        <!-- DataTables CSS -->
        <link href="../../assets/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

        <!-- DataTables Responsive CSS -->
        <link href="../../assets/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    </head>

    <body>
        <div id="wrapper">
            <!-- Navigation -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <?php
                    include('../component/header.php');
                ?>

                <!-- /.navbar-header -->
                <?php
                    include('../component/topmenu.php');
                ?>

                <!-- /.navbar-top-links -->

                <?php
                    include('../component/sidemenu.php');
                ?>
            </nav>

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header"><?php echo($_SESSION['menu'].'  '); 
                                                        $id = $_GET['id'];
                                                        $tampil = mysqli_query($connect,"SELECT * FROM notulensi WHERE id='$id'");
                                                        $w = mysqli_fetch_array($tampil);
                                                    ?><a href="onprogress.php?unit=<?php echo($w['unit']); ?>&filter=0" class="btn btn-sm btn-success pull-right"><i class="fa fa-arrow-left"></i> Kembali ke Menu Sebelumnya</a> </h1>
                        </div>

                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <?php
                                        echo('Unit '.$w['unit']);
                                    ?>
                                </div>

                                <div class="panel-body">
                                    <form action="../controller/updatenotulensibaru.php?unit=<?php echo($w['unit']); ?>&id=<?php echo($w['id']); ?>" method="post">
                                        <div class="col-lg-6">
                                            <!-- <div class="form-group has-feedback">
                                                <label for="Id Notulensi">id Notulensi</label>
                                                <input type="text" name="id" class="form-control" placeholder="..." value="<?php echo($w['id']); ?>" maxlength="20">
                                                <span class="glyphicon glyphicon-italic form-control-feedback"></span>
                                            </div> -->
                                            <div class="form-group has-feedback">
                                                <label for="permasalahan">Permasalahan *</label>
                                                <textarea required type="text" name="masalah" class="form-control" placeholder="..." rows="3" maxlength="2000"><?php echo($w['masalah']);
                                                    ?></textarea> 
                                            </div>
                                            <div class="form-group has-feedback">
                                                <label for="tindaklanjut">Tindak Lanjut *</label>
                                                <textarea required type="text" name="tindaklanjut" class="form-control" placeholder="..." rows="3" maxlength="2000" ><?php echo($w['tindaklanjut']);
                                                    ?></textarea> 
                                            </div>
                                            <div class="form-group has-feedback">
                                                <label for="pic1">PIC 1 *</label>
                                                <select required class="form-control" name="pic1" id="pic1">
                                                    <option selected>-</option>
                                                    <?php
                                                    $tampil = mysqli_query($connect,"SELECT a.nama FROM mst_user a, mst_jabatan b WHERE a.jabatan = b.nama AND b.level=0 ORDER BY a.nama ASC");
                                                    while ($q = mysqli_fetch_array($tampil)) {
                                                        if($w['pic1']==$q['nama']){
                                                            echo "<option selected value='$q[nama]'>$q[nama]</option>";
                                                        }else{
                                                            echo "<option value='$q[nama]'>$q[nama]</option>";
                                                        }
                                                    }?>
                                                </select>
                                            </div>
                                            <div class="form-group has-feedback">
                                                <label for="pic1">PIC 2</label>
                                                <select class="form-control" name="pic2" id="pic2">
                                                    <option selected>-</option>
                                                    <?php
                                                    $tampil = mysqli_query($connect,"SELECT a.nama FROM mst_user a, mst_jabatan b WHERE a.jabatan = b.nama AND b.level=0 ORDER BY a.nama ASC");
                                                    while ($q = mysqli_fetch_array($tampil)) {
                                                        if($w['pic2']==$q['nama']){
                                                                echo "<option selected value='$q[nama]'>$q[nama]</option>";
                                                            }else{
                                                                echo "<option value='$q[nama]'>$q[nama]</option>";
                                                            }
                                                    }?>
                                                </select>
                                            </div>
                                            <div class="form-group has-feedback">
                                                <label for="pic1">PIC 3</label>
                                                <select class="form-control" name="pic3" id="pic3">
                                                    <option selected>-</option>
                                                    <?php
                                                    $tampil = mysqli_query($connect,"SELECT a.nama FROM mst_user a, mst_jabatan b WHERE a.jabatan = b.nama AND b.level=0 ORDER BY a.nama ASC");
                                                    while ($q = mysqli_fetch_array($tampil)) {
                                                        if($w['pic3']==$q['nama']){
                                                            echo "<option selected value='$q[nama]'>$q[nama]</option>";
                                                        }else{
                                                            echo "<option value='$q[nama]'>$q[nama]</option>";
                                                        }
                                                    }?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group has-feedback">
                                                <label for="deadline">Deadline *</label>
                                                <input required type="date" name="deadline" class="form-control" placeholder="..." value="<?php echo($w['deadline']); ?>" maxlength="10">
                                                <!-- <span class="glyphicon glyphicon-user form-control-feedback"></span> -->
                                            </div>
                                            <div class="form-group has-feedback">
                                                <label for="deadline">Deadline Baru</label>
                                                <input type="date" name="deadlinebaru" class="form-control" placeholder="..." value="<?php echo($w['deadline_baru']); ?>" maxlength="10">
                                                <!-- <span class="glyphicon glyphicon-user form-control-feedback"></span> -->
                                            </div>
                                            <div class="form-group has-feedback">
                                                <label for="permasalahan">Hasil</label>
                                                <textarea type="text" name="hasil" class="form-control" placeholder="..." rows="3" maxlength="2000"><?php echo($w['hasil']);
                                                    ?></textarea> 
                                            </div>
                                            <div class="form-group has-feedback">
                                                <label for="deadline">Status</label>
                                                <select required class="form-control" name="status" id="status">
                                                    <option value="" selected>--Pilih Bagian--</option>
                                                    <?php
                                                        $tampil = mysqli_query($connect,"SELECT * FROM notulensi WHERE id='$id'");
                                                        $w = mysqli_fetch_array($tampil);
                                                        // echo "<option value='$w[nama]'>$w[nama]</option>";
                                                    ?>
                                                    <option value="0" <?php if($w['status']==0){ echo('selected');}?>>On Progress</option>
                                                    <option value="1" <?php if($w['status']==1){ echo('selected');}?>>Overdue</option>
                                                    <option value="2" <?php if($w['status']==2){ echo('selected');}?>>Done</option>
                                                </select>
                                            </div>
                                            <button class="btn btn-primary" type="submit">UPDATE NOTULENSI</button>
                                    </form>
                                        </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.panel -->

                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->
        </div>
        <!-- /#wrapper -->

        <!-- MODAL -->

        <?php
            include('../modal/tambahnotulensi.php');
            include('../modal/updatenotulensi.php');
        ?>

        <!-- MODAL END -->


        <!-- jQuery -->
        <script src="../../assets/vendor/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../../assets/vendor/bootstrap/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="../../assets/vendor/metisMenu/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="../../assets/dist/js/sb-admin-2.js"></script>

        <!-- DataTables JavaScript -->
        <script src="../../assets/vendor/datatables/js/jquery.dataTables.min.js"></script>
        <script src="../../assets/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
        <script src="../../assets/vendor/datatables-responsive/dataTables.responsive.js"></script>

        <script>
            $(document).ready(function() {
                $('#dataTables-notulensi').DataTable({
                    responsive: true
                });
            });

        </script>


    </body>

</html>