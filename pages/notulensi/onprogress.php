<?php
    session_start();
    require('../controller/accountcontrol.php');
    include('../../config.php');
    $unit               = $_GET['unit'];
    $_SESSION['menu']   = 'Notulensi On Progress';
    $_SESSION['unit']   = $unit;
    $_SESSION['filter'] = '0';
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
        <link href="https://cdn.datatables.net/datetime/1.1.1/css/dataTables.dateTime.min.css" rel="stylesheet">

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
                            <h1 class="page-header"><?php echo($_SESSION['menu'].' '.$unit); ?><a href="#tambah_notulensi" class="btn btn-sm btn-success pull-right" id="NotID" data-toggle="modal"><i class="fa fa-upload"></i> TAMBAH NOTULENSI</a> </h1>
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
                                }else if (!empty($_GET['message']) && $_GET['message'] == 'deleted') {
                            ?>
                                    <div class="alert alert-success" role="alert">
                                        <strong>Berhasil!</strong> Data notulensi berhasil di Hapus
                                    </div>
                            <?php
                                }
                            ?>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <i class="fa fa-cogs" aria-hidden="true"></i> Filter Data
                                </div>
                                <div class="panel-body">
                                    <?php $unit=$_GET['unit']; ?>
                                    <form action="filter.php?unit=<?php echo($unit);?>" method="POST">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="filterberdasarkan">Sortir Berdasarkan</label>
                                                    <select required class="form-control" id="filterberdasarkan" name="filterberdasarkan">
                                                        <?php
                                                            $filter=$_GET['filter'];
                                                            if($filter==='0'){?>
                                                                <option selected value="">-- Pilih Salah Satu --</option>
                                                                <option value="1">Tanggal Input Data</option>
                                                                <option value="2">Tanggal Deadline Pertama</option>
                                                                <option value="3">Tanggal Deadline Baru</option>
                                                            <?php }else if($filter==='1'){?>
                                                                <option value="">-- Pilih Salah Satu --</option>
                                                                <option selected value="1">Tanggal Input Data</option>
                                                                <option value="2">Tanggal Deadline Pertama</option>
                                                                <option value="3">Tanggal Deadline Baru</option>
                                                            <?php }else if($filter==='2'){?>
                                                                <option value="">-- Pilih Salah Satu --</option>
                                                                <option value="1">Tanggal Input Data</option>
                                                                <option selected value="2">Tanggal Deadline Pertama</option>
                                                                <option value="3">Tanggal Deadline Baru</option>
                                                            <?php }else if($filter==='3'){?>
                                                                <option value="">-- Pilih Salah Satu --</option>
                                                                <option value="1">Tanggal Input Data</option>
                                                                <option value="2">Tanggal Deadline Pertama</option>
                                                                <option selected value="3">Tanggal Deadline Baru</option>
                                                            <?php }?>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="date1">Tanggal Awal</label>
                                                    <input required type="date" class="form-control" id="date1" name="date1"
                                                        <?php
                                                            if(isset($_GET['date1'])){
                                                                $date1 = $_GET['date1'];
                                                                echo("value='".$date1."'");
                                                            }
                                                        ?>
                                                    >
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="date2">Tanggal Akhir</label>
                                                    <input required type="date" class="form-control" id="date2" name="date2"
                                                        <?php
                                                            if(isset($_GET['date2'])){
                                                                $date2 = $_GET['date2'];
                                                                echo("value='".$date2."'");
                                                            }
                                                        ?>
                                                    >
                                                </div>
                                            </div>
                                            <div class="col-md-3" style="margin-top: 1.6%;">
                                                <button class="btn btn-success" type="submit" style="width: 60%;">Apply</button>
                                                <a href="../notulensi/onprogress.php?unit=<?php echo($unit); ?>&filter=0" class="btn btn-warning pull-right" style="width: 38%;">Reset</a>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Data Notulensi Rapat <?php echo($company); ?>
                                </div>
                                
                                <div class="panel-body">
                                    <!-- <table border="0" cellspacing="5" cellpadding="5">
                                        <tbody>
                                            <tr>
                                                <td>Minimum date:</td>
                                                <td><input type="text" id="min" name="min"></td>
                                            </tr>
                                            <tr>
                                                <td>Maximum date:</td>
                                                <td><input type="text" id="max" name="max"></td>
                                            </tr>
                                        </tbody>
                                    </table> -->
                                    <table width="100%" class="table table-bordered table-hover" id="dataTables-notulensi">
                                        <thead>
                                            <tr>
                                                <th>NO</th>
                                                <th>UNIT</th>
                                                <th>MASALAH</th>
                                                <th>TINDAK LANJUT</th>
                                                <th>PIC 1</th>
                                                <th>PIC 2</th>
                                                <th>PIC 3</th>
                                                <th>DEADLINE</th>
                                                <th>#</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>NO</th>
                                                <th>UNIT</th>
                                                <th>MASALAH</th>
                                                <th>TINDAK LANJUT</th>
                                                <th>PIC 1</th>
                                                <th>PIC 2</th>
                                                <th>PIC 3</th>
                                                <th>DEADLINE</th>
                                                <th>#</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <?php
                                                //membuat query membaca record dari tabel User      
                                                $filter=$_GET['filter'];
                                                if($filter==='0'){
                                                    $query="SELECT * FROM notulensi WHERE unit='$unit' AND status=0 ORDER BY tgl_input ASC";
                                                }else if($filter==='1'){
                                                    $date1 = $_GET['date1'];
                                                    $date2 = $_GET['date2'];
                                                    // var_dump($date1.' & '.$date2);
                                                    $query="SELECT * FROM notulensi WHERE (tgl_input BETWEEN '$date1' AND '$date2') AND unit= '$unit' AND status=0 ORDER BY tgl_input ASC";
                                                    // $query="SELECT * FROM notulensi WHERE (unit='$unit' AND status=0) AND (tgl_input BETWEEN '$date1' AND '$date2')";
                                                }else if($filter==='2'){
                                                    $date1 = $_GET['date1'];
                                                    $date2 = $_GET['date2'];
                                                    $query="SELECT * FROM notulensi WHERE (deadline BETWEEN '$date1' AND '$date2') AND unit= '$unit' AND status=0 ORDER BY tgl_input ASC";
                                                }else if($filter==='3'){
                                                    $date1 = $_GET['date1'];
                                                    $date2 = $_GET['date2'];
                                                    $query="SELECT * FROM notulensi WHERE (deadline_baru BETWEEN '$date1' AND '$date2') AND unit= '$unit' AND status=0 ORDER BY tgl_input ASC";
                                                }
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
                                                        echo "	<td>".$row["pic1"]."</td>";
                                                        echo "	<td>".$row["pic2"]."</td>";
                                                        echo "	<td>".$row["pic3"]."</td>";
                                                        echo "	<td>".$row["deadline"]."</td>";
                                                        echo "<td width='20%' align='center'> <a href='updatenote.php?id=$row[id]' class='btn btn-sm btn-primary'> <i class='glyphicon glyphicon-floppy-save'></i> UPDATE DATA</a>";
                                                        if(($_SESSION['level']==='0') OR ($_SESSION['level']==='1')){
                                                        ?>
                                                            <a onclick="return confirm('Apakah anda yakin?')" href='../controller/hapusnotulensi.php?<?php echo("id=$row[id]&unit=$unit"); ?>' class='btn btn-sm btn-danger'> <i class='glyphicon glyphicon-trash'></i> HAPUS DATA</a>
                                                        <?php
                                                        }
                                                        echo "</td></tr>";   
                                                        $no++;
                                                    }   
                                                }
                                            ?>
                                		</tbody>
                                    </table>
                                    <a href="../export/exportexcel.php?unit=<?php echo $unit;?>&data=onprogress" class="btn btn-sm btn-default"><i class="fa fa-file-excel-o"></i> EXPORT TO EXCEL</a>
                                    <a href="../export/exportpdf.php?unit=<?php echo $unit;?>&data=onprogress" class="btn btn-sm btn-default"><i class="fa fa-print"></i> EXPORT TO PDF</a>   
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
            include('../modal/tambahnotulensibaru.php');
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
        <script src="https://cdn.datatables.net/datetime/1.1.1/js/dataTables.dateTime.min.js"></script>


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