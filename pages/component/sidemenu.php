<div class="navbar-default sidebar" role="navigation">
  <div class="sidebar-nav navbar-collapse">
    <ul class="nav" id="side-menu">
      <li>
        <a href="../dashboard/"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
      </li>
      <li class="sidebar-search">
        <!-- <h6>Manajemen Dokumen</h6> -->
        <!-- <div class="input-group custom-search-form">
          input type="text" class="form-control" placeholder="Search...">
            <span class="input-group-btn">
                <button class="btn btn-default" type="button">
                    <i class="fa fa-search"></i>
                </button>
            </span>
        </div> -->
        <!-- /input-group -->
      </li>
      <li>
        <a href="#"><i class="fa fa-archive fa-fw"></i> Regulasi PT. RSIH<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li>
                <a href="../ptrsihkebijakan/"><i class="fa fa-file fa-fw"></i> Kebijakan</a>
            </li>
            <li>
                <a href="../ptrsihsk/"><i class="fa fa-file fa-fw"></i> SK</a>
            </li>
            <li>
                <a href="../ptrsihperaturan/"><i class="fa fa-file fa-fw"></i> Peraturan</a>
            </li>
        </ul>
        <!-- /.nav-second-level -->
      </li>
      <li class="sidebar-search">
        <!-- <h6>Manajemen Dokumen</h6> -->
        <!-- <div class="input-group custom-search-form">
          input type="text" class="form-control" placeholder="Search...">
            <span class="input-group-btn">
                <button class="btn btn-default" type="button">
                    <i class="fa fa-search"></i>
                </button>
            </span>
        </div> -->
        <!-- /input-group -->
      </li>
      <li>
        <a href="#"><i class="fa fa-archive fa-fw"></i> SK & SPK Direktur<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li>
                <a href="../skdirektur/"><i class="fa fa-file fa-fw"></i> SK</a>
            </li>
            <li>
                <a href="../spkdirektur/"><i class="fa fa-file fa-fw"></i> SPK</a>
            </li>
        </ul>
        <!-- /.nav-second-level -->
      </li>
      <li>
        <a href="#"><i class="fa fa-archive fa-fw"></i> Regulasi Induk <span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
          <!--<li>-->
          <!--  <a href="../hospitalbylaw/"><i class="fa fa-hospital-o fa-fw"></i> Hospital By Laws</a>-->
          <!--</li>-->
          <li>
            <a href="../corporatebylaw/"><i class="fa fa-briefcase fa-fw"></i> Corporate By Laws</a>
          </li>
          <li>
            <a href="../medicalbylaw/"><i class="fa fa-stethoscope fa-fw"></i> Medical By Laws</a>
          </li>
          <li>
            <a href="../nursingbylaw/"><i class="fa fa-user-md fa-fw"></i> Nursing By Laws</a>
          </li>
          <li>
            <a href="../aturandirutsotk/"><i class="fa fa-user fa-fw"></i> Peraturan Direktur Utama tentang SOTK</a>
          </li>
          <li>
            <a href="../sdrs/"><i class="fa fa-h-square  fa-fw"></i> Kebijakan Standar Manajemen Sumber Daya RS</a>
          </li>
          <li>
            <a href="../kspbp/"><i class="fa fa-line-chart fa-fw"></i> Kebijakan Standar Pelayanan Berfokus Pasien</a>
          </li>
          <li>
            <a href="../kpn/"><i class="fa fa-university fa-fw"></i> Kebijakan Program Nasional</a>
          </li>
        </ul>
        <!-- /.nav-second-level -->
      </li>
      <li>
          <a href="../tarif/"><i class="fa fa-dollar fa-fw"></i> Tarif</a>
      </li>
      <li>
          <a href="../meetingroom/"><i class="fa fa-book fa-fw"></i> Booking Meeting Room</a>
      </li>

      <li class="sidebar-search">
        <!-- <h6>Manajemen Dokumen</h6> -->
        <!-- <div class="input-group custom-search-form">
          input type="text" class="form-control" placeholder="Search...">
            <span class="input-group-btn">
                <button class="btn btn-default" type="button">
                    <i class="fa fa-search"></i>
                </button>
            </span>
        </div> -->
        <!-- /input-group -->
      </li>

      <li>
        <a href="#"><i class="fa fa-dollar fa-fw"></i> Divisi Marketing & Keuangan <span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
          <?php
            // session_start();
            // include('../../config.php');
            $query = "SELECT * FROM mst_unit WHERE manajer = 0";
            if (mysqli_query($connect,$query)) {      
              $result=mysqli_query($connect,$query);     
            } else die ("Error menjalankan query");
            //mengecek record kosong     
            while($row = mysqli_fetch_array($result)) { 
              ?>
                <li>
                  <a href="#"><?php echo($row['nama']); ?> <span class="fa arrow"></span></a>
                  <ul class="nav nav-third-level">
                      <li>
                          <a href="../spo/index.php?unit=<?php echo($row['nama']); ?>">SPO <?php echo($row['nama']); ?></a>
                      </li>
                      <li>
                          <a href="../panduan/index.php?unit=<?php echo($row['nama']); ?>">Panduan <?php echo($row['nama']); ?></a>
                      </li>
                      <li>
                          <a href="../pedoman/index.php?unit=<?php echo($row['nama']); ?>">Pedoman <?php echo($row['nama']); ?></a>
                      </li>
                      <li>
                          <a href="../formulir/index.php?unit=<?php echo($row['nama']); ?>">Formulir <?php echo($row['nama']); ?></a>
                      </li>
                  </ul>
                </li>
              <?php
            }
          ?>
        </ul>
        <!-- /.nav-second-level -->
      </li>

      <li>
        <a href="#"><i class="fa fa-stethoscope fa-fw"></i> Divisi Keperawatan <span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
          <?php
            // session_start();
            include('../../config.php');
            $query = "SELECT * FROM mst_unit WHERE manajer = 1 OR manajer = 2 EXCEPT SELECT * FROM mst_unit WHERE id=40";
            if (mysqli_query($connect,$query)) {      
              $result=mysqli_query($connect,$query);     
            } else die ("Error menjalankan query");
            //mengecek record kosong     
            while($row = mysqli_fetch_array($result)) { 
              ?>
                <li>
                  <a href="#"><?php echo($row['nama']); ?> <span class="fa arrow"></span></a>
                  <ul class="nav nav-third-level">
                      <li>
                          <a href="../spo/index.php?unit=<?php echo($row['nama']); ?>&divisi=1">SPO <?php echo($row['nama']); ?></a>
                      </li>
                      <li>
                          <a href="../panduan/index.php?unit=<?php echo($row['nama']); ?>&divisi=1">Panduan <?php echo($row['nama']); ?></a>
                      </li>
                      <li>
                          <a href="../pedoman/index.php?unit=<?php echo($row['nama']); ?>&divisi=1">Pedoman <?php echo($row['nama']); ?></a>
                      </li>
                      <li>
                          <a href="../formulir/index.php?unit=<?php echo($row['nama']); ?>&divisi=1">Formulir <?php echo($row['nama']); ?></a>
                      </li>
                  </ul>
                </li>
              <?php
            }
          ?>
        </ul>
        <!-- /.nav-second-level -->
      </li>

      <li>
        <a href="#"><i class="fa fa-medkit fa-fw"></i> Divisi Pelayanan Medis <span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
          <?php
            // session_start();
            include('../../config.php');
            $query = "SELECT * FROM mst_unit WHERE manajer = 1 OR manajer = 2 EXCEPT SELECT * FROM mst_unit WHERE id=39";
            if (mysqli_query($connect,$query)) {      
              $result=mysqli_query($connect,$query);     
            } else die ("Error menjalankan query");
            //mengecek record kosong     
            while($row = mysqli_fetch_array($result)) { 
              ?>
                <li>
                  <a href="#"><?php echo($row['nama']); ?> <span class="fa arrow"></span></a>
                  <ul class="nav nav-third-level">
                      <li>
                          <a href="../spo/index.php?unit=<?php echo($row['nama']); ?>&divisi=2">SPO <?php echo($row['nama']); ?></a>
                      </li>
                      <li>
                          <a href="../panduan/index.php?unit=<?php echo($row['nama']); ?>&divisi=2">Panduan <?php echo($row['nama']); ?></a>
                      </li>
                      <li>
                          <a href="../pedoman/index.php?unit=<?php echo($row['nama']); ?>&divisi=2">Pedoman <?php echo($row['nama']); ?></a>
                      </li>
                      <li>
                          <a href="../formulir/index.php?unit=<?php echo($row['nama']); ?>&divisi=2">Formulir <?php echo($row['nama']); ?></a>
                      </li>
                  </ul>
                </li>
              <?php
            }
          ?>
        </ul>
        <!-- /.nav-second-level -->
      </li>

      <li>
        <a href="#"><i class="fa fa-users fa-fw"></i> Divisi Umum & SDM <span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
          <?php
            // session_start();
            include('../../config.php');
            $query = "SELECT * FROM mst_unit WHERE manajer = 3";
            if (mysqli_query($connect,$query)) {      
              $result=mysqli_query($connect,$query);     
            } else die ("Error menjalankan query");
            //mengecek record kosong     
            while($row = mysqli_fetch_array($result)) { 
              ?>
                <li>
                  <a href="#"><?php echo($row['nama']); ?> <span class="fa arrow"></span></a>
                  <ul class="nav nav-third-level">
                      <li>
                          <a href="../spo/index.php?unit=<?php echo($row['nama']); ?>">SPO <?php echo($row['nama']); ?></a>
                      </li>
                      <li>
                          <a href="../panduan/index.php?unit=<?php echo($row['nama']); ?>">Panduan <?php echo($row['nama']); ?></a>
                      </li>
                      <li>
                          <a href="../pedoman/index.php?unit=<?php echo($row['nama']); ?>">Pedoman <?php echo($row['nama']); ?></a>
                      </li>
                      <li>
                          <a href="../formulir/index.php?unit=<?php echo($row['nama']); ?>">Formulir <?php echo($row['nama']); ?></a>
                      </li>
                  </ul>
                </li>
              <?php
            }
          ?>
        </ul>
        <!-- /.nav-second-level -->
      </li>

      <li>
        <a href="#"><i class="fa fa-user-secret fa-fw"></i> Divisi Komite <span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
          <?php
            // session_start();
            include('../../config.php');
            $query = "SELECT * FROM mst_unit WHERE manajer = 4";
            if (mysqli_query($connect,$query)) {      
              $result=mysqli_query($connect,$query);     
            } else die ("Error menjalankan query");
            //mengecek record kosong     
            while($row = mysqli_fetch_array($result)) { 
              ?>
                <li>
                  <a href="#"><?php echo($row['nama']); ?> <span class="fa arrow"></span></a>
                  <ul class="nav nav-third-level">
                      <li>
                          <a href="../spo/index.php?unit=<?php echo($row['nama']); ?>">SPO <?php echo($row['nama']); ?></a>
                      </li>
                      <li>
                          <a href="../panduan/index.php?unit=<?php echo($row['nama']); ?>">Panduan <?php echo($row['nama']); ?></a>
                      </li>
                      <li>
                          <a href="../pedoman/index.php?unit=<?php echo($row['nama']); ?>">Pedoman <?php echo($row['nama']); ?></a>
                      </li>
                      <li>
                          <a href="../formulir/index.php?unit=<?php echo($row['nama']); ?>">Formulir <?php echo($row['nama']); ?></a>
                      </li>
                  </ul>
                </li>
              <?php
            }
          ?>
        </ul>
        <!-- /.nav-second-level -->
      </li>

      <li class="sidebar-search">
        <!-- <h6>Manajemen Dokumen</h6> -->
        <!-- <div class="input-group custom-search-form">
          input type="text" class="form-control" placeholder="Search...">
            <span class="input-group-btn">
                <button class="btn btn-default" type="button">
                    <i class="fa fa-search"></i>
                </button>
            </span>
        </div> -->
        <!-- /input-group -->
      </li>
      <li>
        <a href="#"><i class="fa fa-hospital-o fa-fw"></i> Notulensi Rapat <span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
          <?php
            // session_start();
            include('../../config.php');
            $query = "SELECT * FROM mst_divisi";
            if (mysqli_query($connect,$query)) {      
              $result=mysqli_query($connect,$query);     
            } else die ("Error menjalankan query");
            //mengecek record kosong     
            while($row = mysqli_fetch_array($result)) { 
              ?>
                <li>
                  <a href="#"><?php echo($row['nama']); ?> <span class="fa arrow"></span></a>
                  <ul class="nav nav-third-level">
                      <li>
                          <a href="../notulensi/onprogress.php?unit=<?php echo($row['nama']); ?>&filter=0">On Progress</a>
                      </li>
                      <li>
                          <a href="../notulensi/overdue.php?unit=<?php echo($row['nama']); ?>">Overdue</a>
                      </li>
                      <li>
                          <a href="../notulensi/done.php?unit=<?php echo($row['nama']); ?>">Done</a>
                      </li>
                  </ul>
                </li>
              <?php
            }
          ?>
        </ul>
        <!-- /.nav-second-level -->
      </li>
      <li class="sidebar-search"></li>
      <li>
          <a href="../../../konsul-it/login/"><i class="fa fa-wrench fa-fw"></i> Konsultasi-IT</a>
      </li>
    </ul>
  </div>
  <!-- /.sidebar-collapse -->
</div>