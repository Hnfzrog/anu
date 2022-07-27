-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jul 2022 pada 14.01
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokoonline`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'admin', 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(12, 'Kategori A'),
(13, 'Kategori B'),
(14, 'Kategori C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `nama_kota`, `tarif`) VALUES
(1, 'Demak', 20000),
(2, 'Cirebon', 30000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telepon_pelanggan` varchar(100) NOT NULL,
  `alamat_pelanggan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telepon_pelanggan`, `alamat_pelanggan`) VALUES
(1, 'doddy@gmail.com', 'doddy', 'Doddy Setiawan', '08888123123', ''),
(2, 'erik@gmail.com', 'erik', 'Erik Candra', '0888111111', ''),
(3, 'yudi@contoh.com', '1234', 'Yudi Saputra', '0746356643', 'Jogja'),
(4, 'doni@contoh.com', '1234', 'Doni', '0761888888', 'Semarang'),
(5, 'erwin@contoh.com', '1234', 'Erwin', '088867553', 'Demak'),
(6, 'coba@gmail.com', 'cobacoba', 'coba', '08810287313', 'coba'),
(7, 'tellopendem.45@gmail.com', 'CahGamers24', 'Ramesty', '08831287632', 'Magelang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `bukti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pembelian`, `nama`, `bank`, `jumlah`, `tanggal`, `bukti`) VALUES
(4, 11, 'Erik', 'Mandiri', 2020000, '2020-08-05', '20200805165815tugas3.png'),
(5, 13, 'Erik', 'Mandiri', 6020000, '2020-08-08', '20200808173932punya-putri.png'),
(6, 18, 'Doni', 'Mandiri', 6044000, '2020-09-15', '20200915032134database.png'),
(7, 19, 'Erwin', 'Mandiri', 3024000, '2020-09-15', '20200915045855database.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `alamat_pengiriman` text NOT NULL,
  `status_pembelian` varchar(100) NOT NULL DEFAULT 'pending',
  `resi_pengiriman` varchar(50) NOT NULL,
  `totalberat` int(11) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `distrik` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `kodepos` varchar(255) NOT NULL,
  `ekspedisi` varchar(255) NOT NULL,
  `paket` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `estimasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `tanggal_pembelian`, `total_pembelian`, `alamat_pengiriman`, `status_pembelian`, `resi_pengiriman`, `totalberat`, `provinsi`, `distrik`, `tipe`, `kodepos`, `ekspedisi`, `paket`, `ongkir`, `estimasi`) VALUES
(1, 1, '2020-07-25', 1500000, '', 'pending', '', 0, '', '', '', '', '', '', 0, ''),
(2, 1, '2020-07-26', 500000, '', 'pending', '', 0, '', '', '', '', '', '', 0, ''),
(6, 1, '2020-07-29', 2520000, '', 'pending', '', 0, '', '', '', '', '', '', 0, ''),
(7, 1, '2020-07-29', 2520000, '', 'pending', '', 0, '', '', '', '', '', '', 0, ''),
(8, 1, '2020-07-29', 2530000, '', 'pending', '', 0, '', '', '', '', '', '', 0, ''),
(9, 2, '2020-08-01', 1520000, '', 'pending', '', 0, '', '', '', '', '', '', 0, ''),
(10, 2, '2020-08-01', 1520000, '', 'pending', '', 0, '', '', '', '', '', '', 0, ''),
(11, 2, '2020-08-01', 2020000, '', 'barang dikirim', 'abc123', 0, '', '', '', '', '', '', 0, ''),
(12, 2, '2020-08-01', 2020000, 'jl. Serayu kode pos: 5611122', 'pending', '', 0, '', '', '', '', '', '', 0, ''),
(13, 2, '2020-08-08', 6020000, 'Waru ', 'sudah kirim pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(16, 3, '2020-08-15', 8030000, 'Jl. Sultan, Cirebon', 'pending', '', 0, '', '', '', '', '', '', 0, ''),
(17, 3, '2020-09-13', 6024000, 'Jl. Hastina 2 Wedomartani Sleman', 'pending', '', 4000, 'DI Yogyakarta', 'Sleman', 'Kabupaten', '55513', 'jne', 'CTC', 24000, '1-2'),
(18, 4, '2020-09-15', 6044000, 'jl. Pemuda 287 Semarang', 'barang dikirim', 'smg000343', 4000, 'Jawa Tengah', 'Semarang', 'Kota', '50135', 'jne', 'REG', 44000, '2-3'),
(19, 5, '2020-09-15', 3024000, 'jl. Sedayu no 14 Demak', 'barang dikirim', 'Dmk0034345', 2000, 'Jawa Tengah', 'Demak', 'Kabupaten', '59519', 'jne', 'OKE', 24000, '6-7'),
(20, 1, '2022-07-19', 500000, '', 'pending', '', 1000, '', '', '', '', '', '', 0, ''),
(21, 1, '2022-07-19', 3000000, '', 'pending', '', 2000, '', '', '', '', '', '', 0, ''),
(22, 7, '2022-07-22', 1538000, '', 'pending', '', 1000, 'Kepulauan Riau', 'Batam', 'Kota', '29413', 'pos', 'Paket Kilat Khusus', 38000, '4 HARI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `subberat` int(11) NOT NULL,
  `subharga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`, `nama`, `harga`, `berat`, `subberat`, `subharga`) VALUES
(1, 1, 1, 1, '', 0, 0, 0, 0),
(2, 1, 2, 1, '', 0, 0, 0, 0),
(3, 7, 1, 2, '', 0, 0, 0, 0),
(4, 7, 2, 1, '', 0, 0, 0, 0),
(5, 8, 1, 2, '', 0, 0, 0, 0),
(6, 8, 2, 1, '', 0, 0, 0, 0),
(7, 9, 1, 1, '', 0, 0, 0, 0),
(8, 9, 2, 1, '', 0, 0, 0, 0),
(9, 10, 1, 1, 'Laptop Asus xix', 1000000, 1000, 1000, 1000000),
(10, 10, 2, 1, 'Laptop Acer 212', 500000, 1000, 1000, 500000),
(11, 11, 1, 1, 'Laptop Asus xix', 1500000, 1000, 1000, 1500000),
(12, 11, 2, 1, 'Laptop Acer 212', 500000, 1000, 1000, 500000),
(13, 0, 1, 1, 'Laptop Asus xix', 1500000, 1000, 1000, 1500000),
(14, 0, 2, 1, 'Laptop Acer 212', 500000, 1000, 1000, 500000),
(15, 12, 1, 1, 'Laptop Asus xix', 1500000, 1000, 1000, 1500000),
(16, 12, 2, 1, 'Laptop Acer 212', 500000, 1000, 1000, 500000),
(17, 13, 2, 2, 'Laptop Acer 212', 500000, 1000, 2000, 1000000),
(18, 13, 3, 2, 'Laptop macbook 212', 2500000, 1200, 2400, 5000000),
(23, 16, 3, 2, 'Laptop macbook 212', 2500000, 1200, 2400, 5000000),
(24, 16, 4, 1, 'Laptop Pro', 3000000, 2000, 2000, 3000000),
(25, 17, 4, 2, 'Laptop Pro', 3000000, 2000, 4000, 6000000),
(26, 18, 4, 2, 'Laptop Pro', 3000000, 2000, 4000, 6000000),
(27, 19, 1, 2, 'Laptop Asus xix', 1500000, 1000, 2000, 3000000),
(28, 20, 2, 1, 'Laptop Acer 212', 500000, 1000, 1000, 500000),
(29, 21, 4, 1, 'Laptop Pro', 3000000, 2000, 2000, 3000000),
(30, 22, 1, 1, 'Laptop Asus xix', 1500000, 1000, 1000, 1500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `stok_produk` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `harga_produk`, `berat_produk`, `foto_produk`, `deskripsi_produk`, `stok_produk`) VALUES
(1, 1, 'Laptop Asus xix', 1500000, 1000, 'kari-shea-1SAnrIxw5OY-unsplash.jpg', 'Ini asus bagus', 2),
(2, 1, 'Laptop Acer 212', 500000, 1000, 'sora-sagano-WFSap6CIXuw-unsplash (1).jpg', 'Ini Acer bagus', 2),
(3, 2, 'Laptop macbook 212', 2500000, 1200, 'ben-kolde-t9DooibgMEk-unsplash.jpg', 'Ini macbook bagus bergaransi', 3),
(4, 2, 'Laptop Pro', 3000000, 2000, 'kitai-jogia-zhvaeh-R9rA-unsplash.jpg', 'Laptop pro', 2),
(5, 1, 'ASD edited', 500000, 50, 'p5290175.jpg', '                    asdasd    asd            ', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_foto`
--

CREATE TABLE `produk_foto` (
  `id_produk_foto` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_produk_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk_foto`
--

INSERT INTO `produk_foto` (`id_produk_foto`, `id_produk`, `nama_produk_foto`) VALUES
(2, 8, 'vinicius-amnx-amano-fdiXdOdYtLE-unsplash.jpg'),
(3, 8, 'sincerely-media-CXYPfveiuis-unsplash.jpg'),
(5, 8, '20200905085618sincerely-media-CXYPfveiuis-unsplash.jpg'),
(6, 6, 'sincerely-media-CXYPfveiuis-unsplash.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `produk_foto`
--
ALTER TABLE `produk_foto`
  ADD PRIMARY KEY (`id_produk_foto`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `produk_foto`
--
ALTER TABLE `produk_foto`
  MODIFY `id_produk_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
