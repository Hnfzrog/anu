<h2>Tambah Kategori</h2>
<div class="row">
	<div class="col-md-8">
		<form action="" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label>Nama</label>
					<input type="text" name="nama" class="form-control">
				</div>
				<button name="submit" class="btn btn-primary">Simpan</button>
			</form>
		</div>
	</div>
	<?php  
if(isset($_POST["submit"])){
	$nama = ucwords($_POST['nama']);
	// menyimpan ke database
	$result = mysqli_query($koneksi,"INSERT INTO `kategori`(`nama_kategori`) VALUES ('".$nama."')");
	if($result){
		echo "<script>alert('Data berhasil ditambahkan');window.location='index.php?halaman=kategori';</script>";
	}
}
?>
