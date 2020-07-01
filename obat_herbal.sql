-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jul 2020 pada 01.52
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obat_herbal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_tumbuhan`
--

CREATE TABLE `jenis_tumbuhan` (
  `id_tumbuhan` int(10) NOT NULL,
  `nama_lokal` varchar(20) NOT NULL,
  `nama_indonesia` varchar(20) NOT NULL,
  `nama_ilmiah` varchar(20) NOT NULL,
  `kegunaan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_tumbuhan`
--

INSERT INTO `jenis_tumbuhan` (`id_tumbuhan`, `nama_lokal`, `nama_indonesia`, `nama_ilmiah`, `kegunaan`) VALUES
(1, 'Bawang Hutan ', 'Bawang Dayak', 'Iridaceae', 'Tekanan darah tinggi'),
(2, 'alang-alang', 'ilalang', 'imperata cylindrica', 'panas dalam, muntah darah'),
(3, 'Cempedak', 'Cempedak', 'Artocarpus integer ', 'Sakit pada gusi '),
(4, 'Daun Sapu', 'Ketul', 'Bidens chinensis ', 'Bisul '),
(5, 'Daun Ubi ', 'Daun Singkong ', 'Manihot escuenta ', 'Demam, Alergi '),
(6, 'Durian', 'Durian', 'Durio zibethinus ', 'Sembelit, memperlancar haid '),
(7, 'Kelapa', 'Kelapa', 'Cocos nucifera', 'Gerumut '),
(8, 'Kembang Sepatu ', 'Kembang Sepatu ', 'Hibiscus rosasinensi', 'Demam'),
(9, 'Pepaya', 'Pepaya', 'Carica papaya ', 'Malaria, tekanan darah tinggi '),
(10, 'Putri Malu ', 'Putri Malu ', 'Mimosa pudica ', 'Sakit gigi '),
(11, 'Sireh', 'Sirih', 'Piper batle ', 'Sakit kepala, Bau mulut, Memar'),
(12, 'Rumput Hiring ', 'Rumput Hiring ', 'Scleria laevis Willd', 'Maag, Nyeri saat haid '),
(13, 'Nangka Belanda ', 'Sirsak', 'Annona muricata ', 'Darah tinggi'),
(14, 'Sarang Semut ', 'Sarang Semut ', 'Myrmecodia tuberose ', 'Penambah stamina '),
(15, 'Langsat', 'Langsat', 'Lansium domesticum ', 'Demam '),
(16, 'Jambu Monyet ', 'Jambu Monyet ', 'Bellucia pentamera', 'Sakit maag '),
(17, 'Resam', 'Resam', 'Gleichenia linearis ', 'Luka lecet '),
(18, 'Ria\'', 'Jahe', 'Zingiber officinal', 'Rematik, Batuk '),
(19, 'Sireh Hutan', 'Sireh Merah', 'Piper porphyllum', 'Keputihan'),
(20, 'Cocor Bebek', 'Cocor Bebek', 'Kalanchoa pinnata', 'Penurun panas '),
(21, 'Sugi Merah', 'Macaranga trichocarp', 'Sugi Merah', 'Luka, Sakit perut ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `pass_user` varchar(20) NOT NULL,
  `email_user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jenis_tumbuhan`
--
ALTER TABLE `jenis_tumbuhan`
  ADD PRIMARY KEY (`id_tumbuhan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jenis_tumbuhan`
--
ALTER TABLE `jenis_tumbuhan`
  MODIFY `id_tumbuhan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
