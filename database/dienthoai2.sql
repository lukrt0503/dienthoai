

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;



DROP TABLE IF EXISTS `danhmuc`;
CREATE TABLE IF NOT EXISTS `danhmuc` (
  `madm` int(11) NOT NULL AUTO_INCREMENT,
  `tendm` varchar(50) NOT NULL,
  `dequi` int(11) NOT NULL,
  PRIMARY KEY (`madm`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO `danhmuc` (`madm`, `tendm`, `dequi`) VALUES
(1, 'Điện thoại', 0),
(2, 'Phụ kiện', 0),
(3, 'Sam sung', 1),
(4, 'Iphone', 1),
(5, 'Sony', 1),
(6, 'LG', 1),
(7, 'Pin', 2),
(8, 'Bao da - Ốp lưng', 2),
(9, 'Tai nghe', 2),
(10, 'Thẻ nhớ', 2),
(11, 'Nokia', 1),
(12, 'Sky', 1),
(13, 'Black Berry', 1),
(14, 'Sạc', 2);




DROP TABLE IF EXISTS `nguoidung`;
CREATE TABLE IF NOT EXISTS `nguoidung` (
  `idnd` int(11) NOT NULL AUTO_INCREMENT,
  `tennd` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `ngaydangky` date NOT NULL,
  `phanquyen` int(11) NOT NULL,
  PRIMARY KEY (`idnd`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;



INSERT INTO `nguoidung` (`idnd`, `tennd`, `username`, `password`, `ngaysinh`, `gioitinh`, `email`, `dienthoai`, `diachi`, `ngaydangky`, `phanquyen`) VALUES
(3, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2014-05-02', 'nam', 'admin@dev.info', 939206009, 'can tho', '2022-04-20', 1),
(4, 'Trường', 'truong', '96e79218965eb72c92a549dd5a330112', '1993-12-02', 'nam', 'truong@dev.info', 939206009, 'can tho', '2022-04-20', 1);

-- --------------------------------------------------------





DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `idsp` int(11) NOT NULL AUTO_INCREMENT,
  `tensp` varchar(50) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `mau` varchar(20) NOT NULL,
  `chitiet` text NOT NULL,
  `soluong` int(11) NOT NULL,
  `daban` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `khuyenmai1` int(11) NOT NULL,
  `khuyenmai2` varchar(255) NOT NULL,
  `madm` int(11) NOT NULL,
  `ngaycapnhat` date NOT NULL,
  `trangthai` int(11) NOT NULL,
  PRIMARY KEY (`idsp`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;



INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(4, 'Samsung A23', 'Samsung A23.jpg', '',20, 8, 5000000, 0, 'Tai nghe', 3, '2022-05-20', 0),
(9, 'Samsung A22', 'Samsung A22.jpg', '',20, 14, 3000000, 0, '', 3, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(10, 'Samsung A32', 'Samsung A32.jpg', '',20, 2, 6000000, 0, '', 3, '2022-05-20', 0),
(11, 'Samsung M33', 'Samsung M33.jpg', '',20, 2, 7000000, 0, '', 3, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(12, 'Samsung A33', 'Samsung A33.jpg', '',20, 1, 10000000, 0, '', 3, '2022-05-20', 0),
(13, 'Samsung A52', 'Samsung A52.jpg', '',20, 0, 15000000, 0, '', 3, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(14, 'Samsung A53', 'Samsung A53.jpg', '',20, 0, 13000000, 0, '', 3, '2022-05-20', 0),
(15, 'Samsung A73', 'Samsung A73.jpg', '',20, 0, 20000000, 0, '', 3, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(16, 'Samsung S20', 'Samsung S20.jpg', '',20, 1, 6500000, 0, '', 3, '2022-05-20', 0),
(17, 'Samsung S21', 'Samsung S21.jpg', '',20, 0, 8000000, 0, '', 3, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(18, 'Samsung Note 20', 'Samsung Note 20.jpg', '',20, 0, 1000000, 0, '', 3, '2022-05-20', 0),
(19, 'Samsung S22', 'Samsung S22.jpg', '', 20, 0, 800000, 0, '', 3, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(20, 'Samsung Z Flip1', 'Samsung Z Flip1.jpg', '',20, 0, 2000000, 0, '', 3, '2022-05-20', 0),
(21, 'Samsung Z Flip2', 'Samsung Z Flip2.jpg', '',20, 0, 4500000, 0, '', 3, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(22, 'Samsung Z Flip3', 'Samsung Z Flip3.jpg', '',  20, 0, 1500000, 0, '', 3, '2022-05-20', 0),
(23, 'Samsung Z Fold', 'Samsung Z Fold.jpg', '',20, 0, 5500000, 0, '', 3, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(24, 'Sony Xperia C C2305', '20140520013542Sony Xperia C C2305.jpg', '',20, 0, 10000000, 0, '', 3, '2022-05-20', 0),
(25, 'Sony Xperia M C1905', '20140520013606Sony Xperia M C1905.jpg', '',20, 0, 4000000, 0, '', 3, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(26, 'Iphone 11', 'Iphone 11.jpg', '',20, 0, 8000000, 0, '', 4, '2022-05-20', 0),
(27, 'Iphone 12', 'Iphone 12.jpg', '',20, 1, 9000000, 0, '', 4, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(28, 'Iphone 13', 'Iphone 13.jpg', '', 20, 0, 3000000, 0, '', 4, '2022-05-20', 0),
(29, 'Iphone X', 'Iphone X.jpg', '',20, 0, 900000, 0, '', 4, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(30, 'Iphone 8', 'Iphone 8.jpg', '',20, 0, 6000000, 0, '', 4, '2022-05-20', 0),
(31, 'Iphone 7', 'Iphone 7.jpg', '',20, 0, 4000000, 0, '', 4, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(32, 'Iphone 6', 'Iphone 6.jpg', '', 20, 0, 7000000, 0, '', 4, '2022-05-20', 0),
(33, 'Iphone 6s', 'Iphone 6s.jpg', '', 20, 0, 1500000, 0, '', 4, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(34, 'Iphone 6plus', 'Iphone 6plus.jpg', '',20, 0, 5000000, 0, '', 4, '2022-05-20', 0),
(35, 'Iphone 6s plus', 'Iphone 6s plus.jpg', '',20, 0, 16000000, 10, '', 4, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(36, 'Iphone SE', 'Iphone SE.jpg', '',20, 0, 8600000, 0, '', 4, '2022-05-20', 0),
(37, 'Iphone 11 promax', 'Iphone 11 promax.jpg', '', 20, 0, 5000000, 0, '', 4, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(38, 'Iphone 12 promax', 'Iphone 12 promax.jpg', '',20, 0, 700000, 0, '', 4, '2022-05-20', 0),
(39, 'Iphone 13 promax', 'Iphone 13 promax.jpg', '', 20, 0, 3500000, 0, '', 4, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(40, 'Iphone 5', 'Iphone 5.jpg', '',20, 0, 2000000, 0, '', 4, '2022-05-20', 0),
(41, 'Iphone 5s', 'Iphone 5s.jpg', '',20, 0, 9000000, 0, '', 4, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(42, 'Iphone Xs', 'Iphone Xs.jpg', '',20, 0, 20000000, 0, '', 4, '2022-05-20', 0),
(43, 'Sony Xperia C C2305', '20140520014847Sony Xperia C C2305.jpg', '', 20, 0, 13000000, 0, '', 5, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(44, 'Sony Xperia P', '20140520014917Sony Xperia P.jpg', '',20, 1, 9000000, 0, '', 5, '2022-05-20', 0),
(45, 'Sony Xperia Z', '20140520015043Sony Xperia Z.jpg', '',20, 0, 5000000, 0, '', 5, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(46, 'Sony Xperia Z2', '20140520015135Sony Xperia Z2.jpg', '', 20, 0, 6000000, 0, '', 5, '2022-05-20', 0),
(47, 'LG Optimus Z1', '20140520015320lg1.jpg', '',20, 0, 15000000, 0, '', 6, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(48, 'LG 5080', '20140520020016lg2.jpg', '',20, 1, 5000000, 0, '', 6, '2022-05-20', 0),
(50, 'Connspeed CP3 – Pin sạc dự phòng', '201405201607091.jpg', '',20, 0, 439000, 0, '', 7, '2022-05-20', 0),
(51, 'Genius ECO-u500 - Pin sạc dự phòng', '201405201608571 (2).jpg', '',20, 1, 500000, 0, '', 7, '2022-05-20', 0),
(52, 'Nokia BL-4D – Pin điện thoại', '201405201611102.jpg', '', 20, 0, 800000, 0, '', 7, '2022-05-20', 0),
(53, 'Nokia BL-4J – Pin điện thoại', '201405201611393.jpg', '',20, 0, 400000, 0, '', 7, '2022-05-20', 0),
(54, 'Reloader 10000 - Pin dự phòng  10000mAh', '201405201616184.jpg', '',20, 0, 600000, 0, '', 7, '2022-05-20', 0),
(55, 'Samsung EB-L1G6LLUCSTD', '201405201616445.jpg', '', 20, 0, 300000, 0, '', 7, '2022-05-20', 0),
(56, 'Samsung Pouch (EFC-1J9LCEGSTD)', '20140520161826Samsung Pouch (EFC-1J9LCEGSTD) - Samsung Galaxy Note II.jpg', '',20, 0, 636000, 0, '', 7, '2022-05-20', 0),
(57, 'YSD- PW 037 - Pin sạc dự phòng ', '201405201622098.jpg', '',20, 0, 1000000, 0, '', 7, '2022-05-20', 0),
(58, 'YSD- PW 006 - Pin sạc dự phòng', '201405201621247.jpg', '',20, 0, 300000, 0, '', 7, '2022-05-20', 0),
(59, 'iLuv Overlay - iPhone 5', '20140520162347iLuv Overlay (iCA7H305BLK) - iPhone 5.jpg', '',20, 0, 200000, 0, '', 8, '2022-05-20', 0),
(60, 'Pisen iPhone 4 IP05 – iPhone 44S', '2014052016280913.jpg', '',20, 1, 300000, 0, '', 8, '2022-05-20', 0),
(61, 'Pisen iPhone 4 IP07 – iPhone 4 4S', '2014052016275712.jpg', '',20, 1, 159000, 0, '', 8, '2022-05-20', 0),
(62, 'Pisen iPhone 4 IP09 – iPhone 4 / 4S', '2014052016274111.jpg', '',20, 0, 500000, 0, '', 8, '2022-05-20', 0),
(63, 'Pisen Samsung Galaxy Note I9220', '20140520162541Pisen Samsung Galaxy Note I9220.jpg', '',20, 0, 236000, 0, '', 8, '2022-05-20', 0),
(64, 'Samsung EF – Galaxy S4 Vàng', '2014052016261610.jpg', '',20, 0, 650000, 0, '', 8, '2022-05-20', 0),
(65, 'Samsung Pouch - Samsung Galaxy Note II', '2014052016293614.jpg', '', 20, 0, 363000, 0, '', 8, '2022-05-20', 0),
(66, 'Zenus Galaxy Note 3 G-Note Diary', '2014052016301915.jpg', '',20, 0, 160000, 0, '', 8, '2022-05-20', 0),
(67, 'Zenus Sony Xperia Z1 Minimal Diary', '2014052016310616.jpg', '',20, 0, 265000, 0, '', 8, '2022-05-20', 0),
(68, 'Bose SIE2i - Tai nghe (Cam)', '20140520163552tn1.jpg', '',20, 0, 230000, 0, '', 9, '2022-05-20', 0),
(69, 'Jabra Easygo - Tai nghe bluetooth (Trắng)', '20140520163623tn2.jpg', '',20, 0, 500000, 0, '', 9, '2022-05-20', 0);
INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(70, 'Skullcandy S2DUDZ-012 - (Xanh dương)', '20140520163747tn3.jpg', '',20, 0, 360000, 0, '', 9, '2022-05-20', 0),
(71, 'Skullcandy S2IKDZ-003 - Đen', '20140520163825tn4.jpg', '',20, 0, 180000, 0, '', 9, '2022-05-20', 0),
(72, 'Sony MDR EX450 - Trắng', '20140520163923tn5.jpg', '',20, 0, 436000, 0, '', 9, '2022-05-20', 0),
(73, 'Sony MH-EX300AP – kèm mic (Đen)', '20140520164000tn6.jpg', '',20, 0, 560000, 0, '', 9, '2022-05-20', 0),
(74, 'Kingston MicroSDHC Class4', '20140520164239Kingston MicroSDHC Class4.jpg', '',20, 0, 100000, 0, '', 10, '2022-05-20', 0),
(75, 'Sandisk MicroSD Card', '20140520164311Sandisk MicroSD Card.jpg', '',20, 0, 230000, 0, '', 10, '2022-05-20', 0),
(76, 'silicon-power 4G', '20140520164343silicon-power-1239-150021-1-zoom.jpg', '', 20, 0, 620000, 0, '', 10, '2022-05-20', 0),
(77, 'Thẻ nhớ Transcend Micro SDHC4 - 4GB', '20140520164417t1.jpg', '',20, 0, 280000, 30, '2 Pin chất lượng cao', 10, '2022-05-20', 0),
(78, 'Toshiba Micro SDHC Class 10', '20140520164437Toshiba Micro SDHC Class 10.jpg', '',20, 0, 400000, 0, 'Ốp lưng', 10, '2022-05-20', 0),
(82, 'Sony Xperia C', '20140526013154Sony Xperia C C2305.jpg', '',20, 0, 6000000, 0, 'Tai nghe chinh hang', 3, '2022-05-26', 0);





COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
