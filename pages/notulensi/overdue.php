<?php
    session_start();
    require('../controller/accountcontrol.php');
    include('../../config.php');
    $_SESSION['menu']='Notulensi Overdue';
    $unit            =$_GET['unit'];
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
                            <h1 class="page-header"><?php echo($_SESSION['menu'].' '.$unit); ?>
                            <!-- <a href="#tambah_notulensi_" class="btn btn-sm btn-success pull-right" id="NotID" data-toggle="modal"><i class="fa fa-upload"></i> TAMBAH NOTULENSI</a> </h1> -->
                        </div>

                        <div class="col-lg-12">
                            <?php 
                                if (!empty($_GET['message']) && $_GET['message'] == 'success') {
                            ?>
                                    <div class="alert alert-success" role="alert">
                                        <strong>Berhasil!</strong> Data notulensi berhasil di input
                                    </div>
                            <?php
                                }else if (!empty($_GET['message']) && $_GET['message'] == 'updated') {
                            ?>
                                    <div class="alert alert-success" role="alert">
                                        <strong>Berhasil!</strong> Data notulensi berhasil di Update
                                    </div>
                            <?php
                                }
                            ?>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Data Notulensi Rapat <?php echo($company); ?>
                                </div>

                                <div class="panel-body">
                                    <table width="100%" class="table table-bordered table-hover" id="dataTables-notulensi">
                                        <thead>
                                            <tr>
                                                <th>NO</th>
                                                <th>UNIT</th>
                                                <th>MASALAH</th>
                                                <th>TINDAK LANJUT</th>
                                                <th>HASIL</th>
                                                <th>PIC 1</th>
                                                <th>PIC 2</th>
                                                <th>PIC 3</th>
                                                <th>#</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>NO</th>
                                                <th>UNIT</th>
                                                <th>MASALAH</th>
                                                <th>TINDAK LANJUT</th>
                                                <th>HASIL</th>
                                                <th>PIC 1</th>
                                                <th>PIC 2</th>
                                                <th>PIC 3</th>
                                                <th>#</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <?php
                                                //membuat query membaca record dari tabel User      
                                                $query="SELECT * FROM notulensi WHERE unit='$unit' AND status=1 ORDER BY tgl_input ASC";
                                                //menjalankan query      
                                                if (mysqli_query($connect,$query)) {      
                                                    $result=mysqli_query($connect,$query);     
                                                } else die ("Error menjalankan query");
                                                
                                                //mengecek record kosong     
                                                if (mysqli_num_rows($result) > 0) {
                                                    $no='1';
                                                    //menampilkan hasil query      
                                                    while($row = mysqli_fetch_array($result)) {      
                                                        if($row['status']==='0'){
                                                            echo "<tr>";
                                                        }else if($row['status']==='1'){
                                                            echo "<tr class='warning'>";
                                                        }else if($row['status']==='2'){
                                                            echo "<tr class='success'>";
                                                        }
                                                        echo "	<td>".$no."</td>";    
                                                        echo "	<td width='20%'>".$row["unit"]."</td>";
                                                        echo "	<td>".$row["masalah"]."</td>";      
                                                        echo "	<td>".$row["tindaklanjut"]."</td>";
                                                        echo "	<td>".$row["hasil"]."</td>";
                                                        echo "	<td>".$row["pic1"]."</td>";
                                                        echo "	<td>".$row["pic2"]."</td>";
                                                        echo "	<td>".$row["pic3"]."</td>";
                                                        echo "<td width='10%' align='center'> <a href='updatenote.php?id=$row[id]' class='btn btn-sm btn-primary'> <i class='glyphicon glyphicon-floppy-save'></i> UPDATE DATA</a></td>";
                                                        echo "</tr>";   
                                                        $no++;
                                                    }   
                                                }
                                            ?>
                                	    </tbody>
                                    </table>
                                    <a href="../export/exportexcel.php?unit=<?php echo $unit;?>&data=overdue" class="btn btn-sm btn-default"><i class="fa fa-file-excel-o"></i> EXPORT TO EXCEL</a>
                                    <a href="../export/exportpdf.php?unit=<?php echo $unit;?>&data=overdue" class="btn btn-sm btn-default"><i class="fa fa-print"></i> EXPORT TO PDF</a>
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
            include('../component/backtotop.php');

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

            // Auto Dismis
            window.setTimeout(function() {
                $(".alert").fadeTo(500, 0).slideUp(500, function(){
                $(this).remove(); 
                });
            }, 5000);
        </script>


    </body>

</html>