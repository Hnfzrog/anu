
<?php
$id = $_GET['id_kategori'];
$data = mysqli_query($koneksi,"SELECT * FROM kategori WHERE id_kategori=$id");
$value = mysqli_fetch_array($data)
?>

<h2>Edit Kategori</h2>
<div class="row">
	<div class="col-md-8">
		<form action="" method="post" enctype="multipart/form-data">
				<input type="hidden" value="<? echo $value['id_kategori'];?>">
				<div class="form-group">
					<label>Nama</label>
					<input type="text" name="nama_kategori" value="<?php echo $value['nama_kategori'];?>" class="form-control">
				</div>
				<button name="submit" class="btn btn-primary">Simpan</button>
			</form>
			
		</div>
	</div>
	<?php  
if(isset($_POST["submit"])){
	mysqli_query($koneksi,"UPDATE kategori set
	nama_kategori ='$_POST[nama_kategori]' where id_kategori='$_GET[id_kategori]'");

	echo "<script>alert('Data berhasil diubah');window.location='index.php?halaman=kategori';</script>";
	
}
?>