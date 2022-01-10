<div class="modal fade" id="tambah_unit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">x</span>
                </button>
                <h4 class="modal-title" id="judul">TAMBAH UNIT BARU</h4>
            </div>
            <div class="modal-body">
                <form action="../controller/tambahunit.php" method="post">
                    <div class="form-group has-feedback">
                        <label for="nama">NAMA UNIT</label>
                        <input required type="text" name="nama" id="nama" class="form-control" value="" placeholder="Nama Unit...">
                    </div>
                    <div class="form-group has-feedback">
                        <label for="pimpinan">PIMPINAN </label>
                        <select required class="form-control" name="pimpinan" id="pimpinan">
                            <option value="" selected>-- Pilih Salah Satu --</option>
                            <option value="-">-</option>
                            <?php
                                $tampil = mysqli_query($connect,"SELECT * FROM mst_user ORDER BY nama ASC");
                                    while ($w = mysqli_fetch_array($tampil)) {
                                        echo "<option value='$w[username]'>$w[nama]</option>";
                                }
                            ?>
                        </select>
                    </div>

                    <div class="form-group has-feedback">
                        <label for="jabatan">JABATAN </label>
                        <select required class="form-control" name="jabatan" id="jabatan">
                            <option value="" selected>-- Pilih Salah Satu --</option>
                            <option value="-">-</option>
                            <option value="koordinator">Koordinator</option>
                            <option value="kepala unit">Kepala Unit</option>
                        </select>
                    </div>

            </div>
            <div class="modal-footer">
                    <button class="btn btn-success" type="submit">Upload Berkas</button>
                    <button class="btn btn-default" type="reset">Reset</button>
                </form>
            </div>
        </div>
    </div>
</div>