<div class="container app">
	<div class="row my-3">
        <div class="col-12 col-lg-12 col-md-12">
        	<?php if (isset($_SESSION['error'])): ?>
        		<div class="alert alert-danger alert-dismissible fade show" role="alert">
				  <?php echo $_SESSION['error'] ?>
				  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
				    <span aria-hidden="true">&times;</span>
				  </button>
				</div>
				<?php unset($_SESSION['error']) ?>
        	<?php endif ?>
        	<?php if (isset($_SESSION['success'])): ?>
        		<div class="alert alert-success alert-dismissible fade show" role="alert">
				  <?php echo $_SESSION['success'] ?>
				  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
				    <span aria-hidden="true">&times;</span>
				  </button>
				</div>
				<?php unset($_SESSION['success']) ?>
        	<?php endif ?>
        	<button class="btn btn-primary float-right my-2" data-toggle="modal" data-target="#exampleModalCenter">Tambah</button>
        	<!-- <div class="float-right">
        		<form>
        			<div class="form-group">
	        			<input type="text" class="form-control" id="inventarisSearch" placeholder="Search inventaris">
	        		</div>
        		</form>
        	</div> -->
        	<div class="table-responsive">
        		<table class="table table-responsive table-striped w-100" id="inventaris_table">
				  <thead>
				    <tr>
				      <th scope="col">No</th>
				      <th scope="col">Kode Barang</th>
				      <th scope="col">Jenis Aset</th>
				      <th scope="col">Nama Barang</th>
				      <th scope="col">No. Inventaris</th>
				      <th scope="col">Harga</th>
				      <th scope="col">Merk/Tipe</th>
				      <th scope="col">No. Mesin/Serial Number</th>
				      <th scope="col">Lokasi</th>
				      <th scope="col">Bahan</th>
				      <th scope="col">Bulan</th>
				      <th scope="col">Tahun</th>
				      <th scope="col">Action</th>
				    </tr>
				  </thead>
				  <tbody>
				  	<?php $i=1; ?>
				  	<?php foreach ($inventaris as $barang): ?>
				  		<tr>
					      <th scope="row"><?php echo $i ?></th>
					      <td><?php echo $barang->kodeBarang ?></td>
					      <td><?php echo $barang->jenisAset ?></td>
					      <td><?php echo $barang->namaBarang ?></td>
					      <?php 
					      		$no = explode("/", $barang->noInventaris);
					      		$no = $no[0].'-'.$no[1].'-'.$no[2].'-'.$no[3].'.png';
					       ?>
					      <td class="text-primary"><a href="<?php echo base_url('assets/img/').$no ?>" data-toggle="tooltip" data-placement="top" data-html="true" title="Unduh QRcode <i class='fa fa-qrcode'></i>"><?php echo $barang->noInventaris ?></a></td>
					      <td><?php echo $barang->harga ?></td>
					      <td><?php echo $barang->merk ?></td>
					      <td><?php echo $barang->noMesin ?></td>
					      <td><?php echo $barang->lokasi ?></td>
					      <td><?php echo $barang->bahan ?></td>
					      <td><?php echo $barang->bulan ?></td>
					      <td><?php echo $barang->tahun ?></td>
					      <td>
					      	<div class="btn-group">
					      		<button class="btn btn-sm btn-info" onclick="lihat_inventaris(<?php echo $barang->IDinventaris ?>)">Lihat Selengkapnya</button>
					      		<button class="btn btn-sm btn-warning" onclick="edit_inventaris(<?php echo $barang->IDinventaris ?>)">Edit</button>
					      		<button class="btn btn-sm btn-danger" onclick='hapus_inventaris(<?php echo $barang->IDinventaris ?>)'>Hapus</button>
					      	</div>
					      </td>
					    </tr>
					    <?php $i++ ?>
				  	<?php endforeach ?>
				  </tbody>
				</table>
        	</div>
        </div>
    </div>
    <!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  	<div class="modal-dialog modal-dialog-centered" role="document">
	    	<div class="modal-content">
	      		<div class="modal-header">
	        		<h5 class="modal-title" id="exampleModalCenterTitle">Tambah Inventaris</h5>
	        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          			<span aria-hidden="true">&times;</span>
	        		</button>
	      		</div>
	      		<div class="modal-body">
	      			<?php $attributes = array('class' => 'needs-validation'); ?>
	      			<?php echo form_open_multipart('home/tambah_inventaris', $attributes);?>
					  	<div class="form-row">
					    	<div class="form-group col-md-4">
					      		<label for="kodeBarang">Kode Barang</label>
					      		<input type="text" class="form-control" id="kodeBarang" name="kodeBarang" placeholder="Kode Barang" required>
					      		<div class="invalid-feedback">Anda harus memasukan kode barang</div>
					    	</div>
					    	<div class="form-group col-md-8">
					      		<label for="jenisAset">Jenis Aset</label>
					      		<input type="text" id="jenisAset" name="jenisAset" class="form-control" required list="aset">
					      		<datalist id="aset">
					      			<option value="Peralatan Penunjang Operasi">Peralatan Penunjang Operasi</option>
					      			<option value="Komputer">Komputer</option>
					      			<option value="Bahan Kayu">Bahan Kayu</option>
					      			<option value="Bahan Logam">Bahan Logam</option>
					      			<option value="Alat-alat Lainnya">Alat-Alat Lainnya</option>
					      		</datalist>
					      		<div class="invalid-feedback">Anda harus memilih jenis aset</div>
					    	</div>
					  	</div>
					  	<div class="form-row">
					  		<div class="form-group col-md-7">
						    	<label for="inputAddress">Nama Barang</label>
						    	<input type="text" class="form-control" id="IDbarang" name="IDbarang" list="barang" placeholder="Nama barang" required />
						    	<?php $namaBarang = $this->home_model->get_inventaris_column('namaBarang') ?>
								<datalist id="barang">
					        		<?php foreach ($namaBarang as $n): ?>
					        			<option value="<?php echo $n->namaBarang?>"><?php echo $n->namaBarang ?></option>
					        		<?php endforeach ?>
								</datalist>
						    	<div class="invalid-feedback">Anda harus memasukan nama barang</div>
						  	</div>
						  	<div class="form-group col-md-5">
						    	<label for="harga">Harga</label>
						    	<input type="number" class="form-control" id="harga" name="hargaBarang" placeholder="Rp." required />
						    	<div class="invalid-feedback">Anda harus memasukan harga barang</div>
						  	</div>
					  	</div>
					  	<div class="form-row">
					  		<div class="form-group col-md-6">
					  			<label for="inputAddress2">Merk/Tipe</label>
					    		<input type="text" class="form-control" id="inputAddress2" name="merk" placeholder="Merk Barang" required>
					    		<div class="invalid-feedback">Anda harus memasukan Merk/Tipe Barang</div>
					  		</div>
					  		<div class="form-group col-md-6">
					  			<label for="inputAddress2">No. Mesin/Serial Number</label>
					    		<input type="text" class="form-control" id="inputAddress2" name="noMesin" placeholder="No. Mesin/Serial number" required>
					    		<div class="invalid-feedback">Anda harus memasukan No. Mesin/Serial Number</div>
					  		</div>
					  	</div>
					  	<div class="form-group">
					  		<label for="inputAddress2">Lokasi</label>
					    	<textarea class="form-control" id="inputAddress2" name="lokasi" placeholder="Masukan Lokasi" required></textarea>
					    	<div class="invalid-feedback">Anda harus menyertakan lokasi</div>
					  	</div>
					  	<div class="form-row">
					    	<div class="form-group col-md-5">
					      		<label for="inputCity">Bahan</label>
					      		<input type="text" class="form-control" id="inputCity" name="bahan" placeholder="Bahan" required>
					      		<div class="invalid-feedback">Anda harus menyertakan bahan</div>
					    	</div>
					    	<div class="form-group col-md-4">
					      		<label for="inputState">Bulan</label>
					      		<select id="inputState" name="bulan" class="form-control" required>
					        		<option selected disabled value="-">Pilih</option>
					        		<option value="1">Januari</option>
					        		<option value="2">Februari</option>
					        		<option value="3">Maret</option>
					        		<option value="4">April</option>
					        		<option value="5">Mei</option>
					        		<option value="6">Juni</option>
					        		<option value="7">Juli</option>
					        		<option value="8">Agustus</option>
					        		<option value="9">September</option>
					        		<option value="10">Oktober</option>
					        		<option value="11">November</option>
					        		<option value="12">Desember</option>
					      		</select>
					      		<div class="invalid-feedback">Anda harus memilih bulan</div>
					    	</div>
					    	<div class="form-group col-md-3">
					      		<label for="inputZip">Tahun</label>
					      		<input type="number" class="form-control" id="inputZip" name="tahun" value="<?php echo date('Y') ?>" required>
					      		<div class="invalid-feedback">Anda harus memasukan tahun</div>
					    	</div>
					    	<div id="blah" class="col-md-12 my-2" style="height: 10px;"></div>
					    	<div class="input-group mb-3">
							  	<div class="custom-file">
							    	<input type="file" name="fileImage" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01" onchange="readURL(this)">
							    	<label id="lable_file" class="custom-file-label" style="overflow: hidden;" for="inputGroupFile01">'klik' di sini untuk Upload gambar</label>
							  	</div>
							</div>
					  	</div>
					  	<button type="submit" class="btn btn-lg btn-block btn-primary">Tambah</button>
					</form>
	      		</div>
	    	</div>
	  	</div>
	</div>
	<!-- Modal -->

	<!-- Edit Modal -->
	<div class="modal fade" id="editModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  	<div class="modal-dialog modal-dialog-centered" role="document">
	    	<div class="modal-content">
	      		<div class="modal-header">
	        		<h5 class="modal-title" id="exampleModalCenterTitle">Edit Inventaris</h5>
	        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          			<span aria-hidden="true">&times;</span>
	        		</button>
	      		</div>
	      		<div class="modal-body">
	      			<?php $attributes = array('class' => 'needs-validation', 'id' => 'form'); ?>
	      			<?php echo form_open_multipart('home/edit_inventaris', $attributes);?>
						<div class="form-group d-none">
							<input type="number" name="IDinventaris">
						</div>
					  	<div class="form-row">
					    	<div class="form-group col-md-4">
					      		<label for="editkodeBarang">Kode Barang</label>
					      		<input type="text" class="form-control" id="editkodeBarang" name="editkodeBarang" placeholder="Kode Barang" required>
					      		<div class="invalid-feedback">Anda harus memasukan kode barang</div>
					    	</div>
					    	<div class="form-group col-md-8">
					      		<label for="editjenisAset">Jenis Aset</label>
					      		<input type="text" id="editjenisAset" name="editjenisAset" class="form-control" required list="aset">
					      		<datalist id="editaset">
					      			<option value="Peralatan Penunjang Operasi">Peralatan Penunjang Operasi</option>
					      			<option value="Komputer">Komputer</option>
					      			<option value="Bahan Kayu">Bahan Kayu</option>
					      			<option value="Bahan Logam">Bahan Logam</option>
					      			<option value="Alat-alat Lainnya">Alat-Alat Lainnya</option>
					      		</datalist>
					      		<div class="invalid-feedback">Anda harus memilih jenis aset</div>
					    	</div>
					  	</div>
					  	<div class="form-row">
					  		<div class="form-group col-md-7">
						    	<label for="editnamaBarang">Nama Barang</label>
						    	<input type="text" class="form-control" id="editnamaBarang" name="editnamaBarang" list="barang" required />
								<datalist id="barang">
					        		<?php foreach ($namaBarang as $n): ?>
					        			<option value="<?php echo $n->namaBarang?>"><?php echo $n->namaBarang ?></option>
					        		<?php endforeach ?>
								</datalist>
						    	<div class="invalid-feedback">Anda harus memasukan nama barang</div>
						  	</div>
						  	<div class="form-group col-md-5">
						    	<label for="editharga">Harga</label>
						    	<input type="number" class="form-control" id="editharga" name="edithargBarang" placeholder="Rp." required />
						    	<div class="invalid-feedback">Anda harus memasukan harga barang</div>
						  	</div>
					  	</div>
					  	<div class="form-row">
					  		<div class="form-group col-md-6">
					  			<label for="editmerk">Merk/Tipe</label>
					    		<input type="text" class="form-control" id="editmerk" name="editmerk" placeholder="Merk Barang" required>
					    		<div class="invalid-feedback">Anda harus memasukan Merk/Tipe Barang</div>
					  		</div>
					  		<div class="form-group col-md-6">
					  			<label for="editnoMesin">No. Mesin/Serial Number</label>
					    		<input type="text" class="form-control" id="editnoMesin" name="editnoMesin" placeholder="No. Mesin/Serial number" required>
					    		<div class="invalid-feedback">Anda harus memasukan No. Mesin/Serial Number</div>
					  		</div>
					  	</div>
					  	<div class="form-group">
					  		<label for="editlokasi">Lokasi</label>
					    	<textarea class="form-control" id="editlokasi" name="editlokasi" placeholder="Masukan Lokasi" required></textarea>
					    	<div class="invalid-feedback">Anda harus menyertakan lokasi</div>
					  	</div>
					  	<div class="form-row">
					    	<div class="form-group col-md-5">
					      		<label for="editbahan">Bahan</label>
					      		<input type="text" class="form-control" id="editbahan" name="editbahan" placeholder="Bahan" required>
					      		<div class="invalid-feedback">Anda harus menyertakan bahan</div>
					    	</div>
					    	<div class="form-group col-md-4">
					      		<label for="editbulan">Bulan</label>
					      		<select id="editbulan" name="editbulan" class="form-control">
					        		<option selected disabled value="-">Pilih</option>
					        		<option value="1">Januari</option>
					        		<option value="2">Februari</option>
					        		<option value="3">Maret</option>
					        		<option value="4">April</option>
					        		<option value="5">Mei</option>
					        		<option value="6">Juni</option>
					        		<option value="7">Juli</option>
					        		<option value="8">Agustus</option>
					        		<option value="9">September</option>
					        		<option value="10">Oktober</option>
					        		<option value="11">November</option>
					        		<option value="12">Desember</option>
					      		</select>
					      		<div class="invalid-feedback">Anda harus memilih bulan</div>
					    	</div>
					    	<div class="form-group col-md-3">
					      		<label for="edittahun">Tahun</label>
					      		<input type="number" class="form-control" id="edittahun" name="edittahun" value="<?php echo date('Y') ?>" required>
					      		<div class="invalid-feedback">Anda harus memasukan tahun</div>
					    	</div>
					    	<div id="editBlah" class="col-md-12 my-2" style="height: 10px;"></div>
					    	<div class="input-group mb-3">
							  	<div class="custom-file">
							    	<input type="file" name="editfileImage" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01" onchange="readURLedit(this)">
							    	<label id="editlable_file" class="custom-file-label" style="overflow: hidden;" for="inputGroupFile01">'klik' di sini untuk Upload gambar</label>
							    	<input type="text" name="namaFile" class="d-none">
							  	</div>
							</div>
					  	</div>
					  	<button type="submit" class="btn btn-lg btn-block btn-primary">Edit</button>
					</form>
	      		</div>
	    	</div>
	  	</div>
	</div>
	<!-- Edit Modal -->

	<!-- Lihat Modal -->
	<div class="modal fade" id="lihatModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  	<div class="modal-dialog modal-dialog-centered" role="document">
	    	<div class="modal-content">
	      		<div class="modal-header">
	        		<h5 class="modal-title" id="exampleModalCenterTitle">Data Inventaris</h5>
	        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          			<span aria-hidden="true">&times;</span>
	        		</button>
	      		</div>
	      		<div class="modal-body">
	      			<form id="lihatform">
					  	<div class="form-row">
					    	<div class="form-group col-md-4">
					      		<label for="lihatkodeBarang">Kode Barang</label>
					      		<input type="text" class="form-control" id="lihatkodeBarang" name="lihatkodeBarang" placeholder="Kode Barang" readonly>
					    	</div>
					    	<div class="form-group col-md-8">
					      		<label for="lihatjenisAset">Jenis Aset</label>
					      		<input type="text" id="lihatjenisAset" name="lihatjenisAset" class="form-control" readonly="" list="lihataset">
					      		<datalist id="lihataset">
					      			<option value="Peralatan Penunjang Operasi">Peralatan Penunjang Operasi</option>
					      			<option value="Komputer">Komputer</option>
					      			<option value="Bahan Kayu">Bahan Kayu</option>
					      			<option value="Bahan Logam">Bahan Logam</option>
					      			<option value="Alat-alat Lainnya">Alat-Alat Lainnya</option>
					      		</datalist>
					    	</div>
					  	</div>
					  	<div class="form-row">
					  		<div class="form-group col-md-7">
						    	<label for="lihatnamaBarang">Nama Barang</label>
						    	<input type="text" class="form-control" id="lihatnamaBarang" name="lihatnamaBarang" list="barang" readonly />
								<datalist id="barang">
					        		<?php foreach ($namaBarang as $n): ?>
					        			<option value="<?php echo $n->namaBarang?>"><?php echo $n->namaBarang ?></option>
					        		<?php endforeach ?>
								</datalist>
						  	</div>
						  	<div class="form-group col-md-5">
						    	<label for="lihatharga">Harga</label>
						    	<input type="number" class="form-control" id="lihatharga" name="lihathargBarang" placeholder="Rp." readonly />
						    	<div class="invalid-feedback">Anda harus memasukan harga barang</div>
						  	</div>
					  	</div>
					  	<div class="form-row">
					  		<div class="form-group col-md-6">
					  			<label for="lihatmerk">Merk/Tipe</label>
					    		<input type="text" class="form-control" id="lihatmerk" name="lihatmerk" placeholder="Merk Barang" readonly>
					  		</div>
					  		<div class="form-group col-md-6">
					  			<label for="lihatnoMesin">No. Mesin/Serial Number</label>
					    		<input type="text" class="form-control" id="lihatnoMesin" name="lihatnoMesin" placeholder="No. Mesin/Serial number" readonly>
					  		</div>
					  	</div>
					  	<div class="form-group">
					  		<label for="lihatlokasi">Lokasi</label>
					    	<textarea class="form-control" id="lihatlokasi" name="lihatlokasi" placeholder="Masukan Lokasi" readonly></textarea>
					  	</div>
					  	<div class="form-row">
					    	<div class="form-group col-md-5">
					      		<label for="lihatbahan">Bahan</label>
					      		<input type="text" class="form-control" id="lihatbahan" name="lihatbahan" placeholder="Bahan" readonly>
					    	</div>
					    	<div class="form-group col-md-4">
					      		<label for="lihatbulan">Bulan</label>
					      		<select id="lihatbulan" name="lihatbulan" class="form-control" readonly>
					        		<option selected disabled value="-">-</option>
					        		<option value="1">Januari</option>
					        		<option value="2">Februari</option>
					        		<option value="3">Maret</option>
					        		<option value="4">April</option>
					        		<option value="5">Mei</option>
					        		<option value="6">Juni</option>
					        		<option value="7">Juli</option>
					        		<option value="8">Agustus</option>
					        		<option value="9">September</option>
					        		<option value="10">Oktober</option>
					        		<option value="11">November</option>
					        		<option value="12">Desember</option>
					      		</select>
					    	</div>
					    	<div class="form-group col-md-3">
					      		<label for="lihattahun">Tahun</label>
					      		<input type="number" class="form-control" id="lihattahun" name="lihattahun" value="<?php echo date('Y') ?>" readonly>
					    	</div>
					    	<div id="foto" class="col-md-12 my-2" style="height: 10px;"></div>
					  	</div>
					</form>
	      		</div>
	    	</div>
	  	</div>
	</div>
	<!-- Lihat Modal -->
