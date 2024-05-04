-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table myweb.chitietdonhang
CREATE TABLE IF NOT EXISTS `chitietdonhang` (
  `machitietdonhang` varchar(255) NOT NULL,
  `madonhang` varchar(255) NOT NULL,
  `masanpham` varchar(255) NOT NULL,
  `soluong` double NOT NULL DEFAULT 0,
  `giagoc` double NOT NULL DEFAULT 0,
  `giamgia` double NOT NULL DEFAULT 0,
  `giaban` double NOT NULL DEFAULT 0,
  `thuevat` double NOT NULL DEFAULT 0,
  `tongtien` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`machitietdonhang`),
  KEY `FK_chitietdonhang_donhang` (`madonhang`),
  KEY `FK_chitietdonhang_sanpham` (`masanpham`),
  CONSTRAINT `FK_chitietdonhang_donhang` FOREIGN KEY (`madonhang`) REFERENCES `donhang` (`madonhang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_chitietdonhang_sanpham` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table myweb.chitietdonhang: ~3 rows (approximately)
INSERT INTO `chitietdonhang` (`machitietdonhang`, `madonhang`, `masanpham`, `soluong`, `giagoc`, `giamgia`, `giaban`, `thuevat`, `tongtien`) VALUES
	('MCT1', 'MDH1', '001', 12, 200000, 36000, 630000, 10, 200000),
	('MCT2', 'MDH2', '002', 22, 300000, 23000, 450000, 12, 2000000),
	('MCT3', 'MDH3', '003', 22, 123000, 12000, 450000, 15, 320000),
	('MCT4', 'MDH4', '004', 122, 230000, 20000, 300000, 19, 1200000);

-- Dumping structure for table myweb.donhang
CREATE TABLE IF NOT EXISTS `donhang` (
  `madonhang` varchar(255) NOT NULL,
  `makhachhang` varchar(255) NOT NULL,
  `diachimuahang` varchar(255) NOT NULL,
  `diachinhanhang` varchar(255) NOT NULL,
  `trangthai` varchar(255) NOT NULL,
  `hinhthucthanhtoan` varchar(255) NOT NULL,
  `trangthaithanhtoan` varchar(255) NOT NULL,
  `sotienthanhtoan` double NOT NULL DEFAULT 0,
  `sotienconthieu` double NOT NULL DEFAULT 0,
  `ngaydathang` date NOT NULL,
  `ngaygiaohang` date NOT NULL,
  PRIMARY KEY (`madonhang`),
  KEY `FK__khachhang` (`makhachhang`),
  CONSTRAINT `FK__khachhang` FOREIGN KEY (`makhachhang`) REFERENCES `khachhang` (`makhachhang`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table myweb.donhang: ~4 rows (approximately)
INSERT INTO `donhang` (`madonhang`, `makhachhang`, `diachimuahang`, `diachinhanhang`, `trangthai`, `hinhthucthanhtoan`, `trangthaithanhtoan`, `sotienthanhtoan`, `sotienconthieu`, `ngaydathang`, `ngaygiaohang`) VALUES
	('MDH1', '01', 'Bắc Ninh', 'Bắc Giang', 'hoàn thành', 'online', 'done', 120000, 20000, '2002-12-05', '2003-05-06'),
	('MDH2', '02', 'Lào Cai', 'Hòa Bình', 'đang giao', 'offline', 'done', 240000, 30000, '2002-04-05', '2003-05-06'),
	('MDH3', '03', 'Yên Bái', 'Lạng Sơn', 'đang giao', 'online', 'done', 360000, 20000, '2036-03-05', '2000-09-05'),
	('MDH4', '04', 'Sơn La', 'Lào Cai', 'hoàn thành', 'offline', 'done', 480000, 50000, '2006-02-09', '2008-03-05'),
	('MDH5', '05', 'Lai Chau', 'Hà Nội', 'hoàn thành', 'offline', 'failure', 920000, 300000, '2003-05-06', '2006-02-12');

-- Dumping structure for table myweb.khachhang
CREATE TABLE IF NOT EXISTS `khachhang` (
  `makhachhang` varchar(255) NOT NULL,
  `tendangnhap` varchar(255) DEFAULT NULL,
  `matkhau` varchar(255) DEFAULT NULL,
  `hoten` varchar(255) DEFAULT NULL,
  `gioitinh` varchar(255) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `diachinhanhang` varchar(255) DEFAULT NULL,
  `diachimuahang` varchar(255) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `sodienthoai` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dangkinhanbangtin` varchar(50) DEFAULT NULL,
  `maxacthuc` varchar(100) DEFAULT NULL,
  `thoigianhieulucmaxacthuc` datetime DEFAULT NULL,
  `trangthaixacthuc` tinyint(4) DEFAULT NULL,
  `duongdananh` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`makhachhang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table myweb.khachhang: ~18 rows (approximately)
INSERT INTO `khachhang` (`makhachhang`, `tendangnhap`, `matkhau`, `hoten`, `gioitinh`, `diachi`, `diachinhanhang`, `diachimuahang`, `ngaysinh`, `sodienthoai`, `email`, `dangkinhanbangtin`, `maxacthuc`, `thoigianhieulucmaxacthuc`, `trangthaixacthuc`, `duongdananh`) VALUES
	('01', 'anhyeuem1', '123456', 'ThÃ¡i pháº¡m', 'nam', NULL, 'JAPAN', 'USA', '2024-04-25', '0356484740', 'email1@gmail.com', 'yes', NULL, NULL, NULL, NULL),
	('02', 'anhyeuem2', '123456', 'ThÃ¡i pháº¡m', 'nam', NULL, 'JAPAN', 'USA', '2023-12-25', '0325625482', 'email2@gmail.com', 'no', NULL, NULL, NULL, NULL),
	('03', 'anhyeuem3', '123456', 'ThÃ¡i pháº¡m', 'Ná»¯', NULL, 'JAPAN', 'USA', '2024-02-29', '0325698543', 'email3@gmail.com', 'yes', NULL, NULL, NULL, NULL),
	('04', 'anhyeuem4', '123456', 'ThÃ¡i pháº¡m', 'Ná»¯', NULL, 'JAPAN', 'USA', '2024-02-21', '0358685478', 'email4@gmail.com', 'no', NULL, NULL, NULL, NULL),
	('05', 'anhyeuem5', '123456', 'ThÃ¡i pháº¡m', 'nam', NULL, 'JAPAN', 'USA', '2024-03-06', '0358695847', 'email5@gmail.com', 'no', NULL, NULL, NULL, NULL),
	('1709189132986', 'user123', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'ThÃ¡i p', 'Ná»¯', 'Báº¯c Kanj', 'VIET Nam', '', '2024-02-12', '0325645856', 'phamngocthaikma@gmail.com', '0', NULL, NULL, NULL, NULL),
	('1709189235885', 'user12312', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'ThÃ¡i p', 'Nam', '', 'VIET Nam', '', '2024-02-07', '0325645856', 'phamngocthaikma@gmail.com', '0', '956991', '2024-03-01 00:00:00', 0, NULL),
	('1709191403627', 'anhyeuem11', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'ThÃ¡i pháº¡m', 'Ná»¯', 'Báº¯c Giang', 'VIET Nam', 'USA', '2024-02-20', '0325645856', 'phamngocthaikma@gmail.com', '0', '765753', '2024-03-01 00:00:00', 0, NULL),
	('1709191837026', 'anhyeuem122', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'Phạm Thái', 'Nam', 'BẮc Ninh', 'VIET Nam', 'USA', '2024-02-15', '0325645856', 'phamngocthaikma@gmail.com', '1', '035677', '2024-03-01 00:00:00', 1, NULL),
	('1709193870080', 'anhyeuem9', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'ThÃ¡i pháº¡m', 'Ná»¯', 'Báº¯c Giang', 'VIET Nam', 'USA', '2024-02-05', '0325645856', 'phamngocthaikma@gmail.com', '0', '191016', '2024-03-01 00:00:00', 1, NULL),
	('1709199399191', 'thaipham12', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'ThÃ¡i pháº¡m', 'Ná»¯', 'Báº¯c Giang', 'HÃ  Ná»i', 'Báº¯c Ninh', '2024-02-20', '0325645856', 'phamngocthaikma@gmail.com', '0', '003169', '2024-03-01 00:00:00', 1, NULL),
	('1709200032225', 'anhyeuem12233', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'ThÃ¡i pháº¡m', 'Ná»¯', 'Báº¯c Giang', 'HÃ  Ná»i', 'Báº¯c Ninh', '2024-01-30', '0325645856', 'phamngocthaikma@gmail.com', '0', '296224', '2024-03-01 00:00:00', 0, NULL),
	('1709200174834', 'anhyeuem34343', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'Pháº¡m VÄn', 'Ná»¯', 'Báº¯c Kanj', 'HÃ  Ná»i', 'Báº¯c Ninh', '2024-02-17', '0325645856', 'phamngocthaikma@gmail.com', '0', '901924', '2024-03-01 00:00:00', 0, NULL),
	('1709226553803', 'user12345', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'ThÃ¡i pháº¡m', 'Ná»¯', 'Báº¯c Giang', 'HÃ  Ná»i', 'Báº¯c Ninh', '2024-03-21', '0325645856', 'phamngocthaikma@gmail.com', '0', '930858', '2024-03-02 00:00:00', 0, NULL),
	('1709226903969', 'user4455', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'ThÃ¡i pháº¡m', 'Ná»¯', 'Báº¯c Kanj', 'HÃ  Ná»i', 'Báº¯c Ninh', '2024-03-14', '0325645856', 'phamngocthaikma@gmail.com', '0', '364874', '2024-03-02 00:00:00', 0, NULL),
	('1709227855772', 'anhyeuem12244', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'Thái phạm', 'Nữ', 'Bắc Ninh', 'Hà Nội', 'Bắc Ninh', '2024-03-14', '0325645856', 'phamngocthaikma@gmail.com', '0', '179738', '2024-03-02 00:00:00', 0, NULL),
	('1709266863678', 'ngocthai1', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'Thái phạm', 'Nữ', 'Bắc Giang', 'Hà Nội', 'Bắc Ninh', '2024-03-13', '0325645856', 'phamngocthaikma@gmail.com', '0', '406540', '2024-03-02 00:00:00', 1, NULL),
	('1714801159283', 'thai123', 'YH4dlAAQX3GP4+asEaLFLU3OrFI=', 'Thái phạm', 'Nam', 'Bắc Giang', 'Hà Nội', 'Bắc Ninh', '2002-05-07', '0325645856', 'sgklop77@gmail.com', '1', '470479', '2024-05-05 00:00:00', 1, NULL);

-- Dumping structure for table myweb.sanpham
CREATE TABLE IF NOT EXISTS `sanpham` (
  `masanpham` varchar(255) NOT NULL,
  `tensanpham` varchar(255) DEFAULT NULL,
  `matacgia` varchar(255) DEFAULT NULL,
  `namxuatban` int(11) DEFAULT NULL,
  `gianhap` double DEFAULT NULL,
  `giagoc` double DEFAULT NULL,
  `giaban` double DEFAULT NULL,
  `soluong` double DEFAULT NULL,
  `matheloai` varchar(255) DEFAULT NULL,
  `ngonngu` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  PRIMARY KEY (`masanpham`),
  KEY `FK__tacgia` (`matacgia`),
  KEY `FK_sanpham_theloai` (`matheloai`),
  CONSTRAINT `FK__tacgia` FOREIGN KEY (`matacgia`) REFERENCES `tacgia` (`matacgia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_sanpham_theloai` FOREIGN KEY (`matheloai`) REFERENCES `theloai` (`matheloai`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table myweb.sanpham: ~5 rows (approximately)
INSERT INTO `sanpham` (`masanpham`, `tensanpham`, `matacgia`, `namxuatban`, `gianhap`, `giagoc`, `giaban`, `soluong`, `matheloai`, `ngonngu`, `mota`) VALUES
	('001', 'Sách 1', 'TG01', 2002, 15000, 23000, 25000, 100, 'TL1', 'Tiếng Việt', 'mô tả về sách 1'),
	('002', 'Sách 2', 'TG02', 2006, 17000, 15000, 20000, 97, 'TL2', 'Tiếng Việt', 'mô tả về sách 2'),
	('003', 'Sách 3', 'TG03', 2000, 20000, 18000, 25000, 12, 'TL3', 'Tiếng Việt', 'mô tả về sách 3'),
	('004', 'Sách 4', 'TG04', 2001, 22000, 19000, 30000, 45, 'TL4', 'Tiếng Việt', 'mô tả về sách 4'),
	('005', 'Sách 5', 'TG05', 2002, 24000, 20000, 35000, 35, 'TL5', 'Tiếng Việt', 'mô tả về sách 5');

-- Dumping structure for table myweb.tacgia
CREATE TABLE IF NOT EXISTS `tacgia` (
  `matacgia` varchar(255) NOT NULL,
  `hovaten` varchar(255) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `tieusu` text DEFAULT NULL,
  PRIMARY KEY (`matacgia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table myweb.tacgia: ~5 rows (approximately)
INSERT INTO `tacgia` (`matacgia`, `hovaten`, `ngaysinh`, `tieusu`) VALUES
	('TG01', 'Phạm Ngọc Thái', '2024-02-24', 'tieu su da bi thay doi!'),
	('TG02', 'Nguyễn Văn A', '2022-02-24', 'Giới thiệu 2'),
	('TG03', 'Trần Anh Tuấn', '2024-05-25', 'Giới thiệu 3'),
	('TG04', 'Trần Thị Thu Huyền', '2023-08-25', 'Giới thiệu 4'),
	('TG05', 'Nguyễn Văn Long', '2018-02-25', 'Giới thiệu 5');

-- Dumping structure for table myweb.theloai
CREATE TABLE IF NOT EXISTS `theloai` (
  `matheloai` varchar(255) NOT NULL,
  `tentheloai` varchar(255) NOT NULL,
  PRIMARY KEY (`matheloai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table myweb.theloai: ~5 rows (approximately)
INSERT INTO `theloai` (`matheloai`, `tentheloai`) VALUES
	('TL1', 'Giáo Trình'),
	('TL2', 'Truyện Tranh'),
	('TL3', 'Trinh thám'),
	('TL4', 'Ngôn Tình'),
	('TL5', 'Tình Cảm');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
