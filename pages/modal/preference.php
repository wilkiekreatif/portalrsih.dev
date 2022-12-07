<div class="modal fade" id="bookingmeetingroom" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">x</span>
                </button>
                <h4 class="modal-title" id="judul">BOOKING MEETING ROOM</h4>
            </div>
            <div class="modal-body">
                <form action="../controller/vbooking.php" method="post">
                    <div class="form-group has-feedback">
                        <label for="user">Nama User <a style="color:red">*</a></label></label>
                        <input required type="text" class="form-control" id="user" name="user" placeholder="Nama User yang meminta..." maxlength="60">
                    </div>
                    
                    <div class="form-group has-feedback">
                        <label for="unit">Unit <a style="color:red">*</a></label>
                        <select required class="form-control" name="unit" id="unit">
                            <option value="" selected>--Pilih Unit--</option>
                            <?php
                                $tampil = mysqli_query($connect,"SELECT * FROM mst_bagian ORDER BY nama");
                                while ($w = mysqli_fetch_array($tampil)) {
                                    echo "<option value=$w[id]>$w[nama]</option>";
                                }
                            ?>
                        </select>
                    </div>
                    <div class="form-group has-feedback">
                        <label for="ruangan">Ruangan <a style="color:red">*</a></label>
                        <select required class="form-control" name="ruangan" id="ruangan">
                            <option value="" selected>--Pilih Ruangan--</option>
                            <?php
                                $tampil = mysqli_query($connect,"SELECT * FROM mst_meetingroom ORDER BY nama");
                                while ($w = mysqli_fetch_array($tampil)) {
                                    echo "<option value=$w[id]>$w[nama]</option>";
                                }
                            ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="tglbookingmulai">Waktu Mulai Booking<a style="color:red">*</a></label></label>
                        <input class="form-control" type="datetime-local" id="tglbookingmulai" name="tglbookingmulai">
                    </div>
                    <div class="form-group">
                        <label for="tglbookingselesai">Waktu Selesai Booking<a style="color:red">*</a></label></label>
                        <input class="form-control" type="datetime-local" id="tglbookingselesai" name="tglbookingselesai">
                    </div>
                    <div class="form-group has-feedback">
                        <label for="kepentingan">Kepentingan Booking <a style="color:red">*</a></label>
                        <textarea required type="text" name="kepentingan" class="form-control" placeholder="Kepentingan Booking..." rows="3" maxlength="255"></textarea> 
                        <!-- <span class="glyphicon glyphicon-user form-control-feedback"></span> -->
                    </div>
            </div>
            <div class="modal-footer">
                    <button class="btn btn-success" type="submit">Simpan</button>
                    <button class="btn btn-default" type="reset">Reset</button>
                </form>
            </div>
        </div>
    </div>
</div>