</div>
<script>
	function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah')
                    .css('background-image', 'url(' + e.target.result + ')')
                    .css('background-size', 'contain, cover')
                    .css('background-repeat', 'no-repeat')
                    .width(150)
                    .height(200);
                $('#lable_file')
                	.text('Gambar dipilih');
            };

            reader.readAsDataURL(input.files[0]);
        }
    }

    function readURLedit(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#editBlah')
                    .css('background-image', 'url(' + e.target.result + ')')
                    .css('background-size', 'contain, cover')
                    .css('background-repeat', 'no-repeat')
                    .width(150)
                    .height(200);
                $('#editlable_file')
                	.text('Gambar dipilih');
            };

            reader.readAsDataURL(input.files[0]);
        }
    }

	$(function () {
		$('[data-toggle="tooltip"]').tooltip()
	})

    function edit_inventaris(id){
        $('#form')[0].reset();

        $.ajax({
            url : "<?php echo site_url('home/data_inventaris/')?>/" + id,
            type: "GET",
            dataType: "JSON",
            success: function(data)
            {

                $('[name="IDinventaris"]').val(data[0].IDinventaris);
                $('[name="editkodeBarang"]').val(data[0].kodeBarang);
                $('[name="editjenisAset"]').val(data[0].jenisAset);
                $('[name="editnamaBarang"]').val(data[0].namaBarang);
                $('[name="edithargBarang"]').val(data[0].harga);
                $('[name="editmerk"]').val(data[0].merk);
                $('[name="editnoMesin"]').val(data[0].noMesin);
                $('[name="editlokasi"]').val(data[0].lokasi);
                $('[name="editbahan"]').val(data[0].bahan);
                $('[name="editbulan"]').val(data[0].bulan);
                $('[name="edittahun"]').val(data[0].tahun);
                $('[name="namaFile"]').val(data[0].fileImage);
                if (data[0].fileImage != null && data[0].fileImage != "") {
                	$('#editBlah')
	                	.css('background-image', 'url(<?php echo base_url('assets/img/inventaris/') ?>' + data[0].fileImage + ')')
	                    .css('background-size', 'contain, cover')
	                    .css('background-repeat', 'no-repeat')
	                    .height(200);
                }else if(data[0].fileImage == null || data[0].fileImage == ""){
                	$('#editBlah')
	                    .height(10);
                }

                $('#editModalCenter').modal('show');

            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                console.log('failed get data');
            }
        });
    }

    function lihat_inventaris(id){
        $('#lihatform')[0].reset();

        $.ajax({
            url : "<?php echo site_url('home/data_inventaris/')?>/" + id,
            type: "GET",
            dataType: "JSON",
            success: function(data)
            {
                $('[name="lihatkodeBarang"]').val(data[0].kodeBarang);
                $('[name="lihatjenisAset"]').val(data[0].jenisAset);
                $('[name="lihatnamaBarang"]').val(data[0].namaBarang);
                $('[name="lihathargBarang"]').val(data[0].harga);
                $('[name="lihatmerk"]').val(data[0].merk);
                $('[name="lihatnoMesin"]').val(data[0].noMesin);
                $('[name="lihatlokasi"]').val(data[0].lokasi);
                $('[name="lihatbahan"]').val(data[0].bahan);
                $('[name="lihatbulan"]').val(data[0].bulan);
                $('[name="lihattahun"]').val(data[0].tahun);
                if (data[0].fileImage != null && data[0].fileImage != "") {
                	$('#foto')
	                	.css('background-image', 'url(<?php echo base_url('assets/img/inventaris/') ?>' + data[0].fileImage + ')')
	                    .css('background-size', 'contain, cover')
	                    .css('background-repeat', 'no-repeat')
	                    .height(200);
                }else if(data[0].fileImage == null || data[0].fileImage == ""){
                	$('#foto')
	                    .height(10);
                }

                $('#lihatModalCenter').modal('show');

            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                console.log('failed get data');
            }
        });
    }

    function hapus_inventaris(id) {
    	swal({
		  	title: "Apa Anda Yakin?",
		  	text: "Saat menghapusnya Anda tidak akan bisa mengembalikannya seperti semula!",
		  	icon: "warning",
		  	buttons: true,
		  	dangerMode: true,
		})
		.then((willDelete) => {
		  	if (willDelete) {
		    	window.location = '<?php echo base_url() ?>home/hapus_inventaris/'+id;
		  	} else {
		    	swal("Data Anda berhasil diamankan!");
		  	}
		});
    }

	// Example starter JavaScript for disabling form submissions if there are invalid fields
	(function() {
	  'use strict';
	  window.addEventListener('load', function() {
	    // Fetch all the forms we want to apply custom Bootstrap validation styles to
	    var forms = document.getElementsByClassName('needs-validation');
	    // Loop over them and prevent submission
	    var validation = Array.prototype.filter.call(forms, function(form) {
	      form.addEventListener('submit', function(event) {
	        if (form.checkValidity() === false) {
	          event.preventDefault();
	          event.stopPropagation();
	        }
	        form.classList.add('was-validated');
	      }, false);
	    });
	  }, false);
	})();
