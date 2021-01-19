-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jan 2021 pada 20.50
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bot`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `questions` varchar(300) NOT NULL,
  `replies` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `chatbot`
--

INSERT INTO `chatbot` (`id`, `questions`, `replies`) VALUES
(1, 'halo|helo|hallo', 'Halo! Apakah kabar baik <br>disana? Nusantara dapat memberikan informasi <br>dan juga menjawab pertanyaan – pertanyaan yang anda miliki seputar produk ataupun jasa yang kami berikan. Apakah ada yang bisa di bantu? <br>(Ya/Tidak)'),
(2, 'Tidak|tidak', 'Terimakasih telah mengunjungi chatbot Nusantara, silahkan kembali lagi apalagi anda memiliki pertanyaan seputar Nusantara. Semoga harimu menyenangkan!'),
(3, 'ya|iya', 'Silahkan pilih topik pembahasannya! <br>(Apa itu Nusantara?/ Jasa apa sajakah yang disediakan oleh Nusantara?/ bagaimana menjadi member Nusantara?/ keuntungan menggunakan Nusantara?/ bagaimana cara akses Nusantara?/ Apakah Nusantara telah diakui oleh negara (legal)?/Pertanyaan lainnya/atau <br>anda sudah puas dengan informasi yang kami berikan)'),
(4, 'Apa itu Nusantara?', 'Nusantara adalah <br>sebuah platform resmi e-Government Indonesia dalam bentuk website yang dapat diakses dengan mudah oleh semua kalangan untuk melakukan transaksi legal, pembayaran pajak, pembuatan NPWP, pembuatan Paspor, dan lainnya tanpa harus mendatangi kantor cabang offline yang tersedia. Selain itu, transaksi menjadi lebih mudah dan nyaman tanpa adanya birokrasi yang berbelit – belit dan tanpa biaya administrasi yang banyak, pun receipt/bill/hasil dari segala transaksi dapat diakses melalui akun member Nusantara dan juga akan dikirimkan ke email pengguna sebagai bukti transaksi.'),
(5, 'Jasa apa sajakah yang disediakan oleh Nusantara?', 'Jasa yang disediakan oleh Nusantara adalah sebagai berikut: \r\n<br><br>1.Penduduk (G2C: Government to Citizen)\r\nPenyampaian layanan publik dan informasi satu arah dari pemerintah untuk penduduknya, yang memungkinkan pertukaran informasi antara pemerintah dan penduduk. Hal – hal yang dicakup oleh G2C adalah Pajak Online, Layanan Imigrasi, Layanan Kesehatan, Beasiswa, Dokumen Pribadi (Aplikasi Paspor, Akte Kelahiran, Akte Perkawinan, dll).\r\n<br><br>2.Bisnis (G2B: Government to Business)\r\nTransaksi – transaksi elektronik dimana pemerintah menyediakan berbagai informasi yang dibutuhkan bagi kalangan bisnis untuk bertransaksi, seperti pemasaran barang dan jasa ke pemerintah guna meningkatkan proses bisnis dan manajemen data elektronik. G2B mencakup Pajak Perseroan, Hak Paten Merk Dagang, Pendaftaran Perusahaan, PP, Pelelangan, dll.\r\n<br><br>3.Pemerintah Luar Negeri (G2G: Government to Government)\r\nMemungkinkan adanya pertukaran informasi antar Lembaga kepemerintahan secara online, sebagai contohny adalah Konsultasi Online, Meeting, Konferensi, dll. \r\nSeperti halnya yang kita rasakan selama pandemi yang diakibatkan oleh Covid-19, G2G akan sangat berpengaruh kegunaannya.\r\n<br><br>4.Pekerja (G2E: Government to Employee)\r\nTipe hubungan antara pemerintah dan pekerjanya (instansi – instansi yang bekerja di bawahnya) yang ditujukan untuk meningkatkan kinerja dan kesejahteraan para pekerja.\r\n'),
(6, 'bagaimana menjadi member Nusantara?', 'Setiap penduduk <br>Indonesia yang telah memiliki e-KTP merupakan member Nusantara, namun sebelumnya pengguna harus mendaftar melalui website resti Nusa-antara.id untuk verifikasi dan mendapatkan kode member dan password (nantinya password dapat diubah oleh pengguna setelah aktifasi)'),
(7, 'keuntungan menggunakan Nusantara?', 'Keuntungan yang paling besar manfaatnya yang dimiliki oleh Nusantara adalah dapat diakses di mana saja dan kapan saja, praktis, tidak perlu berulang kali membayar biaya admin, dan segala transaksi disimpan secara digital guna menanggulangi masalah hilangnya berkas.'),
(8, 'bagaimana cara akses Nusantara?', 'pengguna yang telah aktifasi member dapat langsung mengakses <br>Nusantara melalui <br>website Nusa-antara.id'),
(9, 'Apakah Nusantara telah diakui oleh negara (legal)?', 'ya, tentu saja karena Nusantara adalah bagian dari kepemerintahan negara Indonesia.'),
(11, 'saya sudah puas|saya puas|saya cukup puas|sata sangat puas|cukup puas|sangat puas|puas', 'Apakah penjelasan diatas sudah membantu mengurangi keraguan anda? <br>(sangat membantu/masih kurang)'),
(12, 'sangat membantu|membantu|cukup membantu|iya sangat membantu', 'Terimakasih telah mengunjungi chatbot Nusantara, silahkan kembali lagi apabila anda memiliki pertanyaan seputar Nusantara. Semoga harimu <br>menyenangkan!'),
(13, 'masih kurang|kurang', 'Silahkan mengunjungi website resmi Nusantara di Nusa-antara.id untuk informasi lebih lanjut dengan menghubungi kami pada kontak yang telah disediakan atau anda dapat chat CS kami melalui page facebook di Nusantara.help');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
