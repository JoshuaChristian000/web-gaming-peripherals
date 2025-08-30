-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2023 at 04:10 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `20222_wp2_412017001`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'superadmin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `sinopsis` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `date` date NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `sinopsis`, `isi`, `date`, `gambar`) VALUES
(1, 'Logitech Bawa Keyboard Mekanik Bergaya Mesin Tik ke Indonesia\r\n\r\n', 'Pop Keys dirilis bersama Pop Mouse dan Logitech Desk Mat, ketiganya diposisikan sebagai produk yang diklaim bisa memunculkan karakter, kesenangan, dan ekspresi diri ke dalam rutinitas kerja penggunanya.\r\n\r\n', 'Pop Keys dirilis bersama Pop Mouse dan Logitech Desk Mat, ketiganya diposisikan sebagai produk yang diklaim bisa memunculkan karakter, kesenangan, dan ekspresi diri ke dalam rutinitas kerja penggunanya.\r\n\r\nPop Keys hadir dengan delapan keycaps emoji yang dapat ditukar, empat buah tersedia di dalam paket penjualan dan empat buah lagi terpasang di keyboard itu sendiri. Tombol emoji dapat dengan mudah disesuaikan dengan emoji favorit Anda atau shortcuts lainnya dengan menggunakan Logitech Options - tersedia dan dapat diunduh melalui PC atau Mac.\r\n\r\nPop Mouse juga dilengkapi fitur tombol tengah untuk memunculkan menu emoji dan juga dapat disesuaikan.\r\n', '2021-12-27', 'Logitech_PopKeys_dan_PopMouse.jpg'),
(2, 'Logitech G Luncurkan Headset Gaming G335 untuk Gamer Remaja dan Wanita', 'Logitech G baru saja memperkenalkan headset gaming terbaru mereka yang berdesain ramping, cantik, dan ringan, bernama Logitech G335 Wired Gaming Headset.\r\n\r\nTersedia dalam dua warna, yaitu hitam dan putih, Logitech menyasar gamer muda, mulai dari usia ana', 'Logitech G baru saja memperkenalkan headset gaming terbaru mereka yang berdesain ramping, cantik, dan ringan, bernama Logitech G335 Wired Gaming Headset.\r\n\r\nTersedia dalam dua warna, yaitu hitam dan putih, Logitech menyasar gamer muda, mulai dari usia anak-anak hingga remaja, serta para pemain game wanita untuk headset gaming baru ini.\r\n\r\n“Hadirnya Logitech G335 di Indonesia menjadi solusi bagi para gamer berusia muda untuk mendapatkan headset gaming yang pas,” ujar Ismail Maksum, Country Manager dari Logitech Indonesia, dalam keterangan resminya, Jumat (2/7/2021).\r\n\r\nDia menambahkan, \"Logitech G335 memiliki desain yang cantik, fitur yang mumpuni, serta bobot yang sangat ringan, untuk memastikan pengalaman bermain yang super nyaman.\"\r\n\r\nDesain Logitech G335\r\nLebih lanjut, dalam hal desain Logitech G335 ini sangat mirip dengan headset gaming nirkabel G733.\r\n\r\nBedanya, perusahaan membuat headset ini agar memiliki desain lebih ramping untuk ukuran kepala yang lebih kecil serta menghadirkan kenyamanan yang lebih baik.\r\n\r\nG335 memiliki desain suspensi headband yang dapat dibalik dan disesuaikan, serta bahan bantalan telinga memory-foam, yang dibungkus dengan kain lembut untuk menjaga kepala tetap nyaman meskipun bermain dalam waktu lama.\r\n\r\nHarga dan Ketersediaan\r\nSeperti headset lainnya, Logitech G335 Wired Gaming Headset ini berkemampuan “plug and play.” Artinya, kamu hanya perlu colok headset ke hampir semua device (PC desktop, laptop, handphone, tablet, dll) melalui jack audio 3,5 mm.\r\n\r\nDengan driver neodymium 40 mm, Logitech mengklaim G335 mampu menghadirkan suara yang crispy dan jernih, membuat permainan game menjadi lebih hidup dan imersif.\r\n\r\nSoal harga, Logitech G335 Wired Gaming Headset akan dijual seharga Rp 839,000, dan akan tersedia di Indonesia dalam warna hitam dan putih mulai Juli 2021.', '2021-12-27', 'logitech-01.jpg'),
(3, 'Headset Gaming Nirkabel Terbaru dari Logitech G Siap Hadir di Indonesia', 'Logitech baru saja meluncurkan headset gaming nirkabel pertamanya di Indonesia yang masuk dalam brand Logitech G. Headset bernama Logitech G733 Lightspeed Wireless Gaming Headset ini didesain secara unik untuk menyesuaikan kebutuhan gaya hidup para gamer.', 'Logitech baru saja meluncurkan headset gaming nirkabel pertamanya di Indonesia yang masuk dalam brand Logitech G. Headset bernama Logitech G733 Lightspeed Wireless Gaming Headset ini didesain secara unik untuk menyesuaikan kebutuhan gaya hidup para gamer.\r\n\r\nG733 Lightspeed ini hadir dengan beragam fitur dan disebut mampu membawa pengalaman bermain gim yang lebih nyata. Menurut Country Manager Logitech Indonesia, Ismail Maksum, kehadiran produk ini tidak lepas kebutuhan gamer akan piranti berkualitas tinggi dan memiliki teknologi terkini.\r\n\r\n\"Berangkat dari hal tersebut, Logitech G merancang G733 LIGHTSPEED Wireless Gaming Headset ini, untuk memperlengkapi para gamer sehingga mereka bisa bermain untuk menang dengan cara yang menyenangkan,” tuturnya dalam keterangan resmi yang diterima, Kamis (27/8/2020).\r\n\r\nSesuai namanya, headset ini hadir dengan teknologi Lightspeed dari Logitech G. Lightspeed sendiri adalah solusi nirkabel end-to-end yang menghadirkan low latency dengan kinerja yang sangat andal.\r\n\r\nHeadset ini memiliki daya jangkau hingga 20 meter, sehingga pengguna dapat bergerak bebas dan tidak perlu khawatir dengan delay yang mengganggu jalannya permainan. Daya tahan headphone ini juga terbilang mumpuni, yakni hingga 29 jam.\r\n\r\nSementara untuk bobot, G733 Lightspeed memiliki berat hanya 278 gram. Hadir dengan dua pilihan warna, yakni black dan white, headset ini juga dibekali dengan bahan memory foam yang lembut dan nyaman digunakan dalam waktu lama.\r\n\r\n“Logitech G mendesain headset ternyaman yang pernah ada. Headset ini dikhususkan untuk para gamer yang mencari kenyamanan, fleksibilitas dan teknologi tinggi dalam satu perangkat,” ujar Cluster Category Manager dari Logitech G Indonesia, Nicole Constance.\r\n\r\nSebagai fitur pendukung, headset ini memiliki detachable mic dengan teknologi Blue Vo!ce untuk menjamin pengguna dapat berkomunikasi lebih jelas. Headset ini turut dibeklai dengan PRO-G Drivers dan DTS Headphone X 2.0 Surround Sound.\r\n\r\nLogitech G733 ini dibanderol dengan harga Rp 2.399.000. Headset yang dapat digunakan dalam beberapa platform, seperti PC, mobile, PS4, Xbox, hingga Nintendo Switch ini akan hadir di Indonesia mulai 7 September 2020.', '2021-12-27', 'g733_2.jpg'),
(4, 'G2 Perpanjang Kemitraan dengan Logitech G', 'G2 eSports mengumumkan telah memperpanjang kemitraan dengan Logitech G, submerek Logitech di bidang teknologi dan peralatan gaming.\r\n\r\nLangkah ini merupakan kelanjutan dari kemitraan yang terlah terjalin selama tiga tahun. Cakupan kemitraan baru ini diseb', 'G2 eSports mengumumkan telah memperpanjang kemitraan dengan Logitech G, submerek Logitech di bidang teknologi dan peralatan gaming.\r\n\r\nLangkah ini merupakan kelanjutan dari kemitraan yang terlah terjalin selama tiga tahun. Cakupan kemitraan baru ini disebut akan mencakup semua bagian organisasi, termasuk tim eSports, gaming influencers, produk digital, dan pembuatan konten.\r\n\r\n\"Kami sangat senang memperluas kemitraan kami dengan Logitech G untuk menyediakan aktivasi dan produk yang menghibur bagi para #G2ARMY dan pemain kami,\" ujar Carlos ‘ocelote’ Rodriguez, CEO dari G2 eSports dalam keterangan terulis.\r\n\r\n\"2020 akan menjadi tahun yang dikenang untuk G2 eSports dan kami sangat antusias untuk terus menang bersama Logitech G,\" tutur Carlos lebih lanjut.\r\n\r\nUntuk digarisbawahi, pemain eSports G2 akan terus dilibatkan dalam pengembangan teknologi baru dari jajaran seri Logitech G PRO. Seri ini digunakan oleh banyak pemain profesional. G2 bergabung dengan daftar tim elit eSports Logitech G pada 2017. Sejak saat itu hubungan di antara keduanya telah berkembang menjadi kemitraan sukses.\r\n\r\n\"Komitmen dan visi G2 terbukti dalam langkah yang mereka lakukan sebagai tim selama tiga tahun terakhir,\" ujar Ujesh Desai, Vice President dan General Manager dari Logitech G.\r\n\r\n\"Dan pekerjaan yang kita lakukan bersama akan terus menginformasikan produk masa depan kita, dan diharapkan membantu membentuk pertumbuhan, pengembangan, serta kesejahteraan seluruh industri eSports,\" tutur Ujesh.', '2021-12-27', 'Logitech-Renewal-SoMe.jpg'),
(5, 'Logitech dan McLaren Gelar Kompetisi Balapan Virtual', 'Logitech G menggandeng McLaren Racing dan menggelar kompetisi balapan G Challenge 2021 pada 1 Juli mendatang.\r\nKompetisi ini ditujukan untuk pembalap amatir dan penggila olahraga balapan. Kompetisinya sendiri mempunyai tiga divisi, yaitu Open Wheel, Stock', 'Logitech G menggandeng McLaren Racing dan menggelar kompetisi balapan G Challenge 2021 pada 1 Juli mendatang.\r\nKompetisi ini ditujukan untuk pembalap amatir dan penggila olahraga balapan. Kompetisinya sendiri mempunyai tiga divisi, yaitu Open Wheel, Stock Car, dan Sport Car Racing.\r\n\r\nG Challenge 2021 digelar lewat game iRacing dan Assetto Corsa Competizione, di mana grand final-nya akan digelar di Las Vegas, Amerika Serikat, pada 15 Januari 2022.\r\nPemenang dari ketiga divisi tersebut akan mendapat hadiah berupa perjalanan ke London selama empat hari, pengalaman balik layar pada Pusat Teknologi McLaren, pelatihan dengan pembalap McLaren F1 Lando Norris, dan pengalaman VIP di Grand Prix Inggris Formula 1 2022.\r\n\r\nUntuk merayakan tampilan baru tahun ini, Logitech G dan McLaren akan menyelenggarakan balapan \'Celebrity Pro-Am\' pada 7 Juli, di mana para selebriti akan membentuk dua tim untuk bersaing dalam balapan Stock Car dan Open Wheel.\r\n\"McLaren Racing menggunakan Logitech McLaren G Challenge sebagai cara untuk menghibur penggemar balap, tetapi kami segera menyadari bahwa ini adalah kesempatan untuk berkolaborasi dengan Logitech G dalam industri yang kian meroket,\" kata Lindsey Eckhouse, selaku Director, Licensing, Ecommerce and eSports di McLaren Racing.\r\n\r\nTiga pembalap teratas dari setiap divisi (Open Wheel, Stock Car dan Sport Car Racing) akan mendapatkan biaya perjalanan ke Las Vegas pekan Grand Final untuk bersaing memperebutkan gelar juara.\r\n\r\n', '2021-12-27', 'logitech-mclaren-1_169.jpeg'),
(6, 'Review Logitech MX Keys Mini, Minimalis dan Mewah', 'Setelah merilis MX Keys beberapa waktu lalu, kini Logitech merilis penerus keyboard jagoan mereka, yaitu MX Keys Mini, yang dari namanya sudah bisa ditebak kalau ukurannya lebih...mini.', 'Setelah merilis MX Keys beberapa waktu lalu, kini Logitech merilis penerus keyboard jagoan mereka, yaitu MX Keys Mini, yang dari namanya sudah bisa ditebak kalau ukurannya lebih...mini.\r\n\r\nBaik MX Keys maupun MX Keys Mini punya desain dan bahan yang sama. Perbedaannya hanya pada ukuran yang lebih kecil. Ini membuat MX Keys Mini, setidaknya untuk saya, sangat menarik. Karena untuk keperluan pekerjaan, saya tak membutuhkan tombol-tombol tambahan di MX Keys yang membuat ukurannya menjadi besar.\r\n\r\nDesain\r\nDari segi dimensi, MX Keys Mini berukuran 131,21 x 295,99 mm, 30% lebih kecil dibanding MX Keys, atau nyaris selebar MacBook Air M1. Ukurannya yang mini ini membuatnya menjadi sangat portabel dan mudah dibawa, terlebih lagi bobotnya kini hanya 506 gram, jauh lebih ringan dibanding MX Keys yang bobotnya 810 gram.\r\n\r\nNamun keunggulan utamanya, ukurannya yang sangat mirip dengan kebanyakan laptop ini membuat MX Keys Mini sangat ergonomis dan nyaman dipakai mengetik. Terutama untuk orang yang sudah terbiasa mengetik menggunakan laptop.\r\n\r\nBobotnya yang mencapai setengah kg itu berasal dari bahan metal yang ada pada lapisan atas keyboard, yang terasa sangat solid. Bahkan bagian atasnya yang berbahan plastik terasa sangat kokoh.\r\n\r\nSama seperti MX Keys, tombol-tombol di MX Keys Mini juga bertipe chiclet dengan cekungan di tengahnya. Kontur ini menurut Logitech disesuaikan dengan bentuk jari manusia.\r\n\r\nOh ya, backlit otomatis yang sebelumnya ada di MX Keys juga masih dipertahankan di MX Keys Mini. Tombol-tombol di keyboard ini akan menyala otomatis saat mendeteksi ada objek -- tangan penggunanya -- mendekat dengan menggunakan sensor magnet. Tingkat kecerahannya ada enam level, cocok untuk dipakai dalam kondisi gelap.\r\n\r\nAda tiga warna yang tersedia, rose, graphite, dan pale gray. Baterai yang dipakai dijanjikan bisa bertahan selama 10 hari penggunaan jika backlightnya dinyalakan, dan sampai dengan lima bulan jika tak menggunakan backlight. Dalam pengujian yang berlangsung selama lima hari dengan backlight menyala, kami belum pernah kehabisan baterai.\r\n\r\nPengisian baterainya dilakukan lewat port USB-C yang ada pada bagian atas keyboard, yang sayangnya hanya berguna untuk mengisi baterai dan tidak bisa dipakai untuk memakai MX Keys Mini dalam mode kabel.', '2021-12-27', 'logitech-mx-keys-mini_169.png');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `message`) VALUES
(1, 'Joshua', 'yey@gmail.com', 'tes');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `judul_gambar` varchar(255) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `gambar`, `judul_gambar`, `tanggal`) VALUES
(1, 'g102-prodigy.png', 'G102-prodigy', '2022-01-06'),
(2, 'G203-lightsync.jpg', 'G203 lightsync', '0000-00-00'),
(3, 'g302-daedalus-prime.png', 'g302 daedalus prime', '0000-00-00'),
(4, 'g304-lightspeed.png', 'g304 lightspeed', '0000-00-00'),
(5, 'g402-hyperion-fury.png', 'g402 hyperion fury', '0000-00-00'),
(6, 'g403-prodigy-gaming.png', 'g403 prodigy gaming', '0000-00-00'),
(7, 'Logitech_PopKeys_dan_PopMouse.jpg', 'Logitech PopKeys dan PopMouse', '0000-00-00'),
(8, 'logitech-mclaren-1_169.jpeg', 'logitech-mclaren-1_169', '0000-00-00'),
(9, 'logitech-mx-keys-mini_169.png', 'logitech mx keys mini', '0000-00-00'),
(10, 'Logitech-Renewal-SoMe.jpg', 'Logitech x G2', '0000-00-00'),
(11, 'g213-prodigy-gaming-keyboard.png', 'g213 prodigy gaming keyboard', '0000-00-00'),
(12, 'g413-mechanical-gaming-keyboard.png', 'g413 mechanical gaming keyboard', '0000-00-00'),
(13, 'g512_carbon.png', 'g512 carbon', '0000-00-00'),
(14, 'g613-wireless-mechanical-gaming-keyboard.png', 'g613 wireless mechanical gaming keyboard', '0000-00-00'),
(15, 'g813_keyboard.jpg', 'g813 keyboard', '0000-00-00'),
(16, 'g331_headset.jpg', 'g331 headset', '0000-00-00'),
(17, 'g335_headset.png', 'g335 headset', '0000-00-00'),
(18, 'g431_headset.jpg', 'g431 headset', '0000-00-00'),
(19, 'g633s_headset.jpg', 'g633s headset', '0000-00-00'),
(20, 'g733_2.jpg', 'g733_2', '0000-00-00'),
(21, 'G733_headset.jpg', 'G733 headset', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `headset`
--

CREATE TABLE `headset` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `spec` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `headset`
--

INSERT INTO `headset` (`id`, `name`, `deskripsi`, `spec`, `price`, `gambar`) VALUES
(1, 'Logitech G331 GAMING HEADSET', 'Logitech G331 gaming headset menghasilkan audio dahsyat agar kamu terbuai dalam game. Nikmati keasyikan pengalaman gaming yang lengkap saat kamu bisa mendengar semuanya dan semua orang bisa mendengarmu', 'SPESIFIKASI FISIK\r\nTinggi: 172 mm\r\nLebar: 81,7 mm\r\nTebal: 182 mm\r\nBerat: (tanpa kabel): 259 g\r\nPanjang Kabel: 2 m\r\n\r\nSPESIFIKASI TEKNIS\r\nHeadphone\r\nDriver: 50 mm\r\nRespons frekuensi: 20 Hz-20 KHz\r\nImpedansi: 39 Ohm (pasif), 5k Ohm (aktif)\r\nSensitivitas: 10', 'Rp 999.000,00', 'g331_headset.jpg'),
(2, 'Logitech G335 Wired Gaming Headset', 'Ringan dan keren. G335 menghadirkan perpaduan warna dan kenyamanan. Dilengkapi desain suspension headband dengan strap yang dapat disesuaikan sehingga kamu bisa memilih pengaturan yang paling nyaman. Kontrol internal dan plug-and-play yang sederhana memun', 'SPESIFIKASI FISIK:\r\nPanjang: 189 mm\r\nLebar: 180 mm\r\nTebal: 79 mm\r\nBerat: 240 g (termasuk kabel)\r\n\r\nSPESIFIKASI TEKNIS:\r\nDriver: 40 mm\r\nRespons frekuensi: 20 Hz-20 KHz\r\nImpedansi: Sensitivitas 36 Ohm: 87,5 dB SPL/mW\r\nMikrofon (Boom):\r\nPola Pickup Mikrofon:', 'Rp 899.000,00', 'g335_headset.png'),
(3, 'Logitech G431 7.1 SURROUND SOUND GAMING HEADSET', 'Dengan G431 gaming headset, kelilingi dirimu dengan suasana game. Dapatkan keasyikan dari sepenuhnya terbuai dalam aksi dan selalu terdengar untuk mendapatkan pengalaman gaming yang lengkap.', 'SPESIFIKASI FISIK\r\nTinggi: 172 mm\r\nLebar: 81,7 mm\r\nTebal: 182 mm\r\nBerat: (tanpa kabel): 259 g\r\nPanjang Kabel: 2 m\r\n\r\nSPESIFIKASI TEKNIS\r\nHeadphone\r\nDriver: 50 mm\r\nRespons frekuensi: 20 Hz-20 KHz\r\nImpedansi: 39 Ohm (pasif), 5k Ohm (aktif)\r\nSensitivitas: 10', 'Rp 1.449.000,00', 'g431_headset.jpg'),
(4, 'Logitech G633s 7.1 LIGHTSYNC GAMING HEADSET', 'Dengarkan musuh yang menyelinap, tanda keahlian khusus, dan semua yang terjadi di sekelilingmu. Terbuai sepenuhnya dalam lingkungan game dan dengar seluruh soundtrack yang membahana. Kombinasi teknologi audio terbaik dan bahan yang awet menghadirkan audio', 'SPESIFIKASI FISIK\r\nTinggi: 188 mm\r\nLebar: 195 mm\r\nTebal: 87 mm\r\nBerat (tanpa kabel): 344 g\r\nPanjang Kabel PC: 2,8 m\r\nPanjang Kabel Mobile: 1,5 m\r\n\r\nSPESIFIKASI TEKNIS\r\nHeadphone\r\nDriver: 50 mm\r\nRespons frekuensi: 20 Hz-20 KHz\r\nImpedansi: 39 Ohm (pasif), 5', 'Rp 2.499.000,00', 'g633s_headset.jpg'),
(5, 'Logitech G733 LIGHTSPEED WIRELESS RGB GAMING HEADSET', 'Akhirnya, sebuah headset yang bisa sama ekspresifnya denganmu. G733 sudah wireless dan dirancang untuk kenyamanan. Dan headset ini dilengkapi dengan surround sound, filter suara, dan pencahayaan terbaik yang kamu perlukan untuk terlihat, terdengar, dan be', 'SPESIFIKASI FISIK\r\nPanjang: 194 mm\r\nLebar: 190 mm\r\nKedalaman: 83 mm\r\nBerat: 278 g\r\n\r\nSPESIFIKASI TEKNIS\r\nHeadphone:\r\nDriver: PRO-G 40 mm\r\nRespons frekuensi: 20 Hz-20 KHz\r\nImpedansi: 39 Ohm (pasif), 5k Ohm (aktif)\r\nSensitivitas: 87,5 dB SPL/mW', 'Rp 2.399.000,00', 'g733_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `keyboard`
--

CREATE TABLE `keyboard` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `spec` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keyboard`
--

INSERT INTO `keyboard` (`id`, `name`, `deskripsi`, `spec`, `price`, `gambar`) VALUES
(1, 'Logitech G213 Prodigy Gaming Keyboard', 'G213 gaming keyboard dilengkapi dengan tombol Logitech Mech-Dome yang secara khusus disetel untuk memberikan respons tactile yang superior dan profil kinerja keseluruhan yang mirip dengan keyboard mechanical. Tombol Mech-Dome berbentuk tegak, yang memberi', 'Spill resistance:\r\nTested with 60ml liquid spillage\r\n\r\nConnection Type: USB 2.0\r\nUSB Protocol: USB 2.0\r\nUSB Speed: Full Speed\r\nIndicator LIghts (LED): Yes\r\nLCD Display: No\r\nBacklighting: RGB\r\nCable Length (Power/Charging): 1.8 M\r\n\r\nPhysical specifications', 'Rp 949.000,00', 'g213-prodigy-gaming-keyboard.png'),
(2, 'Logitech G413 Mechanical Gaming Keyboard', 'G413 dipikirkan, dirancang, dan direkayasa untuk menghadirkan kinerja tingkat lanjut hanya dengan rangkaian fitur yang tepat. Bladelike chassis yang ramping terbuat dari 5052 aluminum alloy ringan yang sangat kuat. Di bawahnya, ada pengaturan kabel mouse ', 'SPESIFIKASI FISIK\r\nTinggi: 132 mm\r\nLebar: 445 mm\r\nTebal: 34 mm\r\nBerat (tanpa kabel): 1.105 g\r\nKabel: 1,8 m\r\n\r\nKENOP MEKANIK ROMER-G:\r\nDaya tahan: 70 juta penekanan tombol\r\nJarak aktuasi: 1,5 mm\r\nKekuatan aktuasi: 45 g\r\nTotal jarak yang dilalui: 3,0 mm\r\n\r\n', 'Rp 1.290.000,00', 'g413-mechanical-gaming-keyboard.png'),
(3, 'Logitech G512 Lightsync', 'G512 dapat dikustomisasi per tombol dengan sekitar 16,8 Juta warna. Buat animasimu sendiri atau pilih dari jajaran preset effect yang ada. Dan dengan teknologi LIGHTSYNC, pencahayaan akan dipengaruhi oleh setiap game, audio, atau layarmu sehingga menghadi', 'SPESIFIKASI FISIK\r\nPanjang: 132 mm\r\nLebar: 445 mm\r\nTinggi: 35,5 mm\r\nBerat (tanpa kabel): 1130 g\r\nPanjang Kabel: 1,8 m\r\n\r\nSwitch Mechanical GX\r\n\r\nSPESIFIKASI KEYBOARD:\r\nJarak aktuasi: 1,9 mm\r\nKekuatan aktuasi: 50 g\r\nTotal jarak: 4,0 mm\r\nJenis Koneksi: USB ', 'Rp 1.790.000,00', 'g512_carbon.png'),
(4, 'Logitech G613 Wireless Mechanical Gaming Keyboard', 'G613 adalah wireless keyboard generasi terbaru yang dirancang untuk gamer yang menuntut kemampuan switch mechanical berkinerja tinggi dan kebebasan wireless gaming.', 'SPESIFIKASI KEYBOARD:\r\nROMER-G KEY SWITCHES\r\nDurability: 70 million keypresses\r\nActuation distance: 0.06 in (1.5 mm)\r\nActuation force: 1.6 oz (45 g)\r\nTotal travel distance: 0.12 in (3.0 mm)\r\n\r\nBATTERY LIFE\r\n18 months\r\n\r\nSPESIFIKASI FISIK\r\nHeight: 18.8 in ', 'Rp 1.490.000,00', 'g613-wireless-mechanical-gaming-keyboard.png'),
(5, 'Logitech G813 Lightsync', 'Teknologi gaming terbaik dalam rancangan canggih ultra tipis. Dapat sepenuhnya dikustomisasi, dilengkapi dengan LIGHTSYNC RGB dan tombol G khusus. Dibuat untuk gameplay berkinerja tinggi dengan switch mechanical GL yang sederhana dalam variasi clicky, tac', 'SPESIFIKASI FISIK\r\nLength: 475 mm\r\nWidth: 150 mm\r\nHeight: 22 mm\r\nWeight (w/o cable): 1045 g\r\nWeight (w/cable): 1145 g\r\nPC Cable Length: 1.8 m\r\n\r\nLow Profile GL Switches\r\nActuation distance: 1.5 mm\r\nActuation force: 45 g\r\nTotal travel distance: 3.0 mm', 'Rp 2.999.000,00', 'g813_keyboard.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mouse`
--

CREATE TABLE `mouse` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `spec` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mouse`
--

INSERT INTO `mouse` (`id`, `name`, `deskripsi`, `spec`, `price`, `gambar`) VALUES
(1, 'Logitech G102 Prodigy', 'Optimalkan waktu bermainmu dengan G102 gaming mouse yang dilengkapi dengan teknologi LIGHTSYNC, sensor kelas gaming, dan desain klasik 6 tombol. Ceriakan game-mu … dan mejamu.', 'Fitur:\r\n- Sensor: 200-8.000 DPI\r\n- Memori pada Perangkat\r\n- Pencahayaan RGB yang Dapat Diprogram (Pilih lebih dari 16,8 juta warna)\r\n- Enam tombol yang dapat diprogram\r\n- Peralihan DPI dalam sekejap mata\r\n- Memori pada Perangkat\r\n\r\nSpesifikasi Teknis\r\nPen', 'Rp 379.000,00', 'g102-prodigy.png'),
(2, 'Logitech G203 Lightsync', 'Optimalkan waktu bermainmu dengan G203 gaming mouse yang dilengkapi dengan teknologi LIGHTSYNC, sensor kelas gaming, dan desain klasik 6 tombol. Ceriakan game-mu dan mejamu.', 'SPESIFIKASI FISIK\r\nTinggi: 116,6 mm\r\nLebar: 62,15 mm\r\nTebal: 38,2 mm\r\nBerat: 85 g (hanya mouse)\r\nPanjang Kabel: 2,1 m\r\n\r\nSPESIFIKASI TEKNIS\r\nPencahayaan RGB LIGHTSYNC\r\n6 tombol yang dapat diprogram\r\nSensor Resolusi: 200 – 8.000 DPI\r\n\r\nKETANGGAPAN\r\nFormat ', 'Rp 573.000,00', 'G203-lightsync.jpg'),
(3, 'Logitech G302 Daedalus Prime', 'Bekerja sama dengan pemain MOBA profesional untuk mendesain fitur dan kemudahan bermain dari nol. Teknologi Delta Zero™ sensor memastikan penelusuran akurat sementara daya tahan tombol dibuat untuk menghadapi pengeklikan berkecepatan tinggi sekian jam lam', 'Penelusuran :\r\n- Resolusi: 240 4.000 dpi\r\n- Akselerasi maks.: >20G*\r\n- Kecepatan maks: >120 ips (3 m/dtk)*\r\n\r\nSpesifikasi fisik :\r\n- Tinggi:115mm\r\n- Lebar: 65mm\r\n- Kedalaman: 37mm\r\n- Berat: 127 gram (mouse plus kabel\r\n\r\nResponsivitas :\r\n- Format data USB:', 'Rp 679.000,00', 'g302-daedalus-prime.png'),
(4, 'Logitech G304 lightspeed Wireless', 'LIGHTSPEED Wireless Generasi Terbaru Kini Hadir untuk Semua Gamer. G304 adalah LIGHTSPEED wireless gaming mouse yang didesain untuk kinerja serius dengan inovasi teknologi terbaru dan dengan harga yang terjangkau.', 'Penelusuran\r\n- Sensor: HERO™\r\n- Resolusi: 100 – 12.000 dpi\r\n- Zero smoothing/akselerasi/filtering\r\n- Maks. akselerasi: > 40 G1\r\n- Maks. kecepatan: > 400 IPS1\r\n\r\nSpesifikasi fisik\r\n- Tinggi: 116,6 mm\r\n- Lebar: 62,15 mm\r\n- Tebal: 38,2 mm\r\n- Berat: 99 g', 'Rp 699.000,00', 'g304-lightspeed.png'),
(5, 'Logitech G402 Hyperion Fury', 'Teknologi sensor canggih untuk permainan ultra-cepat. Hyperion Fury memadukan sensor optik berteknologi Logitech Delta Zero™ dengan sensor hybrid Fusion Engine™ eksklusif kami agar mampu mencapai kecepatan penelusuran melebihi 500 IPS.', 'Spesifikasi Teknis\r\n- Sensor hybrid Fusion Engine\r\n- 8 tombol yang dapat diprogram\r\n- Peralihan DPI aktual\r\n- Prosesor ARM 32-bit\r\n- Report rate 1 millisecond\r\n- Klik berkecepatan tinggi\r\n- USB berkecepatan tinggi\r\n\r\nTracking\r\n- Resolusi: 240-4000 dpi\r\n- ', 'Rp 729.000,00', 'g402-hyperion-fury.png'),
(6, 'Logitech G403 Prodigy Gaming', 'G403 berkomunikasi hingga 1.000 report per detik, 8x lebih cepat dari mouse standar. Ini berarti ketika mouse digerakkan atau diklik, respons di layar hampir seketika.', 'Tracking\r\n- Resolusi: 200-1200 dpi\r\n- Akselerasi maks.: >40G*\r\n- Kecepatan maks.: >500 ips*\r\n\r\nSpesifikasi fisik\r\n- Tinggi: 123 mm\r\n- Lebar: 68 mm\r\n- Tebal: 43 mm\r\n- Berat: 87,3 g', 'Rp899.000', 'g403-prodigy-gaming.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headset`
--
ALTER TABLE `headset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keyboard`
--
ALTER TABLE `keyboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mouse`
--
ALTER TABLE `mouse`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `headset`
--
ALTER TABLE `headset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `keyboard`
--
ALTER TABLE `keyboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mouse`
--
ALTER TABLE `mouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
