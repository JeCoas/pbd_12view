-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2024 pada 08.59
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4856_p12view`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `category_id` char(6) NOT NULL,
  `explanation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`category_id`, `explanation`) VALUES
('CG-001', 'Fashions & Accessories'),
('CG-002', 'Clothes'),
('CG-003', 'Beauty'),
('CG-004', 'Health'),
('CG-005', 'Household'),
('CG-006', 'Kitchen'),
('CG-007', 'Baby Care'),
('CG-008', 'Handphone & Tablet'),
('CG-009', 'Laptop & Accessories'),
('CG-010', 'Computer & Accessories'),
('CG-011', 'Electronic'),
('CG-012', 'Camera, Photo & Video'),
('CG-013', 'Otomotif'),
('CG-014', 'Sports'),
('CG-015', 'Office & Stationery'),
('CG-016', 'Souvenirs & Gifts'),
('CG-017', 'Books'),
('CG-018', 'Softwares'),
('CG-019', 'Films, Musics & Games'),
('CG-020', 'Toys & Hobbies'),
('CG-021', 'Foods & Drinks');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `customer_id` char(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `region_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `address`, `region_id`) VALUES
('CUS-000001', 'Bagus Nur Hakim', 'Jakarta', 'WL001'),
('CUS-000002', 'Putri Kharisma', 'Yogyakarta', 'WL002'),
('CUS-000003', 'Aliany Milawaty', 'Yogyakarta', 'WL002'),
('CUS-000004', 'Yudha Adisaputra', 'Solo', 'WL005'),
('CUS-000005', 'Nurafni Oktaviani', 'Surabaya', 'WL003'),
('CUS-000006', 'Meilia', 'Bandung', 'WL004'),
('CUS-000007', 'Aulia Luthfi Anna', 'Jakarta', 'WL001'),
('CUS-000008', 'Ichzam Rusmana', 'Medan', 'WL007'),
('CUS-000009', 'Tri Yulianti', 'Makasar', 'WL006'),
('CUS-000010', 'Ervina Jayanti', 'Surabaya', 'WL003'),
('CUS-000011', 'Desi Wulandari', 'Yogyakarta', 'WL002'),
('CUS-000012', 'Sukma Tri Setia', 'Medan', 'WL007'),
('CUS-000013', 'Abinaya Basupati', 'Jakarta', 'WL001'),
('CUS-000014', 'Hadrian Gustin Alvaro', 'Jakarta', 'WL001'),
('CUS-000015', 'Nathania Earline', 'Surabaya', 'WL003');

-- --------------------------------------------------------

--
-- Struktur dari tabel `items`
--

CREATE TABLE `items` (
  `item_id` char(15) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `purchasing_price` int(11) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL,
  `category_id` char(6) NOT NULL,
  `supplier_id` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `items`
--

INSERT INTO `items` (`item_id`, `name`, `stok`, `purchasing_price`, `selling_price`, `category_id`, `supplier_id`) VALUES
('CG-001-IT000001', 'Snapback Hat NY', 50, 135000, 140000, 'CG-001', 'SUP-000001'),
('CG-001-IT000002', 'Roberto Cavalli Sunglass', 100, 160000, 165000, 'CG-001', 'SUP-000001'),
('CG-001-IT000003', 'Porsche Design Sunglass', 25, 265000, 275000, 'CG-001', 'SUP-000001'),
('CG-001-IT000004', 'Giorgio Agneli Wallet', 50, 145000, 150000, 'CG-001', 'SUP-000002'),
('CG-001-IT000005', 'Levis Design Walet', 50, 160000, 175000, 'CG-001', 'SUP-000002'),
('CG-001-IT000006', 'Swarovski JAQ-001', 15, 243000, 250000, 'CG-001', 'SUP-000003'),
('CG-001-IT000007', 'Vintage Models NCK', 35, 130000, 135000, 'CG-001', 'SUP-000003'),
('CG-001-IT000008', 'Rossy Net Silver NCK', 30, 140000, 150000, 'CG-001', 'SUP-000003'),
('CG-001-IT000009', 'Bohemian Blue Saphire NCK', 50, 240000, 245000, 'CG-001', 'SUP-000003'),
('CG-001-IT000010', 'Lady Crystal NCK', 25, 165000, 170000, 'CG-001', 'SUP-000003'),
('CG-002-IT000011', 'Black Gray Long SLeeved Shirt', 100, 100000, 103000, 'CG-002', 'SUP-000007'),
('CG-002-IT000012', 'Hoddies Auntumn Coat', 50, 150000, 160000, 'CG-002', 'SUP-000007'),
('CG-002-IT000013', 'Sweater Tribal Gazilo', 100, 90000, 105000, 'CG-002', 'SUP-000007'),
('CG-002-IT000014', 'Jogger Sport Addidas', 50, 145000, 150000, 'CG-002', 'SUP-000008'),
('CG-002-IT000015', 'Hoddie Nike E01', 50, 185000, 190000, 'CG-002', 'SUP-000008'),
('CG-002-IT000016', 'Hoddie Zipper Marine', 50, 170000, 175000, 'CG-002', 'SUP-000008'),
('CG-002-IT000017', 'Jadore Blouse', 25, 150000, 159000, 'CG-002', 'SUP-000008'),
('CG-002-IT000018', 'Pieter Sweater', 20, 135000, 140000, 'CG-002', 'SUP-000010'),
('CG-002-IT000019', 'Line Long Tunik Blouse', 35, 105000, 120000, 'CG-002', 'SUP-000010'),
('CG-002-IT000020', 'Poland Tile Dress', 50, 125000, 130000, 'CG-002', 'SUP-000010'),
('CG-003-IT000021', 'Babyliss Pro Curl', 10, 675000, 689000, 'CG-003', 'SUP-000011'),
('CG-003-IT000022', 'NXY Soft Matte Lip Cream', 50, 125000, 130000, 'CG-003', 'SUP-000012'),
('CG-003-IT000023', 'Manicure Set 777', 20, 195000, 199000, 'CG-003', 'SUP-000011'),
('CG-003-IT000024', 'Rosemary Essential Oil', 50, 55000, 60000, 'CG-003', 'SUP-000013'),
('CG-003-IT000025', 'Naked 3 Palette', 50, 235000, 245000, 'CG-003', 'SUP-000012'),
('CG-004-IT000026', 'Bepathen First Aid', 50, 95000, 100000, 'CG-004', 'SUP-000013'),
('CG-004-IT000027', 'MSI Bio Spray', 50, 165000, 175000, 'CG-004', 'SUP-000013'),
('CG-004-IT000028', 'Medical Pro Bags', 20, 2000000, 2090000, 'CG-004', 'SUP-000013'),
('CG-005-IT000029', 'Minimalis Sofa L', 10, 2000000, 2100000, 'CG-005', 'SUP-000014'),
('CG-005-IT000030', 'Bellin Desk Pink', 10, 900000, 949000, 'CG-005', 'SUP-000014'),
('CG-005-IT000031', 'Prada Prem Curtain', 10, 1000000, 1100000, 'CG-005', 'SUP-000015'),
('CG-005-IT000032', 'Shoes Hanging', 50, 135000, 140000, 'CG-005', 'SUP-000015'),
('CG-005-IT000033', 'Lady American Mattress Protector', 50, 280000, 290000, 'CG-005', 'SUP-000016'),
('CG-005-IT000034', 'Waterproof Sprei Big', 50, 150000, 155000, 'CG-005', 'SUP-000016'),
('CG-006-IT000035', 'Tupperware Blossom Series', 40, 545000, 6320000, 'CG-006', 'SUP-000017'),
('CG-006-IT000036', 'Oxone Juicer OX-965', 25, 1750000, 1850000, 'CG-006', 'SUP-000014'),
('CG-006-IT000037', 'Happycall Double Pan 32cm', 10, 1135000, 1140000, 'CG-006', 'SUP-000014'),
('CG-006-IT000038', 'Vicenza Dining Set', 50, 439000, 450000, 'CG-006', 'SUP-000014'),
('CG-006-IT000039', 'Sport Bottle 600ml', 35, 65000, 680000, 'CG-006', 'SUP-000017');

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchases`
--

CREATE TABLE `purchases` (
  `purchase_id` char(14) NOT NULL,
  `customer_id` char(10) NOT NULL,
  `salesman_id` varchar(10) NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_items`
--

CREATE TABLE `purchase_items` (
  `purchase_id` char(14) NOT NULL,
  `item_id` char(15) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `purchasing_price` int(11) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` char(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `name`, `address`) VALUES
('SUP-000001', 'G&R Collection', 'Semarang'),
('SUP-000002', 'Mollersz', 'Jakarta'),
('SUP-000003', 'Tamza Accessories', 'Surabaya'),
('SUP-000004', 'Wallette', 'Medan'),
('SUP-000005', 'The Watch Gallery', 'Surabaya'),
('SUP-000006', 'Bags Collection', 'Medan'),
('SUP-000007', 'Couple9', 'Jakarta'),
('SUP-000008', 'Swag Corner', 'Surabaya'),
('SUP-000009', 'Kiss_OS', 'Jakarta'),
('SUP-000010', 'YsN', 'Makasar'),
('SUP-000011', 'Legnarose Beauty', 'Jakarta'),
('SUP-000012', 'Mutiara Cosmetics', 'Surabaya'),
('SUP-000013', 'Essential Store', 'Jakarta'),
('SUP-000014', 'Homy Collections', 'Medan'),
('SUP-000015', 'Viventi Living', 'Surabaya'),
('SUP-000016', 'Orion Bed', 'Jakarta'),
('SUP-000017', 'Tupperware ID', 'Makasar'),
('SUP-000018', 'Utama Mega', 'Jakarta'),
('SUP-000019', 'Mavely Baby', 'Jakarta'),
('SUP-000020', 'Sciabuna Store', 'Yogyakarta'),
('SUP-000021', 'Kenzie Baby', 'Surabaya'),
('SUP-000022', 'Chios CK', 'Yogyakarta'),
('SUP-000023', 'JT Shop Indo', 'Jakarta'),
('SUP-000024', 'Saga Case ID', 'Medan'),
('SUP-000025', 'Graha Baru', 'Surabaya'),
('SUP-000026', 'Parttop ID', 'Medan'),
('SUP-000027', 'Alfa Tech', 'Jakarta'),
('SUP-000028', 'King Spycam', 'Jakarta'),
('SUP-000029', 'Glories ID', 'Jakarta'),
('SUP-000030', 'Budget Gadget', 'Jakarta');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indeks untuk tabel `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`purchase_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indeks untuk tabel `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`purchase_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indeks untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_ibfk_1` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`purchase_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
