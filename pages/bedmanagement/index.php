<?php
    session_start();
    require('../controller/accountcontrol.php');
    include('../../config.php');
    $unit = 'BED MANAGEMENT';
    // $_SESSION['menu']='SK';
?>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title><?php echo($unit.' | '.$app_name);?></title>

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
                            <h1 class="page-header">
                                <?php echo($unit); 
                                    if(($_SESSION['level']==='0') OR ($_SESSION['level']==='1')){
                                    ?>
                                        <!-- <a href="#tambah_tarif" class="btn btn-sm btn-success pull-right" id="NotID" data-toggle="modal"><i class="fa fa-upload"></i> TAMBAH <?php echo($unit);?> BARU</a>  -->
                                    <?php
                                        }
                                ?>
                            </h1>
                        </div>

                        <div class="col-lg-12">
                            <?php 
                                if (!empty($_GET['message']) && $_GET['message'] == 'success') {
                            ?>
                                <div class="alert alert-success" role="alert">
                                    <strong>Berhasil!</strong> SK <?php echo($unit); ?> baru berhasil di input
                                </div>
                            <?php
                                }else if (!empty($_GET['message']) && $_GET['message'] == 'updated') {
                            ?>
                                <div class="alert alert-success" role="alert">
                                    <strong>Berhasil!</strong> SK <?php echo($unit); ?> berhasil di Update
                                </div>
                            <?php
                                }else if (!empty($_GET['error']) && $_GET['error'] == '1') {
                            ?>
                                <div class="alert alert-danger" role="alert">
                                    <strong>Kesalahan!</strong> Ukuran File SK <?php echo($unit); ?> lebih dari 5MB, silahkan compress terlebih dahulu.
                                </div>
                            <?php
                                }else if (!empty($_GET['error']) && $_GET['error'] == '2') {
                            ?>
                                <div class="alert alert-danger" role="alert">
                                    <strong>Kesalahan!</strong> Pastikan File SK <?php echo($unit); ?> ber ekstensi PDF.
                                </div>
                            <?php
                                }else if (!empty($_GET['message']) && $_GET['message'] == 'gagal') {
                            ?>
                                <div class="alert alert-danger" role="alert">
                                    <strong>Kesalahan!</strong> Proses upload data gagal, pastikan koneksi internet anda stabil dan silahkan ulangi kembali.
                                </div>
                            <?php
                                }
                            ?>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    ANTHURIUM - <?php echo($unit.' '.$company); ?>
                                </div>
                                <div class="panel-body">
                                    <!-- BED AWAL -->
                                    <div class="col-lg-3">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">401 - VVIP</div>
                                            
                                            <div class="panel-body">
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">402 - VVIP</div>
                                            
                                            <div class="panel-body">
                                                
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <!-- BED AKHIR -->
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
            include('../modal/tambahtarif.php');
            include('../component/backtotop.php');

            // include('../modal/updatenotulensi.php');
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
                $('#dataTables-tarif').DataTable({
                    responsive: true
                });
            });

            // Auto Dismis
            window.setTimeout(function() {
                $(".alert").fadeTo(500, 0).slideUp(500, function(){
                $(this).remove(); 
                });
            }, 5000);
        </script>

    </body>

</html>