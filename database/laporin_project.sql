-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jun 2022 pada 15.41
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laporin_project`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `nama` varchar(50) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis_laporan` varchar(50) NOT NULL,
  `lokasi` varchar(500) NOT NULL,
  `deskripsi` varchar(2000) NOT NULL,
  `info` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`nama`, `no_telepon`, `tanggal`, `jenis_laporan`, `lokasi`, `deskripsi`, `info`) VALUES
('REZA ADITIYA NUGROHO SAPUTRO', '081391471294', '2022-06-22', 'Kecelakaan', 'Jl Kaliurang KM 10, Sleman, Yogyakarta', 'Pengendara motor tertabrak mobil di dekat toko buku', 1),
('ILHAM MUSTAQIIM', '081802695332', '2022-06-20', 'Tindak Kriminal', 'Panjatan, Wates', 'Seorang ibu dijambret oleh pria berjaket hitam di dekat pasar', 1),
('ANDAFIQI ARODA', '082198714119', '2022-06-21', 'Lainnya', 'Ringroad Utara, Sleman, Yogyakarta', 'Seekor anjing tersangkut di pohon dekat toko sembako', 1),
('Andreas Indra Wardhana', '083138194475', '2022-06-23', 'Kecelakaan', 'Jl Imogiri, Imogiri, Bantul, Yogyakarta', 'Terjadi kecelelakaan tabrakan truk dengan mobil bak terbuka', 1),
('Ricky Mario Landro', '08998718403', '2022-06-23', 'Bencana Alam', 'Kaliurang, Sleman, Yogyakarta', 'Pagi ini gunung Merapi meletus', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengelola`
--

CREATE TABLE `pengelola` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengelola`
--

INSERT INTO `pengelola` (`username`, `password`) VALUES
('admin', '12345'),
('andafiqi', 'andafiqi123'),
('ilham', 'ilham123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`no_telepon`);

--
-- Indeks untuk tabel `pengelola`
--
ALTER TABLE `pengelola`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
