<div class="navbar-default sidebar" role="navigation">
  <div class="sidebar-nav navbar-collapse">
    <ul class="nav" id="side-menu">
      <li>
          <a href="../dashboard/"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
      </li>
      <li>
        <a href="#"><i class="fa fa-dollar fa-fw"></i> Divisi Marketing & Keuangan <span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
          <!-- <li>
                <a href="#">Second Level Item</a>
          </li> -->

          <?php
            // session_start();
            // include('../../config.php');
            $query = "SELECT * FROM mst_unit WHERE manajer = 0";
            if (mysqli_query($connect,$query)) {      
              $result=mysqli_query($connect,$query);     
            } else die ("Error menjalankan query". mysqli_error());
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
        <a href="#"><i class="fa fa-dollar fa-fw"></i> Divisi Keperawatan <span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
          <!-- <li>
                <a href="#">Second Level Item</a>
          </li> -->

          <?php
            // session_start();
            include('../../config.php');
            $query = "SELECT * FROM mst_unit WHERE manajer = 1";
            if (mysqli_query($connect,$query)) {      
              $result=mysqli_query($connect,$query);     
            } else die ("Error menjalankan query". mysqli_error());
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
        <a href="#"><i class="fa fa-dollar fa-fw"></i> Divisi Pelayanan Medis <span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
          <!-- <li>
                <a href="#">Second Level Item</a>
          </li> -->

          <?php
            // session_start();
            include('../../config.php');
            $query = "SELECT * FROM mst_unit WHERE manajer = 2";
            if (mysqli_query($connect,$query)) {      
              $result=mysqli_query($connect,$query);     
            } else die ("Error menjalankan query". mysqli_error());
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
        <a href="#"><i class="fa fa-dollar fa-fw"></i> Divisi Umum & SDM <span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
          <!-- <li>
                <a href="#">Second Level Item</a>
          </li> -->

          <?php
            // session_start();
            include('../../config.php');
            $query = "SELECT * FROM mst_unit WHERE manajer = 3";
            if (mysqli_query($connect,$query)) {      
              $result=mysqli_query($connect,$query);     
            } else die ("Error menjalankan query". mysqli_error());
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
          <a href="../notulensi/"><i class="fa fa-dashboard fa-fw"></i> Notulensi Rapat</a>
      </li>
    </ul>
  </div>
  <!-- /.sidebar-collapse -->
</div>