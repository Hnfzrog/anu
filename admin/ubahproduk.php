<?php include "../koneksi.php";?>
<?php $id = $_GET['produk'];?>
<?php $ambil = $koneksi->query("SELECT * FROM produk LEFT JOIN kategori ON produk.id_kategori=kategori.id_kategori
where produk.id_produk=$id
"); ?>
<?php $pecah = mysqli_fetch_array($ambil); ?>
<h2>Edit Produk</h2>
<div class="row">
	<div class="col-md-8">
		<form action="" method="post" enctype="multipart/form-data">
				<input type="hidden" name=''value="<? echo $pecah['id_produk'];?>">
				<div class="form-group">
					<label>Nama</label>
					<input type="text" name="nama_produk" value="<?php echo $pecah['nama_produk'];?>" class="form-control">
				</div>
                <div class="form-group">
					<label>Harga (Rp)</label>
					<input type="number" name="harga_produk" value='<?php echo $pecah['harga_produk'];?>' class="form-control">
				</div>
				<div class="form-group">
					<label>Berat (gr)</label>
					<input type="number" name="berat_produk" value='<?php echo $pecah['berat_produk'];?>' class="form-control">
				</div>
				<div class="form-group">
					<label>Deskripsi</label>
					<textarea type="text" name="deskripsi_produk" value='<?php echo $pecah['deskripsi_produk'];?>' class="form-control" rows="6"></textarea>
				</div>
				<div class="form-group">
					<label>Foto</label>
					<div class="letak-input" style="margin-bottom: 5px;">
						<input type="file" name="foto[]" class="form-control">
					</div>
					<span class="btn btn-primary btn-tambah">
						<i class="fa fa-plus"></i>
					</span>
				</div>
				<div class="form-group">
					<label>Stok</label>
					<input type="number" name="stok_produk" value='<?php echo $pecah['stok_produk'];?>' class="form-control">
				</div>
				<td><input type="submit" value="simpan" name="proses"></td>
			</form>

		</div>
	</div>

    <?php 
    if(isset($_POST['proses'])){

        mysqli_query($koneksi, "UPDATE produk set
        nama_produk = '$_POST[nama_produk]',
        harga_produk = '$_POST[harga_produk]',
        berat_produk = '$_POST[berat_produk]',
        deskripsi_produk = '$_POST[deskripsi_produk]',
        foto_produk = '$_FILES[gambar]',
        stok_produk = '$_POST[stok_produk]' where id_produk=$_GET[produk]");

        echo "<script>alert('Data Telah Disimpan'); 
        document.location='index.php?halaman=produk'</script>";
    }
    ?>

