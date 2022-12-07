<div class="modal fade" id="tambah_notulensi" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">x</span>
                </button>
                <h4 class="modal-title" id="judul">NOTULENSI BARU</h4>
            </div>
            <div class="modal-body">
                <form action="../controller/vnotulensibaru.php?unit=<?php echo($unit); ?>" method="post">
                    
                    <div class="form-group has-feedback">
                        <label for="permasalahan">Permasalahan *</label>
                        <textarea required type="text" name="masalah" class="form-control" placeholder="..." rows="3" maxlength="5000"></textarea> 
                        <!-- <span class="glyphicon glyphicon-user form-control-feedback"></span> -->
                    </div>

                    <div class="form-group has-feedback">
                        <label for="tindaklanjut">Tindak Lanjut *</label>
                        <textarea required type="text" name="tindaklanjut" class="form-control" placeholder="..." rows="3" maxlength="500"></textarea> 
                        <!-- <span class="glyphicon glyphicon-user form-control-feedback"></span> -->
                    </div>

                    <div class="form-group has-feedback">
                        <label for="unit">PIC 1 *</label>
                        <select required class="form-control" name="pic1" id="pic1">
                            <option value="" selected>-</option>
                            <?php
                            $tampil = mysqli_query($connect,"SELECT a.nama FROM mst_user a, mst_jabatan b WHERE a.jabatan = b.nama AND b.level=0 ORDER BY a.nama ASC");
                            while ($w = mysqli_fetch_array($tampil)) {
                            echo "<option value='$w[nama]'>$w[nama]</option>";
                            }?>
                        </select>
                    </div>

                    <div class="form-group has-feedback">
                        <label for="pic2">PIC 2</label>
                        <select class="form-control" name="pic2" id="pic2">
                            <option selected>-</option>
                            <?php
                            $tampil = mysqli_query($connect,"SELECT a.nama FROM mst_user a, mst_jabatan b WHERE a.jabatan = b.nama AND b.level=0 ORDER BY a.nama ASC");
                            while ($w = mysqli_fetch_array($tampil)) {
                            echo "<option value='$w[nama]'>$w[nama]</option>";
                            }?>
                        </select>
                    </div>

                    <div class="form-group has-feedback">
                        <label for="pic3">PIC 3</label>
                        <select class="form-control" name="pic3" id="pic3">
                            <option selected>-</option>
                            <?php
                            $tampil = mysqli_query($connect,"SELECT a.nama FROM mst_user a, mst_jabatan b WHERE a.jabatan = b.nama AND b.level=0 ORDER BY a.nama ASC");
                            while ($w = mysqli_fetch_array($tampil)) {
                            echo "<option value='$w[nama]'>$w[nama]</option>";
                            }?>
                        </select>
                    </div>

                    <div class="form-group has-feedback">
                        <label for="deadline">Deadline *</label>
                        <input required type="date" name="deadline" class="form-control" placeholder="..." maxlength="10">
                        <!-- <span class="glyphicon glyphicon-user form-control-feedback"></span> -->
                    </div>
                    <label>* : Wajib diisi</label>

            </div>
            <div class="modal-footer">
                    <button class="btn btn-success" type="submit">Simpan</button>
                    <button class="btn btn-default" type="reset">Reset</button>
                </form>
            </div>
        </div>
    </div>
</div>