<?php
    session_start();
    require('../controller/accountcontrol.php');
    $_SESSION['menu']='Dashboard';
    include('../../config.php');
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

        <!-- DataTables CSS -->
        <link href="../../assets/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

        <!-- DataTables Responsive CSS -->
        <link href="../../assets/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="../../assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    </head>

    <body id="page-top">

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
                            <h1 class="page-header"><?php echo($_SESSION['menu']); ?></h1>
                        </div>
                        <div class="row">
                            <div class="col-lg-4 col-md-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-user-md fa-5x"></i>
                                            </div>
                                            <div class="col-xs-9 text-right">
                                                <div class="huge">
                                                    <?php
                                                        $q = mysqli_query($connect,"SELECT COUNT(*) as total FROM skdirektur");
                                                        $data = mysqli_fetch_array($q);
                                                        echo($data['total']);
                                                    ?>
                                                </div>
                                                <div>SK Direktur</div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#skdirektur">
                                        <div class="panel-footer">
                                            <span class="pull-left">Lihat Detail</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-6">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-book fa-5x"></i>
                                            </div>
                                            <div class="col-xs-9 text-right">
                                                <div class="huge">
                                                    <?php
                                                        $q = mysqli_query($connect,"SELECT COUNT(*) as total FROM spo");
                                                        $data = mysqli_fetch_array($q);
                                                        echo($data['total']);
                                                    ?>
                                                </div>
                                                <div>SPO RSIH</div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#spo">
                                        <div class="panel-footer">
                                            <span class="pull-left">Lihat Detail</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-6">
                                <div class="panel panel-green">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-book fa-5x"></i>
                                            </div>
                                            <div class="col-xs-9 text-right">
                                                <div class="huge">
                                                    <?php
                                                        $q = mysqli_query($connect,"SELECT COUNT(*) as total FROM pedoman");
                                                        $data = mysqli_fetch_array($q);
                                                        echo($data['total']);
                                                    ?>
                                                </div>
                                                <div>PEDOMAN RSIH</div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#pedoman">
                                        <div class="panel-footer">
                                            <span class="pull-left">Lihat Detail</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-6">
                                <div class="panel panel-yellow">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-book fa-5x"></i>
                                            </div>
                                            <div class="col-xs-9 text-right">
                                                <div class="huge">
                                                    <?php
                                                        $q = mysqli_query($connect,"SELECT COUNT(*) as total FROM panduan");
                                                        $data = mysqli_fetch_array($q);
                                                        echo($data['total']);
                                                    ?>
                                                </div>
                                                <div>PANDUAN RSIH</div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#panduan">
                                        <div class="panel-footer">
                                            <span class="pull-left">Lihat Detail</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-6">
                                <div class="panel panel-red">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-book fa-5x"></i>
                                            </div>
                                            <div class="col-xs-9 text-right">
                                                <div class="huge">
                                                    <?php
                                                        $q = mysqli_query($connect,"SELECT COUNT(*) as total FROM formulir");
                                                        $data = mysqli_fetch_array($q);
                                                        echo($data['total']);
                                                    ?>
                                                </div>
                                                <div>FORMULIR RSIH</div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#formulir">
                                        <div class="panel-footer">
                                            <span class="pull-left">Lihat Detail</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                    </div>
                    
                    <div class="row">
                        <!-- /.col-lg-12 -->
                        <div class="col-md-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <i class="fa fa-bell fa-fw"></i> NOMOR DARURAT KAB. GARUT
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="list-group">
                                        <a href="#" class="list-group-item">
                                            <i class="fa fa-taxi fa-fw"></i> Pemadam Kebakaran
                                            <span class="pull-right text-muted"><em>(0262) 232113</em>
                                            </span>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <i class="fa fa-warning fa-fw"></i> Polisi
                                            <span class="pull-right text-muted"><em>(0262) 233110</em>
                                            </span>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <i class="fa fa-ambulance fa-fw"></i> Ambulans
                                            <span class="pull-right text-muted"><em>(0262) 232720</em>
                                            </span>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <i class="fa fa-plus fa-fw"></i> PMI
                                            <span class="pull-right text-muted"><em>(0262) 235118 & 233672</em>
                                            </span>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <i class="fa fa-bolt fa-fw"></i> PLN
                                            <span class="pull-right text-muted"><em>(0262) 242751</em>
                                            </span>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <i class="fa fa-tint fa-fw"></i> PDAM
                                            <span class="pull-right text-muted"><em>(0262) 233324</em>
                                            </span>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <i class="fa fa-taxi fa-fw"></i> POS
                                            <span class="pull-right text-muted"><em>(0262) 233832</em>
                                            </span>
                                        </a>
                                    </div>
                                    <!-- /.list-group -->
                                    <a href="https://infogarut.id/catat-ini-nomor-penting-ketika-keadaan-genting-di-garut/" class="btn btn-default btn-block">Lihat lebih detail</a>
                                </div>
                                <!-- /.panel-body -->
                            </div>
                            <!-- /.panel -->
                        </div>

                        <div class="col-md-8">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <i class="fa fa-map-marker fa-fw"></i> LOKASI <?php echo($company); ?>
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <!-- <div class="embed-responsive embed-responsive-16by9">
                                        <iframe class="embed-responsive-item" src="https://maps.google.com/maps?q=rumah%20sakit%20intan%20husada%20garut&t=k&z=15&ie=UTF8&iwloc=&output=embed" allowfullscreen></iframe>
                                    </div> -->

                                    <div class="mapouter">
                                        <div class="gmap_canvas">
                                            <iframe width="100%" height="100%" id="gmap_canvas" src="https://maps.google.com/maps?q=rumah%20sakit%20intan%20husada%20garut&t=k&z=15&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                                                <a href="https://123movies-to.org"></a>
                                                <br>
                                                <style>.mapouter{position:relative;text-align:right;height:340px;width:100%;}</style>
                                                <a href="https://www.embedgooglemap.net">add google map to my website</a>
                                                <style>.gmap_canvas {overflow:hidden;background:none!important;height:340px;width:100%;}</style>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    DAFTAR UNIT <?php echo($company); ?>
                                <!-- </div> -->
                                <!-- <div class="card-tools"> -->
                                    <!-- <button type="button" class="pull-right" data-toggle="modal" data-target="#tambah_unit">
                                        <i class="fa fa-plus"></i>
                                        Tambah Unit Baru
                                    </button> -->
                                </div>
                                <div class="panel-body">
                                    <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-unit">
                                        <thead>
                                            <tr>
                                                <th>NO</th>
                                                <th>UNIT</th>
                                                <th>PIMPINAN</th>
                                                <th>JABATAN</th>
                                                <th>EXT TELEPON</th>
                                                <th>LOKASI RUANGAN</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>NO</th>
                                                <th>UNIT</th>
                                                <th>PIMPINAN</th>
                                                <th>JABATAN</th>
                                                <th>EXT TELEPON</th>
                                                <th>LOKASI RUANGAN</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <?php
                                                //membuat query membaca record dari tabel User      
                                                $query="SELECT DISTINCT nama, pimpinan, jabatan, ext_telepon, lokasi FROM mst_unit ORDER BY nama ASC";
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
                                                        echo "	<td>".$no."</td>";    
                                                        echo "	<td>".$row["nama"]."</td>";
                                                        echo "	<td>".$row["pimpinan"]."</td>";      
                                                        echo "	<td>".$row["jabatan"]."</td>";
                                                        echo "	<td>".$row["ext_telepon"]."</td>";
                                                        echo "	<td>".$row["lokasi"]."</td>";
                                                        // echo "<td width='10%' align='center'> <a href='../$row[files]' class='btn btn-sm btn-primary'> <i class='glyphicon glyphicon-floppy-save'></i></a>";
                                                        // echo " <a href='#myModal' class='btn btn-sm btn-danger' id='CustId' data-toggle='modal' data-id=".$row['id']."><i class='glyphicon glyphicon-remove'></i></a></td>";
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
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-6" id="skdirektur">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    DAFTAR SK DIREKTUR
                                <!-- </div> -->
                                <!-- <div class="card-tools"> -->
                                    <!-- <button type="button" class="pull-right" data-toggle="modal" data-target="#tambah_unit">
                                        <i class="fa fa-plus"></i>
                                        Tambah Unit Baru
                                    </button> -->
                                </div>
                                <div class="panel-body">
                                    <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-skdirektur">
                                        <thead>
                                            <tr>
                                                <th>NO</th>
                                                <th>JUDUL</th>
                                                <th>DESKRIPSI</th>
                                                <th>TGL UPLOAD</th>
                                                <th>#</th>

                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>NO</th>
                                                <th>JUDUL</th>
                                                <th>DESKRIPSI</th>
                                                <th>TGL UPLOAD</th>
                                                <th>#</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <?php
                                                //membuat query membaca record dari tabel User      
                                                $query="SELECT * FROM skdirektur ORDER BY tgl_upload ASC";
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
                                                        // echo "	<td width='20%'>".$row["unit"]."</td>";
                                                        echo "	<td width='15%'>".$row["judul"]."</td>";
                                                        echo "	<td width='15%'>".$row["deskripsi"]."</td>";      
                                                        echo "	<td width='10%'>".$row["tgl_upload"]."</td>";
                                            ?>              
                                                        <!-- <td width='28%' align='center'>
                                                            <object
                                                                type="application/pdf"
                                                                data="<?php echo($row['files']); ?>"
                                                                width="500"
                                                                height="600"
                                                                >
                                                            </object>
                                                        </td> -->
                                            <?php
                                                        echo "  <td width='5%' align='center'> <a href='detail.php?id=$row[id]&unit=skdirektur' class='btn btn-sm btn-primary'> <i class='glyphicon glyphicon-list-alt'></i> LIHAT DETAIL DATA</a>";
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

                        <div class="col-lg-6" id="spo">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    DAFTAR SPO RSIH
                                <!-- </div> -->
                                <!-- <div class="card-tools"> -->
                                    <!-- <button type="button" class="pull-right" data-toggle="modal" data-target="#tambah_unit">
                                        <i class="fa fa-plus"></i>
                                        Tambah Unit Baru
                                    </button> -->
                                </div>
                                <div class="panel-body">
                                    <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-spo">
                                        <thead>
                                            <tr>
                                                <th>NO</th>
                                                <th>UNIT</th>
                                                <th>JUDUL</th>
                                                <th>DESKRIPSI</th>
                                                <th>#</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>NO</th>
                                                <th>UNIT</th>
                                                <th>JUDUL</th>
                                                <th>DESKRIPSI</th>
                                                <th>#</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <?php
                                                //membuat query membaca record dari tabel User      
                                                $query="SELECT * FROM spo ORDER BY tgl_upload ASC";
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
                                                        // echo "	<td width='10%'>".$row["tgl_upload"]."</td>";
                                                        echo "	<td width='20%'>".$row["unit"]."</td>";
                                                        echo "	<td width='15%'>".$row["judul"]."</td>";
                                                        echo "	<td width='15%'>".$row["deskripsi"]."</td>";      
                                            ?>              
                                                        <!-- <td width='28%' align='center'>
                                                            <object
                                                                type="application/pdf"
                                                                data="<?php echo($row['files']); ?>"
                                                                width="500"
                                                                height="600"
                                                                >
                                                            </object>
                                                        </td> -->
                                            <?php
                                                        echo "  <td width='5%' align='center'> <a href='detail.php?id=$row[id]&unit=spo' class='btn btn-sm btn-primary'> <i class='glyphicon glyphicon-list-alt'></i> LIHAT DETAIL DATA</a>";
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
                    </div>
                    <div class="row">
                        <div class="col-lg-6" id="pedoman">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    DAFTAR PEDOMAN RSIH
                                <!-- </div> -->
                                <!-- <div class="card-tools"> -->
                                    <!-- <button type="button" class="pull-right" data-toggle="modal" data-target="#tambah_unit">
                                        <i class="fa fa-plus"></i>
                                        Tambah Unit Baru
                                    </button> -->
                                </div>
                                <div class="panel-body">
                                    <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-pedoman">
                                        <thead>
                                            <tr>
                                                <th>NO</th>
                                                <th>UNIT</th>
                                                <th>JUDUL</th>
                                                <th>DESKRIPSI</th>
                                                <th>#</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>NO</th>
                                                <th>UNIT</th>
                                                <th>JUDUL</th>
                                                <th>DESKRIPSI</th>
                                                <th>#</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <?php
                                                //membuat query membaca record dari tabel User      
                                                $query="SELECT * FROM pedoman ORDER BY tgl_upload ASC";
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
                                                        // echo "	<td width='10%'>".$row["tgl_upload"]."</td>";
                                                        echo "	<td width='20%'>".$row["unit"]."</td>";
                                                        echo "	<td width='15%'>".$row["judul"]."</td>";
                                                        echo "	<td width='15%'>".$row["deskripsi"]."</td>";      
                                            ?>              
                                                        <!-- <td width='28%' align='center'>
                                                            <object
                                                                type="application/pdf"
                                                                data="<?php echo($row['files']); ?>"
                                                                width="500"
                                                                height="600"
                                                                >
                                                            </object>
                                                        </td> -->
                                            <?php
                                                        echo "  <td width='5%' align='center'> <a href='detail.php?id=$row[id]&unit=pedoman' class='btn btn-sm btn-primary'> <i class='glyphicon glyphicon-list-alt'></i> LIHAT DETAIL DATA</a>";
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
                        <div class="col-lg-6" id="panduan">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    DAFTAR PANDUAN RSIH
                                <!-- </div> -->
                                <!-- <div class="card-tools"> -->
                                    <!-- <button type="button" class="pull-right" data-toggle="modal" data-target="#tambah_unit">
                                        <i class="fa fa-plus"></i>
                                        Tambah Unit Baru
                                    </button> -->
                                </div>
                                <div class="panel-body">
                                    <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-panduan">
                                        <thead>
                                            <tr>
                                                <th>NO</th>
                                                <th>UNIT</th>
                                                <th>JUDUL</th>
                                                <th>DESKRIPSI</th>
                                                <th>#</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>NO</th>
                                                <th>UNIT</th>
                                                <th>JUDUL</th>
                                                <th>DESKRIPSI</th>
                                                <th>#</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <?php
                                                //membuat query membaca record dari tabel User      
                                                $query="SELECT * FROM panduan ORDER BY tgl_upload ASC";
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
                                                        // echo "	<td width='10%'>".$row["tgl_upload"]."</td>";
                                                        echo "	<td width='20%'>".$row["unit"]."</td>";
                                                        echo "	<td width='15%'>".$row["judul"]."</td>";
                                                        echo "	<td width='15%'>".$row["deskripsi"]."</td>";      
                                            ?>              
                                                        <!-- <td width='28%' align='center'>
                                                            <object
                                                                type="application/pdf"
                                                                data="<?php echo($row['files']); ?>"
                                                                width="500"
                                                                height="600"
                                                                >
                                                            </object>
                                                        </td> -->
                                            <?php
                                                        echo "  <td width='5%' align='center'> <a href='detail.php?id=$row[id]&unit=panduan' class='btn btn-sm btn-primary'> <i class='glyphicon glyphicon-list-alt'></i> LIHAT DETAIL DATA</a>";
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
                    </div>
                    <div class="row">
                        <div class="col-lg-6" id="formulir">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    DAFTAR FORMULIR RSIH
                                <!-- </div> -->
                                <!-- <div class="card-tools"> -->
                                    <!-- <button type="button" class="pull-right" data-toggle="modal" data-target="#tambah_unit">
                                        <i class="fa fa-plus"></i>
                                        Tambah Unit Baru
                                    </button> -->
                                </div>
                                <div class="panel-body">
                                    <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-formulir">
                                        <thead>
                                            <tr>
                                                <th>NO</th>
                                                <th>UNIT</th>
                                                <th>JUDUL</th>
                                                <th>DESKRIPSI</th>
                                                <th>#</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>NO</th>
                                                <th>UNIT</th>
                                                <th>JUDUL</th>
                                                <th>DESKRIPSI</th>
                                                <th>#</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <?php
                                                //membuat query membaca record dari tabel User      
                                                $query="SELECT * FROM formulir ORDER BY tgl_upload ASC";
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
                                                        // echo "	<td width='10%'>".$row["tgl_upload"]."</td>";
                                                        echo "	<td width='20%'>".$row["unit"]."</td>";
                                                        echo "	<td width='15%'>".$row["judul"]."</td>";
                                                        echo "	<td width='15%'>".$row["deskripsi"]."</td>";      
                                            ?>              
                                                        <!-- <td width='28%' align='center'>
                                                            <object
                                                                type="application/pdf"
                                                                data="<?php echo($row['files']); ?>"
                                                                width="500"
                                                                height="600"
                                                                >
                                                            </object>
                                                        </td> -->
                                            <?php
                                                        echo "  <td width='5%' align='center'> <a href='detail.php?id=$row[id]&unit=formulir' class='btn btn-sm btn-primary'> <i class='glyphicon glyphicon-list-alt'></i> LIHAT DETAIL DATA</a>";
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
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <?php
            include('../component/backtotop.php');
            // include('../modal/tambahunitbaru.php');
        ?>

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
                $('#dataTables-unit').DataTable({
                    responsive: true
                });
                $('#dataTables-skdirektur').DataTable({
                    responsive: true
                });
                $('#dataTables-spo').DataTable({
                    responsive: true
                });
                $('#dataTables-pedoman').DataTable({
                    responsive: true
                });
                $('#dataTables-panduan').DataTable({
                    responsive: true
                });
                $('#dataTables-formulir').DataTable({
                    responsive: true
                });
            });
        </script>

    </body>

</html>