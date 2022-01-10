<ul class="nav navbar-top-links navbar-right">
  <!-- /.dropdown -->
  <li class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
      <i class="fa fa-user fa-fw"></i> <?php echo($_SESSION['nama']);?> <i class="fa fa-caret-down"></i>
    </a>
    <ul class="dropdown-menu dropdown-user">
      <li><a href="../preferences/"><i class="fa fa-gear fa-fw"></i> Preferences</a>
      </li>
      <li class="divider"></li>
      <li><a href="../controller/logout.php"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
      </li>
    </ul>
    <!-- /.dropdown-user -->
  </li>
  <!-- /.dropdown -->
</ul>