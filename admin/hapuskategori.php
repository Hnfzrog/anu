<?php

include '../koneksi.php';
if (isset($_GET['idk'])) {
  $delete = mysqli_query($koneksi, "DELETE FROM kategori WHERE nama_kategori = '".$_GET['idk']."'");
  echo "<script>alert('Data berhasil dihapus');window.location='index.php?halaman=kategori';</script>";
}
