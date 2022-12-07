<?php
    session_start();
    require('../controller/accountcontrol.php');
    include('../../config.php');
    $unit = 'MEETING ROOM';
    // $_SESSION['menu']='meetingroom';
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
                            <h1 class="page-header"><?php echo($unit); 
                                                            if(($_SESSION['level']==='0') OR ($_SESSION['level']==='1')){
                                                    ?>
                                                                <a href="#bookingmeetingroom" class="btn btn-sm btn-success pull-right" id="NotID" data-toggle="modal"><i class="fa fa-upload"></i> BOOKING <?php echo($unit);?></a> </h1>
                                                    <?php
                                                            }
                                                    ?>
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
                                }else if (!empty($_GET['message']) && $_GET['message'] == 'duplicate') {
                            ?>
                                <div class="alert alert-danger" role="alert">
                                    <strong>Kesalahan!</strong> Ruangan tersebut sudah di booking oleh unit lain pada waktu yang sama.
                                </div>
                            <?php
                                }
                            ?>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    DAFTAR BOOKING <?php echo($unit.' '.$company); ?>
                                </div>
                                
                                <div class="panel-body">
                                    <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-meetingroom">
                                        <thead>
                                            <tr>
                                                <th>NO</th>
                                                <th>RUANGAN</th>
                                                <th>UNIT BOOKING</th>
                                                <th>TGL BOOKING</th>
                                                <!--<th>DURASI</th>-->
                                                <th>USER</th>
                                                <th>KEPENTINGAN</th>
                                                <th>STATUS</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>NO</th>
                                                <th>RUANGAN</th>
                                                <th>UNIT BOOKING</th>
                                                <th>TGL BOOKING</th>
                                                <!--<th>DURASI</th>-->
                                                <th>USER</th>
                                                <th>KEPENTINGAN</th>
                                                <th>STATUS</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <?php
                                                //membuat query membaca record dari tabel User      
                                                $query="SELECT a.*,b.nama AS namaunit,c.nama AS namabagian FROM meetingroom a, mst_meetingroom b, mst_bagian c WHERE (a.unit = c.id AND a.room = b.id) AND (a.tgl_booking_selesai >= now())";
                                                //menjalankan query      
                                                if (mysqli_query($connect,$query)) {      
                                                    $result=mysqli_query($connect,$query);     
                                                } else die ("Error menjalankan query");
                                                //mengecek record kosong     
                                                if (mysqli_num_rows($result) > 0) {
                                                    $no='1';
                                                    //menampilkan hasil query      
                                                    while($row = mysqli_fetch_array($result)) {      
                                                        echo "<tr>";
                                                        echo "	<td width='5%'>".$no."</td>";    
                                                        echo "	<td width='20%'>".$row["namaunit"]."</td>";
                                                        echo "	<td width='15%'>".$row["namabagian"]."</td>";
                                                        echo "	<td width='15%'>".$row["tgl_booking_mulai"]." s/d ".$row["tgl_booking_selesai"]."</td>"; 
                                                        
                                                        // $mulai = new Datetime($row["tgl_booking_mulai"]);
                                                        // $mulai = new Datetime($row["tgl_booking_selesai"]);
                                                        // $durasi = $mulai->diff($selesai);
                                                        // echo "  <td>".$durasi->format('%Y tahun %m bulan %d hari %H jam %i menit %s detik')."</td>";
                                                        
                                                        echo "	<td width='15%'>".$row["user"]."</td>";      
                                                        echo "	<td width='15%'>".$row["kepentingan"]."</td>";      
                                                        if($row["status"]==0){
                                                            echo "	<td width='10%'><span class='badge badge-pill badge-warning'>Waiting</span></td>";
                                                        }else if($row["status"]==1){
                                                            echo "	<td width='10%'><span class='badge badge-pill badge-success'>Done</span></td>";
                                                        }
                                                        // echo "  <td width='5%' align='center'> <a href='detail.php?unit=$unit&id=$row[id]' class='btn btn-sm btn-primary'> <i class='glyphicon glyphicon-list-alt'></i> LIHAT DETAIL DATA</a>";
                                                        // echo "  <td width='16%' align='center'><a href='detail.php?id=$row[id]' class='btn btn-sm btn-primary'> <i class='glyphicon glyphicon-list-alt'></i> UPDATE DATA</a></td>";
                                                        echo "</tr>";   
                                                        $no++;
                                                    }   
                                                }
                                            ?>
                                		</tbody>
                                    </table>
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
            include('../modal/bookingmeetingroom.php');
            // include('../modal/preference.php');
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
                $('#dataTables-meetingroom').DataTable({
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