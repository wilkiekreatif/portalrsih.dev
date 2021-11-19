<?php
    include('../../config.php');
    $data = $_GET['data'];
    $unit = $_GET['unit'];
    if($data==='onprogress'){
      $status=0;
    }else if($data==='overdue'){
      $status=1;
    }else if($data==='done'){
      $status=2;
    }
    // fungsi header dengan mengirimkan raw data excel
	header("Content-type: application/vnd-ms-excel");
	 
	// membuat nama file ekspor "export-to-excel.xls"
	header("Content-Disposition: attachment; filename=".$unit."-".$data.".xls");
?>
<html>
  <body>
    	<table border="1" style="width: 100%">
        <thead>
            <tr>
                <th>NO</th>
                <th>MASALAH</th>
                <th>TINDAK LANJUT</th>
                <th>PIC 1</th>
                <th>PIC 2</th>
                <th>PIC 3</th>
                <th>DEADLINE</th>
                <th>DEADLINE BARU</th>
                <th>HASIL</th>
            </tr>
        </thead>
        <tbody>
            <?php
                //membuat query membaca record dari tabel User      
                $query="SELECT * FROM notulensi WHERE unit='$unit' AND status='$status' ORDER BY tgl_input ASC";
                //menjalankan query      
                if (mysqli_query($connect,$query)) {      
                    $result=mysqli_query($connect,$query);     
                } else die ("Error menjalankan query". mysql_error());
                
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
                        echo "	<td>".$row["masalah"]."</td>";      
                        echo "	<td>".$row["tindaklanjut"]."</td>";
                        echo "	<td>".$row["pic1"]."</td>";
                        echo "	<td>".$row["pic2"]."</td>";
                        echo "	<td>".$row["pic3"]."</td>";
                        echo "	<td>".$row["deadline"]."</td>";
                        echo "	<td>".$row["deadline_baru"]."</td>";
                        echo "	<td>".$row["hasil"]."</td>";
                        echo "</tr>";   
                        $no++;
                    }   
                }
            ?>
        </tbody>
      </table>
  </body>
</html>