</script>

<script>
	$(document).ready(function(){
		if(!$("table#inventaris_table tr td").hasClass('null')) {
			var preRegTable = $('#inventaris_table').DataTable({
				info: false,
				dom: '<"top"B>flt<"bottom"p><"clear">',
				oLanguage: {sLengthMenu: "_MENU_"},
				lengthMenu: [[5, 10, 25, 50, -1], ["5 Rows","10 Rows", "25 Rows", "50 Rows", "All"]],
				order: [[0, "asc"]],
				"columnDefs": [
		            {
		                "targets": [ 5 ],
		                "visible": false
		            },
		            {
		                "targets": [ 6 ],
		                "visible": false
		            },
		            {
		                "targets": [ 7 ],
		                "visible": false
		            },
		            {
		                "targets": [ 8 ],
		                "visible": false
		            },
		            {
		                "targets": [ 9 ],
		                "visible": false
		            },
		            {
		                "targets": [ 10 ],
		                "visible": false
		            },
		            {
		                "targets": [ 11 ],
		                "visible": false
		            }
		        ],
				buttons: [
		            {
		                extend: 'excelHtml5',
		                exportOptions: {
		                    columns: [0,1,2,3,5,4,6,7,8,9,10,11]
		                }
		            }
		        ]
			});
		}
	});
</script>
