-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 06 Tem 2020, 21:39:40
-- Sunucu sürümü: 10.4.13-MariaDB
-- PHP Sürümü: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `otomasyon`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitaplar`
--

CREATE TABLE `kitaplar` (
  `id` int(11) NOT NULL,
  `Ad` text COLLATE utf16_turkish_ci NOT NULL,
  `Yazar` text COLLATE utf16_turkish_ci NOT NULL,
  `Sayfa Sayısı` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_turkish_ci;

--
-- Tablo döküm verisi `kitaplar`
--

INSERT INTO `kitaplar` (`id`, `Ad`, `Yazar`, `Sayfa Sayısı`) VALUES
(1, 'Tutunamayanlar', 'Oğuz Atay', 402),
(2, 'Tehlikeli Oyunlar', 'Oğuz Atay', 254),
(3, 'Kardeşimin Hikayesi ', 'Zülfi Livaneli', 314),
(4, 'Vatan Yahut Silistre', 'Namık Kemal', 254),
(5, 'Huzur Sokağı', 'Şule Yüksel Şenler', 374),
(6, 'Kuyucaklı Yusuf', 'Sabahattin Ali ', 154),
(7, 'İçimizdeki Şeytan', 'Sabahattin Ali ', 174),
(8, 'Kürk Mantolu Madonna', 'Sabahattin Ali ', 148),
(9, 'Sırça Köşk ', 'Sabahattin Ali ', 241),
(10, 'Kuşlarda Gitti', 'Yaşar Kemal', 267),
(11, 'Tek Kanatlı Bir Kuş', 'Yaşar Kemal', 178),
(12, 'Yağmurla Gelen', 'Yaşar Kemal', 267),
(13, 'Kırlangıç Çığlığı ', 'Ahmet Ümit', 298),
(14, 'Aşk Köpekliktir', 'Ahmet Ümit', 197),
(15, 'Masal Masal İçinde', 'Ahmet Ümit', 187),
(16, 'Elveda Güzel Vatanım', 'Ahmet Ümit', 298),
(17, 'Bir Ömür Nasıl Yaşanır?', 'İlber Ortaylı', 195),
(18, 'Türklerin Tarihi', 'İlber Ortaylı', 357),
(19, 'Türklerin Tarihi 2', 'İlber Ortaylı', 385),
(20, 'Milenaya Mektuplar', 'Franz Kafka', 201),
(21, 'Çalıkuşu', 'Reşat Nuri Güntekin', 254),
(22, 'Akşam Güneşi', 'Reşat Nuri Güntekin', 304),
(23, 'Yaprak Dökümü', 'Reşat Nuri Güntekin', 247),
(24, 'Dudaktan Kalbe', 'Reşat Nuri Güntekin', 341),
(25, 'Sevda Sözleri', 'Cemal Süreya', 398),
(26, 'Üstü Kalsın', 'Cemal Süreya', 352),
(27, 'Göçebe', 'Cemal Süreya', 241),
(28, 'Üvercinka', 'Cemal Süreya', 298),
(29, 'Kırmızı Saçlı Kadın', 'Orhan Pamuk', 374),
(30, 'Kafamda Bir Tuhaflık', 'Orhan Pamuk', 249),
(31, 'Sessiz Ev', 'Orhan Pamuk', 264),
(32, 'Masumiyet Müzesi', 'Orhan Pamuk', 352),
(33, 'Kara Kitap', 'Orhan Pamuk', 214),
(34, 'Ben Bir Ağacım', 'Orhan Pamuk', 247),
(35, 'Fatih Harbiye', 'Peyami Safa', 249),
(36, 'Dokuzuncu Hariciye Koğuşu', 'Peyami Safa', 340),
(37, 'Aşk', 'Elif Şafak', 296),
(38, 'Aşkın Kırk Kuralı', 'Elif Şafak', 294),
(39, 'Havva\'nın Üç Kızı', 'Elif Şafak', 263),
(40, 'Bit Palas', 'Elif Şafak', 240);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `üyeler`
--

CREATE TABLE `üyeler` (
  `username` text COLLATE utf16_turkish_ci NOT NULL,
  `password` text COLLATE utf16_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_turkish_ci;

--
-- Tablo döküm verisi `üyeler`
--

INSERT INTO `üyeler` (`username`, `password`) VALUES
('smybayrktr', 'barbie123'),
('admin', '12345'),
('ummuBayraktar', '178541'),
('lb.07', '279154'),
('husooB', '187.1910'),
('haticeBayraktar', '1478.wqp'),
('bookmeraklısı', '122kitap'),
('boooks', '147852'),
('hellömy', 'asdf.12'),
('teletabi', '18754.asd'),
('aysu.78', 'myşifre.0'),
('f.kae', 'ser.852'),
('t.asdf', '258963.s'),
('leyla.07', 'leylasuuu'),
('ezgi.s', 'ez2541.85'),
('ayşe.f8', 'f5yenile'),
('fenerbahçeli', '1907.FB');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitaplar`
--
ALTER TABLE `kitaplar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kitaplar`
--
ALTER TABLE `kitaplar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
