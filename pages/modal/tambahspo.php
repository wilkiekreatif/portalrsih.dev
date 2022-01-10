<div class="modal fade" id="tambah_spo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">x</span>
                </button>
                <h4 class="modal-title" id="judul">SPO BARU</h4>
            </div>
            <div class="modal-body">
                <form action="../controller/vspo.php?unit=<?php echo($unit);?>" method="post" enctype="multipart/form-data">
                    <div class="form-group has-feedback">
                        <label for="judul">Judul </label>
                        <input required type="text" name="judul" class="form-control" placeholder="..." maxlength="255">
                        <!-- <span class="glyphicon glyphicon-user form-control-feedback"></span> -->
                    </div>

                    <div class="form-group has-feedback">
                        <label for="deskripsi">Deskripsi</label>
                        <textarea required type="text" name="deskripsi" class="form-control" placeholder="..." rows="3" maxlength="255"></textarea> 
                        <!-- <span class="glyphicon glyphicon-user form-control-feedback"></span> -->
                    </div>

                    <div class="form-group has-feedback">
                        <label for="files">File</label>
                        <input required type="file" name="upload" id="upload" class="form-control" placeholder="..." maxlength="10">
                        <!-- <span class="glyphicon glyphicon-user form-control-feedback"></span> -->
                    </div>
                    <!-- <label>* File PDF dengan size maksimal 5mb</label> -->

            </div>
            <div class="modal-footer">
                    <button class="btn btn-success" type="submit">Upload Berkas</button>
                    <button class="btn btn-default" type="reset">Reset</button>
                </form>
            </div>
        </div>
    </div>
</div>