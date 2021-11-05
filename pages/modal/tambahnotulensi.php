<div class="modal fade" id="tambah_notulensi" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <h4 class="modal-title" id="judul">NOTULENSI BARU</h4>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
            </div>
            <div class="modal-body">
                <form action="../controller/vnotulensi.php" method="post">
                    <div class="form-group has-feedback">
                        <label for="unit">Unit *</label>
                        <select required class="form-control" name="unit" id="unit">
                            <option value="" selected>--Pilih Bagian--</option>
                            <?php
                            $tampil = mysqli_query($connect,"SELECT DISTINCT nama FROM mst_unit ORDER BY nama");
                            while ($w = mysqli_fetch_array($tampil)) {
                            echo "<option value='$w[nama]'>$w[nama]</option>";
                            }?>
                        </select>
                    </div>

                    <div class="form-group has-feedback">
                        <label for="permasalahan">Permasalahan *</label>
                        <textarea required type="text" name="masalah" class="form-control" placeholder="..." rows="3" maxlength="50"></textarea> 
                        <!-- <span class="glyphicon glyphicon-user form-control-feedback"></span> -->
                    </div>

                    <div class="form-group has-feedback">
                        <label for="tindaklanjut">Tindak Lanjut *</label>
                        <textarea required type="text" name="tindaklanjut" class="form-control" placeholder="..." rows="3" maxlength="200"></textarea> 
                        <!-- <span class="glyphicon glyphicon-user form-control-feedback"></span> -->
                    </div>

                    <div class="form-group has-feedback">
                        <label for="pic1">PIC 1 *</label>
                        <input required type="text" name="pic1" class="form-control" placeholder="..." maxlength="20">
                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    </div>

                    <div class="form-group has-feedback">
                        <label for="pic2">PIC 2</label>
                        <input type="text" name="pic2" class="form-control" placeholder="..." maxlength="50">
                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    </div>

                    <div class="form-group has-feedback">
                        <label for="pic3">PIC 3</label>
                        <input type="text" name="pic3" class="form-control" placeholder="..." maxlength="50">
                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
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