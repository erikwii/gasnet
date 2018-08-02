<div class="container-fluid app">
	<div class="row my-3">
        <div class="col-12 col-lg-12 col-md-4">
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
        		<table class="table table-striped" id="inventaris_table">
				  <thead>
				    <tr>
				      <th scope="col">No</th>
				      <th scope="col">Kode Barang</th>
				      <th scope="col">Jenis Aset</th>
				      <th scope="col">Nama Barang</th>
				      <th scope="col">No. Inventaris</th>
				      <th scope="col">Merk/Tipe</th>
				      <th scope="col">Bahan</th>
				      <th scope="col">Tahun</th>
				      <th scope="col">Bulan</th>
				      <th scope="col">Lokasi</th>
				      <th scope="col">No. Mesin/Serial Number</th>
				      <th scope="col">Lihat Foto</th>
				    </tr>
				  </thead>
				  <tbody>
				  	<?php foreach ($inventaris as $barang): ?>
				  		<tr>
					      <th scope="row"><?php echo $barang->IDinventaris ?></th>
					      <td><?php echo $barang->kodeBarang ?></td>
					      <td><?php echo $barang->jenisAset ?></td>
					      <td><?php echo $barang->namaBarang ?></td>
					      <td class="text-primary"><?php echo $barang->noInventaris ?></td>
					      <td><?php echo $barang->merk ?></td>
					      <td><?php echo $barang->bahan ?></td>
					      <td><?php echo $barang->tahun ?></td>
					      <td><?php echo $barang->bulan ?></td>
					      <td><?php echo $barang->lokasi ?></td>
					      <td><?php echo $barang->noMesin ?></td>
					      <?php if ($barang->fileImage != null): ?>
					      	<td><a href="<?php echo base_url('assets/img/inventaris/').$barang->fileImage ?>" class="btn btn-outline-primary">Lihat Foto</a></td>
					      <?php else: ?>
					      	<td>Foto tidak tersedia</td>
					      <?php endif ?>
					    </tr>
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
	        		<h5 class="modal-title" id="exampleModalCenterTitle">Modal title</h5>
	        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          			<span aria-hidden="true">&times;</span>
	        		</button>
	      		</div>
	      		<div class="modal-body">
	      			<?php $attributes = array('class' => 'needs-validation'); ?>
	      			<?php echo form_open_multipart('home/tambah_inventaris', $attributes);?>
					  	<div class="form-row">
					    	<div class="form-group col-md-6">
					      		<label for="kodeBarang">Kode Barang</label>
					      		<input type="text" class="form-control" id="kodeBarang" name="kodeBarang" placeholder="Kode Barang" required>
					      		<div class="invalid-feedback">Anda harus memasukan kode barang</div>
					    	</div>
					    	<div class="form-group col-md-6">
					      		<label for="inputState">Jenis Aset</label>
					      		<select id="inputState" name="jenisAset" class="form-control" required>
					        		<option selected disabled>Pilih</option>
					        		<option value="Inventaris bala-bala">Inventaris bala-bala</option>
					        		<option value="Inventaris Komputer">Inventaris Komputer</option>
					      		</select>
					      		<div class="invalid-feedback">Anda harus memilih jenis aset</div>
					    	</div>
					  	</div>
					  	<div class="form-group">
					    	<label for="inputAddress">Nama Barang</label>
					    	<input type="text" class="form-control" id="IDbarang" name="IDbarang" list="barang" required />
							<datalist id="barang">
				        		<?php foreach ($item as $i): ?>
				        			<option value="<?php echo $i->namaBarang?>"><?php echo $i->IDbarang ?></option>
				        		<?php endforeach ?>
							</datalist>
					    	<div class="invalid-feedback">Anda harus memasukan nama barang</div>
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
					        		<option selected disabled>Pilih</option>
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
							    	<label id="lable_file" class="custom-file-label" style="overflow: hidden;" for="inputGroupFile01">Upload gambar</label>
							  	</div>
							</div>
					  	</div>
					  	<button type="submit" class="btn btn-primary">Tambah</button>
					</form>
	      		</div>
	    	</div>
	  	</div>
	</div>
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
				searching: true,
				buttons: [
		            {
		                extend: 'excelHtml5',
		                exportOptions: {
		                    columns: [0,1,2,3,4,5,6,7,8,9]
		                }
		            }
		        ]
			});
		}
	});
</script>
