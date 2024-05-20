-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Bulan Mei 2024 pada 07.27
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
-- Database: `db_skiu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_usaha`
--

CREATE TABLE `jenis_usaha` (
  `id_jenis` int(11) NOT NULL,
  `nama_usaha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_usaha`
--

INSERT INTO `jenis_usaha` (`id_jenis`, `nama_usaha`) VALUES
(1, 'UMKM jjk'),
(2, 'TEST jhj'),
(3, 'sdsdds');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permohonan_skiu`
--

CREATE TABLE `permohonan_skiu` (
  `id_perskiu` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_usaha` varchar(255) NOT NULL,
  `syrat_pemohon` varchar(255) NOT NULL,
  `skala_usaha` varchar(255) NOT NULL,
  `lok_usaha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `permohonan_skiu`
--

INSERT INTO `permohonan_skiu` (`id_perskiu`, `nama`, `jenis_usaha`, `syrat_pemohon`, `skala_usaha`, `lok_usaha`) VALUES
(3, 'jakoz', 'coba', 'test', 'test coba', 'coba cek'),
(4, 'nani', 'coba', 'halo', 'halo', 'boleh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pemohon`
--

CREATE TABLE `tb_pemohon` (
  `id_pemohon` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `rt` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pemohon`
--

INSERT INTO `tb_pemohon` (`id_pemohon`, `nama`, `rt`, `alamat`, `no_hp`, `email`) VALUES
(5, 'Jen', '3434', 'BANDUNG', '123', 'mydoklat@gmail.com'),
(6, 'Nani', '002', 'Kapu', '08182736353', 'yanuariuslampur@gmail.com'),
(7, 'Kakuk', '005', 'Jl. Dipatiukur 112-114 Bandung ', '082255555555', 'yanuarius@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_skiu`
--

CREATE TABLE `tb_skiu` (
  `id_skiu` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` varchar(255) NOT NULL,
  `jk` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `status` varchar(225) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nama_usaha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_skiu`
--

INSERT INTO `tb_skiu` (`id_skiu`, `nama`, `tgl_input`, `tempat_lahir`, `tgl_lahir`, `jk`, `agama`, `pekerjaan`, `status`, `nik`, `alamat`, `nama_usaha`) VALUES
(7, 'Jen', '2024-04-19', 'wdwdwd', '2024-04-17', 'Perempuan', 'Islam', 'Petani', 'Aktif', '099203820200', 'Jl. Dipatiukur 112-114 Bandung ', 'TEST'),
(8, 'Nani', '2024-04-17', 'wdwdwd', '2024-04-24', 'Perempuan', 'Katolik', 'Petani', 'Nikah', '02921838299292', 'Jl. Dipatiukur 112-114 Bandung ', 'TEST');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `username`, `password`, `jabatan`, `status`) VALUES
(12, 'nani', 'admin', '123', 'Admin', 'Aktif'),
(13, 'jen', 'jen', '123', 'Lurah', 'Aktif'),
(15, 'nani', 'nani', '123', 'Visitor', 'Aktif'),
(16, 'kakuk', 'kakuk', '123', 'Visitor', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jenis_usaha`
--
ALTER TABLE `jenis_usaha`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `permohonan_skiu`
--
ALTER TABLE `permohonan_skiu`
  ADD PRIMARY KEY (`id_perskiu`);

--
-- Indeks untuk tabel `tb_pemohon`
--
ALTER TABLE `tb_pemohon`
  ADD PRIMARY KEY (`id_pemohon`);

--
-- Indeks untuk tabel `tb_skiu`
--
ALTER TABLE `tb_skiu`
  ADD PRIMARY KEY (`id_skiu`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jenis_usaha`
--
ALTER TABLE `jenis_usaha`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `permohonan_skiu`
--
ALTER TABLE `permohonan_skiu`
  MODIFY `id_perskiu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_pemohon`
--
ALTER TABLE `tb_pemohon`
  MODIFY `id_pemohon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_skiu`
--
ALTER TABLE `tb_skiu`
  MODIFY `id_skiu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
