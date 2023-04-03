-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 09, 2021 lúc 02:09 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` int(11) NOT NULL,
  `Admin_Name` varchar(255) NOT NULL,
  `Admin_User` varchar(255) NOT NULL,
  `Admin_Pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`Admin_ID`, `Admin_Name`, `Admin_User`, `Admin_Pass`) VALUES
(1, 'Nguyễn Tấn Huy', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `brand_ID` int(11) NOT NULL,
  `brand_Name` varchar(200) NOT NULL,
  `category_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`brand_ID`, `brand_Name`, `category_ID`) VALUES
(16, 'Hàng nữ mới về', 25),
(17, 'Túi', 25),
(18, 'Hàng nam mới về', 24),
(19, 'Quần nam', 24),
(20, 'Hành mới về trẻ em', 26),
(21, 'Draw the Dream', 26),
(22, 'Đầm', 25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_ID` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_ID`, `category_name`) VALUES
(24, 'NAM'),
(25, 'NỮ'),
(26, 'TRẺ EM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `city`
--

CREATE TABLE `city` (
  `city_ID` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `city`
--

INSERT INTO `city` (`city_ID`, `city_name`) VALUES
(1, 'Đà Nẵng'),
(2, 'Quảng Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color_product`
--

CREATE TABLE `color_product` (
  `color_ID` int(11) NOT NULL,
  `image_color` varchar(255) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `color_product`
--

INSERT INTO `color_product` (`color_ID`, `image_color`, `color_name`) VALUES
(3, 'maudo.jpg', 'Màu đỏ'),
(5, 'mauvang.png', 'Màu vàng'),
(6, 'mauden.png', 'Màu đen'),
(7, 'mauxanhbien.png', 'Màu xanh'),
(8, 'Nude.webp', 'Nude'),
(9, 'XanhTimThan.webp', 'Xanh Tím Than'),
(10, 'VangHoaCuc.webp', 'Vàng Hoa Cúc'),
(11, 'MauTrang.webp', 'Màu trắng'),
(12, '017.webp', 'Xanh Lơ'),
(13, '014.webp', 'Tím lavender'),
(14, 'k17.webp', 'Kẻ Xanh Lơ'),
(15, '018.webp', 'Bạc hà'),
(16, '014.webp', 'Hồng Đào'),
(17, '005.webp', 'Gold'),
(18, '010.webp', 'Cam'),
(19, '002.webp', 'Be'),
(20, '008.webp', 'Xanh Oli'),
(21, '042.webp', 'Tím Nhạt'),
(22, '032.webp', 'Đỏ Ruby'),
(23, '025.webp', 'Chì'),
(24, '041.webp', 'Xanh Dương Đậm'),
(25, '038.webp', 'Xanh Dương'),
(26, 'h10.webp', 'Hoạ Tiết Cam'),
(27, '011.webp', 'Vàng Nghê');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_ID` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Date_of_birth` varchar(255) NOT NULL,
  `Sex` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_ID`, `image`, `Name`, `Email`, `Password`, `Phone`, `Date_of_birth`, `Sex`, `Address`) VALUES
(32, 'chibi.jpg', 'Nguyễn  Huy', 'a@gmail.com', '202cb962ac59075b964b07152d234b70', '0123123123', '01/01/1970', 'Nam', '27, Phường Phước Mỹ, Quận Sơn Trà, Đà Nẵng'),
(33, 'chibi2.jpg', 'Trần Linh', 'nthuy@gmail.com', '202cb962ac59075b964b07152d234b70', '0231231234', '12/06/2000', 'Nữ', '13, Phường Tân Chính, Quận Thanh Khê, Đà Nẵng'),
(37, 'th.jpg', 'Lê Phương', 'nthuy1@gmail.com', '202cb962ac59075b964b07152d234b70', '0905385798', '01/01/1970', 'Nam', 'e2, Phường Hòa Phát, Quận Cẩm Lệ, Đà Nẵng'),
(41, 'th.jpg', 'ẻ', 'tanhuyqn6789@gmail.com', '4297f44b13955235245b2497399d7a93', '0389973178', '', '', '23, Phường Hòa Phát, Quận Cẩm Lệ, Đà Nẵng'),
(42, 'th.jpg', 'ad', 'tanhuyqn6789@gmail.com.vn', '4297f44b13955235245b2497399d7a93', '0389971231', '', '', '123, Phường Hòa Thuận Đông, Quận Cẩm Lệ, Đà Nẵng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `des_product`
--

CREATE TABLE `des_product` (
  `des_ID` int(11) NOT NULL,
  `product_ID` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `store` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `des_product`
--

INSERT INTO `des_product` (`des_ID`, `product_ID`, `description`, `store`) VALUES
(29, 'SP100', '<p>&Aacute;o len &ocirc;m cổ cao, tay s&aacute;t n&aacute;ch. D&aacute;ng &aacute;o &ocirc;m cơ thể.&nbsp;</p>\r\n\r\n<p>Được thiết kế kiểu d&aacute;ng thời trang, th&iacute;ch hợp mix với nhiều trang phục kh&aacute;c nhau: Zu&yacute;p, quần Jeans, legging....Với chất len mềm, mịn chiếc &aacute;o sẽ trở n&ecirc;n item đắt gi&aacute; trong m&ugrave;a Thu Đ&ocirc;ng n&agrave;y.</p>\r\n\r\n<p>M&agrave;u sắc: Nude - Đen - Xanh Lơ</p>\r\n\r\n<p><strong>Mẫu mặc size M:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m70</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;47kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-60-90</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>You</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ khác</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Sát nách</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>&Ocirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Dài thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Len</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(30, 'SP101', '<p>Đầm dạ hội cổ thuyền, kh&ocirc;ng tay. Mặt trước xếp kiểu. Eo chiết. T&ugrave;ng d&agrave;i qua gối, xẻ gấu ph&iacute;a sau. C&agrave;i bằng kh&oacute;a k&eacute;o ẩn sau lưng.</p>\r\n\r\n<p>Với chất liệu vải Th&ocirc;&nbsp;được dập nổi, d&aacute;ng &ocirc;m sang trọng tạo sự tinh tế v&agrave; quyến rũ. Chi tiết phối vải v&agrave; hoa&nbsp;nổi chắc chắn sẽ mang đến cho chị em vẻ đẹp ki&ecirc;u sa v&agrave; duy&ecirc;n d&aacute;ng nhất trong c&aacute;c buổi tiệc hoặc đi gặp đối t&aacute;c c&aacute;c dịp quan trọng.</p>\r\n\r\n<p>M&agrave;u sắc: Nude - Trắng</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<p><strong>Chiều cao:&nbsp;</strong>1m66<br />\r\n<strong>C&acirc;n nặng:</strong>&nbsp;48kg<br />\r\n<strong>Số đo 3 v&ograve;ng:&nbsp;</strong>78-61-88</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Senora</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Đầm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ thuy&ecirc;̀n</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Kh&ocirc;ng tay</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Đầm &ocirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Qua g&ocirc;́i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>D&acirc;̣p n&ocirc;̉i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Th&ocirc;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(31, 'SP102', '<p>Đầm thun cổ cut-out c&oacute; xoắn n&uacute;t c&aacute;ch điệu. Tay lỡ. D&aacute;ng đầm &ocirc;m, eo chiết. T&ugrave;ng d&agrave;i qua gối. C&agrave;i bằng kh&oacute;a k&eacute;o ẩn ph&iacute;a sau.</p>\r\n\r\n<p>Vải thun mềm mịn &ecirc;m &aacute;i v&agrave; th&acirc;n thiện với l&agrave;n da.&nbsp;Một ch&uacute;t kh&eacute;o l&eacute;o trong kh&acirc;u mix &amp; match c&ugrave;ng phụ kiện chiếc đầm sẽ gi&uacute;p bạn trở n&ecirc;n duy&ecirc;n d&aacute;ng hơn, xinh đẹp hơn trong mắt mọi người.</p>\r\n\r\n<p>M&agrave;u sắc: Xanh T&iacute;m Than</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m66</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;48kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-61-88 cm</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Đầm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ cách đi&ecirc;̣u</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay lỡ</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Đầm &ocirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Qua g&ocirc;́i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Thun</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(32, 'SP103', '<p>&Aacute;o thun cổ tr&ograve;n, tay ngắn. D&aacute;ng d&agrave;i xu&ocirc;ng. Mặt trước trang tr&iacute; b&ocirc;ng hoa v&agrave; đ&iacute;nh hạt giả ngọc trai tạo kiểu.</p>\r\n\r\n<p>Chất liệu thun mang đặc t&iacute;nh co d&atilde;n, thấm h&uacute;t mồ h&ocirc;i vượt trội mang đến vẻ đẹp trẻ trung, năng động cho người mặc. Sản phẩm ph&ugrave; hợp với thời trang dạo phố, đi chơi, đi l&agrave;m...</p>\r\n\r\n<p>M&agrave;u sắc: V&agrave;ng hoa c&uacute;c - Đen</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m70</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;47kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-60-90</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ tròn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay ngắn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Xu&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Dài thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(33, 'SP104', '<p>T&uacute;i mini bag c&oacute; nắp được chần b&ocirc;ng ch&eacute;o. C&oacute; quai da x&aacute;ch, d&acirc;y da đeo ch&eacute;o đi k&egrave;m c&oacute; thể điều chỉnh được.&nbsp;Kho&aacute; kim loại c&oacute; d&acirc;y tua rua in ch&igrave;m logo ph&iacute;a trước. B&ecirc;n trong 1 ngắn lớn - 2 ngăn nhỏ</p>\r\n\r\n<p><strong>K&iacute;ch thước t&uacute;i:</strong>&nbsp;Cao x R&ocirc;̣ng x S&acirc;u: 15&nbsp;x 21&nbsp;x 9&nbsp;cm</p>\r\n\r\n<p>M&agrave;u sắc: Đen - T&iacute;m Lavender</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Accessories</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>T&uacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Mini Bag</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Kh&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Da Pu</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(34, 'SP105', '<p>Đầm ren &ocirc;m cổ V. Tay ngắn. Phần &aacute;o c&oacute; trang tr&iacute; h&agrave;ng khuy nửa ngọc trai, 2 t&uacute;i vu&ocirc;ng b&ecirc;n ngực. Eo chiết, t&ugrave;ng v&aacute;y &ocirc;m nhẹ d&agrave;i ngang gối. C&agrave;i bằng kh&oacute;a k&eacute;o ẩn sau lưng. Viền đường d&acirc;y &aacute;nh nhũ kh&aacute;c m&agrave;u ở gấu, eo v&agrave; cổ tạo điểm nhấn.</p>\r\n\r\n<p>Chất vải ren b&ecirc;n trong c&oacute; lớp l&oacute;t rời.&nbsp;Kh&ocirc;ng cần qu&aacute; mix&amp;match cầu kỳ, n&agrave;ng chắc chắn vẫn sẽ nổi bật v&agrave; tỏa s&aacute;ng một c&aacute;ch tự nhi&ecirc;n nhất trong chiếc đầm ren bắt mắt&nbsp;n&agrave;y.</p>\r\n\r\n<p>M&agrave;u sắc: Đen - Trắng</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m66</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;48kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-61-88 cm</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Đầm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ tròn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay ngắn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Đầm &ocirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Ngang g&ocirc;́i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Ren</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(35, 'SP106', '<p>&Aacute;o c&oacute; thiết kế trẻ trung đơn giản, cổ mũ c&oacute; d&acirc;y&nbsp;(kh&ocirc;ng th&aacute;o rời). Bo thun co gi&atilde;n&nbsp;ở cổ tay gi&uacute;p người mặc tr&ocirc;ng gọn g&agrave;ng, vừa vặn hơn. C&oacute; thể mặc c&ugrave;ng quần đồng bộ MS&nbsp;22E3095</p>\r\n\r\n<p>Được l&agrave;m&nbsp;từ chất liệu Polyester cao cấp gi&uacute;p cho những sản phẩm n&agrave;y c&oacute; được sự chống nước rất tốt. Kh&ocirc;ng bai, x&ugrave;, nh&atilde;o,...khi mặc theo thời gian. Khả năng chống tĩnh điện, chống b&aacute;m bụi v&agrave; giữ ấm hiệu quả.</p>\r\n\r\n<p>M&agrave;u sắc: Đen -&nbsp;Xanh Cổ Vịt Đậm</p>\r\n\r\n<p><strong>Mẫu mặc size XL:</strong></p>\r\n\r\n<p><strong>Chiều cao:</strong>&nbsp;1m84<br />\r\n<strong>C&acirc;n nặng:</strong>&nbsp;71kg<br />\r\n<strong>Số đo 3 v&ograve;ng</strong>:&nbsp;95-76-96cm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Men</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o kho&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>Cổ mũ</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay d&agrave;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Su&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Polyester</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(36, 'SP107', '<p>Quần jeans ống đứng.&nbsp;Gấu lật. C&oacute; 5 túi. Mặt trước m&agrave;i s&aacute;ng. C&agrave;i ph&iacute;a trước bằng kh&oacute;a k&eacute;o v&agrave; khuy. D&aacute;ng quần Slim fit l&agrave; sản phẩm must-have trong tủ đồ của bạn v&igrave; t&iacute;nh ứng dụng rất cao.&nbsp;Ph&ugrave; hợp với mọi tỉ lệ cơ thể cũng như biến h&oacute;a với gần như tất cả outfit của bạn.&nbsp;</p>\r\n\r\n<p>- Th&agrave;nh phần chủ yếu cotton: Mềm mại, an to&agrave;n cho da nhạy cảm nhất<br />\r\n-&nbsp;Kh&ocirc;ng sử dụng c&aacute;c chất l&agrave;m m&agrave;u, h&oacute;a chất độc. Khi mua jeans, kh&aacute;ch h&agrave;ng được tặng g&oacute;i h&uacute;t ẩm để bảo quản sp tối ưu<br />\r\n-&nbsp;C&oacute; độ bền cao, hạn chế phai, bạc m&agrave;u: Kh&oacute;a YKK, c&uacute;c được sản xuất ri&ecirc;ng. Qu&aacute; tr&igrave;nh giặt cầm m&agrave;u cho m&agrave;u bền hơn.</p>\r\n\r\n<p>M&agrave;u sắc: Xanh Lơ</p>\r\n\r\n<p><strong>Mẫu mặc size 31:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m86</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;75kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 100-82-98 cm</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Men</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Quần</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Slim fit</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Qua mắt c&aacute; ch&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Denim</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(37, 'SP108', '<p>&Aacute;o kho&aacute;c d&aacute;ng bomber cho b&eacute; g&aacute;i. Tay &aacute;o d&agrave;i. Cổ v&agrave; gấu tay, gấu &aacute;o được l&agrave;m bằng thun g&acirc;n co gi&atilde;n. 2 t&uacute;i ch&eacute;o 2 b&ecirc;n. Trang tr&iacute; h&igrave;nh ph&iacute;a trước. C&agrave;i bằng khuy bấm kim loại.</p>\r\n\r\n<p>M&agrave;u sắc: T&iacute;m Lavender</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Girl</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o kho&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>Cổ kh&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay d&agrave;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Xu&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Ngang m&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Thun</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(38, 'SP109', '<p>&Aacute;o sơ mi cổ đức, tay ngắn viền ở gấu. Vải họa tiết bắt mắt. C&agrave;i bằng h&agrave;ng khuy ph&iacute;a trước. Chất vải Th&ocirc; m&aacute;t, thấm h&uacute;t mồ h&ocirc;i cho b&eacute;.</p>\r\n\r\n<p>M&agrave;u sắc: Hoa tiết Trắng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Boy</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ đức</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay ngắn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Kh&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Dài thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Họa ti&ecirc;́t khác</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Th&ocirc;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(39, 'SP110', '<p>&Aacute;o vest kiểu d&aacute;ng d&agrave;i ngang h&ocirc;ng. Cổ sen. Tay &aacute;o d&agrave;i. 2 t&uacute;i vu&ocirc;ng c&oacute; nắp ph&iacute;a trước. H&agrave;ng khuy c&agrave;i giả ngọc trai. C&oacute; thể mix c&ugrave;ng ch&acirc;n v&aacute;y&nbsp;MS 31M6899 đồng bộ - bộ đồ thời trang lại cổ điển. Vải họa tiết dập nổi, c&oacute; lớp l&oacute;t lụa b&ecirc;n trong.</p>\r\n\r\n<p>H&oacute;a c&ocirc;ng nương xinh đẹp, thanh lịch đang dạo bước trong cung điện của m&igrave;nh, n&agrave;ng to&aacute;t l&ecirc;n vẻ đẹp sang trọng đầy ki&ecirc;u sa trong set đồ m&agrave;u xanh ho&agrave;ng gia, cổ điển.</p>\r\n\r\n<p><strong>Mẫu mặc size M:</strong></p>\r\n\r\n<p>Chiều cao: 1m78<br />\r\nC&acirc;n nặng: 55kg<br />\r\nSố đo 3 v&ograve;ng: 88-64-95cm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o kho&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>Cổ kh&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay d&agrave;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Xu&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Ngang h&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Tuysi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(40, 'SP111', '<p>&Aacute;o kho&aacute;c dạ cổ hai ve kho&eacute;t chữ K. D&aacute;ng bo eo. Tay d&agrave;i. C&agrave;i khuy ph&iacute;a trước.</p>\r\n\r\n<p>Với chất liệu &aacute;ol&agrave;m bằng L&ocirc;ng cừu cao cấp,&nbsp;kh&acirc;u tay 100% với c&aacute;c mũi kh&acirc;u được kh&acirc;u tỉ mỉ kh&eacute;o l&eacute;o kh&ocirc;ng l&agrave;m lộ chỉ.&nbsp;Với đặc điểm mềm, mỏng, nhẹ v&agrave; giữ ấm tuyệt đối. &Aacute;o kho&aacute;c dạ &eacute;p l&ocirc;ng cừu đ&atilde; trở th&agrave;nh item kh&ocirc;ng thể thiểu của ph&aacute;i đẹp mỗi khi đ&ocirc;ng về.&nbsp;Nắm bắt kịp xu hướng cũng như nhu cầu n&agrave;y, IVY moda đ&atilde; cho ra đời BST &aacute;o kho&aacute;c dạ &eacute;p l&ocirc;ng cừu kh&acirc;u tay cao cấp đạt chuẩn với nhiều kiểu d&aacute;ng, m&agrave;u sắc cho ph&aacute;i đẹp lựa chọn.</p>\r\n\r\n<p>Kiểu &aacute;o n&agrave;y kh&ocirc;ng chỉ ấm &aacute;p m&agrave; c&ograve;n khiến bạn dễ phối đồ với rất nhiều kiểu đồ v&agrave; phụ kiện kh&aacute;c nhau từ quần jean, legging tới gi&agrave;y cao g&oacute;t hay bốt cao cổ, khăn qu&agrave;ng cổ,&hellip;</p>\r\n\r\n<p>M&agrave;u sắc: Đen - Đỏ Ruby - Nude</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m68</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;48kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-64-88 cm</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o kho&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>Cổ hai ve</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay d&agrave;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Eo</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Ngang bắp ch&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Dạ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n');
INSERT INTO `des_product` (`des_ID`, `product_ID`, `description`, `store`) VALUES
(41, 'SP112', '<p>&Aacute;o vest cổ hai ve kho&eacute;t chữ K tay &aacute;o lỡ. Vai c&oacute; đệm. D&aacute;ng &ocirc;m&nbsp;với độ d&agrave;i ngang m&ocirc;ng. 1 viền t&uacute;i ngang tr&ecirc;n ngực v&agrave;&nbsp;2 t&uacute;i c&oacute; nắp&nbsp;mặt trước. C&oacute; thể kết hợp c&ugrave;ng quần lửng v&agrave; &aacute;o Gile đồng bộ.</p>\r\n\r\n<p>Quần lửng&nbsp;ống su&ocirc;ng, cạp cao.&nbsp;C&oacute; 2 t&uacute;i ch&eacute;o. C&oacute; thể mix c&ugrave;ng &aacute;o Gile v&agrave; &aacute;o Vest đồng bộ.</p>\r\n\r\n<p>Mang kiểu d&aacute;ng đơn giản,&nbsp;rộng vừa phải, dễ mặc v&agrave; dễ phối c&ugrave;ng những kiểu &aacute;o kh&aacute;c, gi&uacute;p người mặc thể hiện được sự chỉnh chu nhưng vẫn thanh lịch v&agrave; thời trang. Đặc biệt, chất liệu Tuysi&nbsp;đứng phom sẽ gi&uacute;p n&agrave;ng t&ocirc;n được đ&ocirc;i ch&acirc;n d&agrave;i đồng thời cũng c&oacute; t&aacute;c dụng gi&uacute;p đ&ocirc;i ch&acirc;n th&ecirc;m thon gọn.</p>\r\n\r\n<p>Suit 3 mảnh (bao gồm &aacute;o kho&aacute;c, quần &acirc;u v&agrave; gi-le). Gile&nbsp;như một tấm đệm giữa, để gi&uacute;p bộ vest th&ecirc;m chỉnh chu, sang trọng trong sắc hồng ngọt ng&agrave;o.&nbsp;Xu hướng nữ quyền được IVY moda kết hợp giữa vẻ đẹp thanh lịch, sang trọng nhưng vẫn đề cao sự thoải m&aacute;i, dễ chịu từ phom d&aacute;ng đến chất liệu mềm mại.</p>\r\n\r\n<p>M&agrave;u sắc: Đen - Hồng Đ&agrave;o</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m70</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;47kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-60-90</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>Cổ 2 ve</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay dài</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>&Ocirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Dài thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Tuysi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(42, 'SP113', '<p>Quần d&agrave;i ống su&ocirc;ng. Cạp cao nửa ph&iacute;a sau bằng&nbsp;co gi&atilde;n. 2 t&uacute;i ch&eacute;o 2 b&ecirc;n. C&oacute; thể kết hợp với &aacute;o 2 d&acirc;y&nbsp;MS 12B8700 đồng bộ.</p>\r\n\r\n<p>Sử dụng chất vải Cotton Th&ocirc; với khả năng thấm h&uacute;t,&nbsp;c&oacute; độ b&oacute;ng mượt v&agrave; mềm mại, chống chịu nhiệt tốt hơn v&agrave; &iacute;t bị ảnh hưởng hơn so với c&aacute;c chất liệu kh&aacute;c. Với set n&agrave;y bạn c&oacute; thể mặc ở nh&agrave;, đi dạo phố hay gặp gỡ bạn b&egrave; trong 1 buổi chiều cuối tuần rất bắt mắt v&agrave; thu h&uacute;t.</p>\r\n\r\n<p>M&agrave;u sắc:&nbsp; V&agrave;ng hoa c&uacute;c -&nbsp;Đỏ Huyết Dụ</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m70</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;47kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-60-90</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>You</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Quần</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>&Ocirc;́ng su&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Ngang mắt c&aacute; ch&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Th&ocirc;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(43, 'SP114', '<p>&Aacute;o cổ tr&ograve;n, tay s&aacute;t n&aacute;ch. D&aacute;ng peplum may xếp nếp ph&iacute;a dưới. C&agrave;i bằng khuy giọt lệ ph&iacute;a sau.</p>\r\n\r\n<p>Bằng chất liệu vải lụa b&oacute;ng&nbsp;mềm mại,&nbsp;c&oacute; khả năng giữ được m&agrave;u sắc tốt, kh&oacute; bị phai m&agrave;u. D&aacute;ng &aacute;o dễ mix c&ugrave;ng ch&acirc;n zu&yacute;p &ocirc;m body&nbsp; hoặc quần ống loe, ống rộng gi&uacute;p n&agrave;ng hack chiều cao một c&aacute;ch tối đa.</p>\r\n\r\n<p>M&agrave;u sắc: Nude - Đen</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m70</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;47kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-60-90</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ tròn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Sát nách</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Peplum</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Dài thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Lụa</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(44, 'SP115', '<p>V&iacute; da mini tiện lợi kh&ocirc;ng kh&oacute;a v&agrave; 3 ngăn xếp phụ. In logo IVY moda</p>\r\n\r\n<p>Với những đường chần chỉ tinh tế v&agrave; những tone m&agrave;u cực ăn &yacute; với mọi trang phuc tạo sức hấp dẫn kh&oacute; cưỡng cho phong c&aacute;ch của bạn.</p>\r\n\r\n<p><strong>K&iacute;ch thước:</strong></p>\r\n\r\n<p>M&agrave;u sắc: Gold - Đỏ Ruby</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Accessories</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>T&uacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>V&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Da Pu</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(45, 'SP116', '<p>T&uacute;i x&aacute;ch Big size sọc ch&eacute;o chần b&ocirc;ng&nbsp;đan kiểu.&nbsp;B&ecirc;n trong l&oacute;t vải. C&oacute; 1 ngăn lớn d&acirc;y k&eacute;o kh&oacute;a&nbsp;b&ecirc;n trong c&oacute; 2 ngăn nhỏ đi k&egrave;m.&nbsp;Quai x&aacute;ch ngang kh&ocirc;ng&nbsp;th&aacute;o rời được. D&acirc;y đeo ch&eacute;o rời c&oacute; thể điều chỉnh được. C&oacute; charm d&agrave;i&nbsp;đi k&egrave;m.</p>\r\n\r\n<p><strong>K&iacute;ch thước t&uacute;i:</strong>&nbsp;</p>\r\n\r\n<p>M&agrave;u sắc: Cam - N&acirc;u c&agrave; ph&ecirc;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Accessories</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>T&uacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Big size</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Kh&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Da Pu</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(46, 'SP117', '<p>T&uacute;i da mềm kh&ocirc;ng nắp - c&agrave;i bằng d&acirc;y k&eacute;o kh&oacute;a. Ngăn b&ecirc;n trong c&oacute; 2 ngăn phụ. T&uacute;i c&oacute; 2 d&acirc;y thay đổi - 1 d&acirc;y quấn &amp; 1 d&acirc;y phối x&iacute;ch. In logo IVY moda ph&iacute;a trước.</p>\r\n\r\n<p><strong>K&iacute;ch thước t&uacute;i:</strong>&nbsp;</p>\r\n\r\n<p>M&agrave;u sắc: Be - N&acirc;u c&agrave; ph&ecirc;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Accessories</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>T&uacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Medium</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Kh&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Da Pu</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(47, 'SP118', '<p>Thiết kế đứng phom, D&aacute;ng kh&ocirc;ng nắp c&agrave;i bằng d&acirc;y k&eacute;o kh&oacute;a. D&acirc;y đeo da đ&ocirc;i đi k&egrave;m. B&ecirc;n trong l&oacute;t vải. Kh&ocirc;ng c&oacute; nắp.&nbsp;Thiết kế kiểu&nbsp;đan kiểu.</p>\r\n\r\n<p><strong>K&iacute;ch thước:</strong>&nbsp;</p>\r\n\r\n<p>M&agrave;u sắc: Be - Gold</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Accessories</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>T&uacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Medium</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Kh&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Da Pu</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(48, 'SP119', '<p>T&uacute;i clutch chần b&ocirc;ng c&oacute;&nbsp;3 ngăn lớn, c&aacute;c ngăn nhỏ b&ecirc;n trong v&agrave; một ngăn kh&oacute;a k&eacute;o b&ecirc;n trong t&uacute;i.</p>\r\n\r\n<p>Từ l&acirc;u, t&uacute;i clutch nữ h&agrave;ng hiệu đ&atilde; trở th&agrave;nh một m&oacute;n đồ xa xỉ kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp khi xuống phố, khi đi dự tiệc hay tụ tập bạn b&egrave;. Một chiếc clutch kh&ocirc;ng chỉ gi&uacute;p ph&aacute;i nữ đựng đồ d&ugrave;ng, trang thiết bị c&aacute; nh&acirc;n m&agrave; c&ograve;n khoe ra sự đẳng cấp, thời thượng.</p>\r\n\r\n<p><strong>K&iacute;ch thước:</strong></p>\r\n\r\n<p>M&agrave;u sắc: Nude - Đen</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Accessories</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>T&uacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Clucht</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Kh&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Da Pu</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(49, 'SP120', '<p>T&uacute;i x&aacute;ch hobo mini quai cắp n&aacute;ch. D&aacute;ng kh&ocirc;ng nắp đ&oacute;ng mở bằng khuy bấm nam ch&acirc;m.&nbsp;T&uacute;i h&igrave;nh cong, 1 ngăn lớn (b&ecirc;n trong c&oacute; 2 ngăn nhỏ)</p>\r\n\r\n<p><strong>K&iacute;ch thước t&uacute;i:</strong>&nbsp;</p>\r\n\r\n<p>M&agrave;u sắc:&nbsp;Xanh Oliu -&nbsp;V&agrave;ng hoa c&uacute;c&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Accessories</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>T&uacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Mini Bag</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Kh&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Da Pu</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(50, 'SP121', '<p>V&iacute; da mini tiện lợi c&oacute; d&acirc;y k&eacute;o kh&oacute;a ch&iacute;nh v&agrave; 3 ngăn xếp phụ. In logo IVY moda</p>\r\n\r\n<p>Với những đường chần chỉ tinh tế v&agrave; những tone m&agrave;u cực ăn &yacute; với mọi trang phuc tạo sức hấp dẫn kh&oacute; cưỡng cho phong c&aacute;ch của bạn.</p>\r\n\r\n<p><strong>K&iacute;ch thước:</strong></p>\r\n\r\n<p>M&agrave;u sắc: Gold - T&iacute;m Nhạt</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Accessories</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>T&uacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>V&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Da Pu</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(51, 'SP122', '<p>Đầm x&ograve;e cổ đức c&aacute;ch điệu. D&aacute;ng kh&ocirc;ng tay. H&agrave;ng khuy bấm mặt trước, Đai rời bản to - mặt kim loại&nbsp;c&ugrave;ng m&agrave;u đi k&egrave;m. T&ugrave;ng x&ograve;e với độ d&agrave;i ngang bắp ch&acirc;n. C&agrave;i bằng kh&oacute;a k&eacute;o ẩn ph&iacute;a sau.</p>\r\n\r\n<p>L&agrave; thiết kế đến từ sự đơn giản,&nbsp;mộc mạc của thời trang hiện nay. Phần đai&nbsp;thắt nơ eo sẽ gi&uacute;p n&agrave;ng trẻ trung v&agrave; năng động hơn rất nhiều. Thiết kế đầm n&agrave;y, sẽ gi&uacute;p n&agrave;ng xinh đẹp nơi c&ocirc;ng sở, cũng như n&eacute;t trẻ trung năng động của những buổi dạo chơi.</p>\r\n\r\n<p>M&agrave;u sắc: Nude</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m66</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;48kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-61-88</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Ladies</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Đầm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ cách đi&ecirc;̣u</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Kh&ocirc;ng tay</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Đầm x&ograve;e</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Ngang bắp</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Tuysi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(52, 'SP123', '<p>Đầm nhung cổ vu&ocirc;ng, vai bồng. Tay lỡ&nbsp;c&oacute; độ xếp nếp. Eo chiết. Trang tr&iacute; 2 nắp t&uacute;i giả v&agrave; khuy.&nbsp;T&ugrave;ng v&aacute;y x&ograve;e, d&agrave;i tr&ecirc;n gối. C&agrave;i bằng kh&oacute;a k&eacute;o ẩn sau lưng.</p>\r\n\r\n<p>Sử dụng vải nhung d&agrave;y dặn, b&ecirc;n trong c&oacute; l&oacute;t vải tạo cảm gi&aacute;c thoải m&aacute;i.&nbsp;Điểm nhấn phần cổ đặc biệt với chi tiết tay khuy trang tr&iacute;. Tay &aacute;o phồng nhẹ thanh lịch. Tất cả được kết hợp h&agrave;i h&ograve;a tạo n&ecirc;n một chiếc v&aacute;y v&ocirc; c&ugrave;ng nữ t&iacute;nh duy&ecirc;n d&aacute;ng. Gam m&agrave;u đơn sắc&nbsp;sang trọng, nổi bật v&agrave; nịnh da.</p>\r\n\r\n<p>M&agrave;u sắc: Đỏ</p>\r\n\r\n<p><strong>Mẫu mặc size S:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Chiều cao:</strong></em>&nbsp;1m66</li>\r\n	<li><em><strong>C&acirc;n nặng:</strong></em>&nbsp;48kg</li>\r\n	<li><em><strong>Số đo 3 v&ograve;ng</strong></em>: 78-61-88 cm</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>You</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Đầm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ vu&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay lỡ</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Đầm x&ograve;e</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Tr&ecirc;n g&ocirc;́i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Nhung</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(53, 'SP124', '<p>&Aacute;o kho&aacute;c thun nam d&aacute;ng bomber (kh&ocirc;ng mũ). Cổ viền thun g&acirc;n co gi&atilde;n. Tay &aacute;o d&agrave;i bo gấu. C&oacute; 2 t&uacute;i ch&eacute;o. C&agrave;i bằng d&acirc;y k&eacute;o kh&oacute;a ph&iacute;a trước.</p>\r\n\r\n<p>D&aacute;ng &aacute;o oversize,&nbsp;phom d&aacute;ng thoải m&aacute;i. Bạn c&oacute; thể phối c&ugrave;ng &aacute;o Hoodie, &aacute;o thun d&aacute;ng rộng quần jeans, jogger... để c&oacute; set đồ năng động v&agrave; trẻ trung nhất!</p>\r\n\r\n<p>M&agrave;u sắc: Nude - Đen - Xanh Lơ</p>\r\n\r\n<p><strong>Mẫu mặc size XL:</strong></p>\r\n\r\n<p>Chiều cao:&nbsp;1m84<br />\r\nC&acirc;n nặng:&nbsp;71kg<br />\r\nSố đo 3 v&ograve;ng:&nbsp;95-76-96cm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Men</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o kho&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>Kh&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay d&agrave;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Over size</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Kh&aacute;c</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n');
INSERT INTO `des_product` (`des_ID`, `product_ID`, `description`, `store`) VALUES
(54, 'SP125', '<p>&Aacute;o thun nam tay d&agrave;i, cổ lọ c&oacute; d&acirc;y k&eacute;o kh&oacute;a bằng kim loại. Tay d&agrave;i, bo tay v&agrave; gấu &aacute;o. C&oacute; 2 t&uacute;i ch&eacute;o 2 b&ecirc;n. Th&ecirc;u h&igrave;nh 1 b&ecirc;n ngực tạo điểm nhấn.</p>\r\n\r\n<p>Chất liệu thun d&agrave;y dặn, c&oacute; độ mềm mịn v&agrave; giữ nhiệt nhiều quả.&nbsp;Mix c&ugrave;ng quần jeans, short c&ugrave;ng 1 đ&ocirc;i gi&agrave;y thể thao c&aacute; t&iacute;nh bạn c&oacute; set đồ trẻ trung trong m&ugrave;a Thu Đ&ocirc;ng n&agrave;y rồi.</p>\r\n\r\n<p>M&agrave;u sắc: Xanh T&iacute;m Than&nbsp;- Trắng</p>\r\n\r\n<p><strong>Mẫu mặc size L:</strong></p>\r\n\r\n<p>Chiều cao:&nbsp;1m85<br />\r\nC&acirc;n nặng:&nbsp;75kg<br />\r\nSố đo 3 v&ograve;ng:&nbsp;100-78-95 cm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Men</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ lọ</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay dài</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Regular</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Dài thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Th&ocirc;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(55, 'SP126', '<p>Quần d&agrave;i khaki kiểu d&aacute;ng Slim, đai quần c&oacute; đỉa. 2 t&uacute;i ch&eacute;o trước, 2 t&uacute;i sau c&oacute; khuy c&agrave;i. Thiết kế tối giản, c&aacute;c chi tiết may tỉ mỉ, tinh tế, mang đến diện mạo chỉn chu, lịch l&atilde;m cho người mặc. C&agrave;i bằng kh&oacute;a k&eacute;o v&agrave; khuy c&agrave;i.</p>\r\n\r\n<p>Chất liệu Khaki tho&aacute;ng m&aacute;t, thấm h&uacute;t mồ h&ocirc;i tốt v&agrave; khả năng giữ bền form d&aacute;ng sau nhiều lần giặt.</p>\r\n\r\n<p>M&agrave;u sắc: Đen - Be</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Men</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Quần</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Slim</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Qua mắt c&aacute; ch&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Khaki</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(56, 'SP127', '<p>Quần d&agrave;i đai khuy lệch 1 b&ecirc;n, cạp&nbsp;c&oacute; đỉa. C&oacute; 2 t&uacute;i ch&eacute;o. Quần d&aacute;ng&nbsp;Regular.</p>\r\n\r\n<p>Với độ &ocirc;m vừa phải, t&ocirc;n d&aacute;ng v&agrave; che khuyết điểm rất tốt&nbsp;mang lại vẻ hiện đại, đẳng cấp. Được l&agrave;m bằng chất liệu Tuysi c&oacute; độ thấm h&uacute;t cao, hạn chế&nbsp;nhăn nh&agrave;u giữ cho d&aacute;ng quần lu&ocirc;n như mới.</p>\r\n\r\n<p>M&agrave;u sắc: Ch&igrave;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Men</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Quần</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Regular</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Qua mắt c&aacute; ch&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Tuysi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(57, 'SP128', '<p>&Aacute;o kho&aacute;c phao may kiểu chần b&ocirc;ng c&oacute; mũ tr&ugrave;m đầu, s&aacute;t n&aacute;ch. C&agrave;i kh&oacute;a k&eacute;o ph&iacute;a trước, cổ thấp, c&oacute; mũ tr&ugrave;m đầu.</p>\r\n\r\n<p>B&ecirc;n trong nhồi b&ocirc;ng d&agrave;y dặn với phom d&aacute;ng chuẩn c&ugrave;ng đường may tỉ mỉ. T&iacute;nh năng giữ nhiệt, chống nước, độ bền cao.</p>\r\n\r\n<p>M&agrave;u sắc:&nbsp;Xanh Dương Đậm -&nbsp;Đỏ Ruby - Cam</p>\r\n\r\n<p><strong>Số đo mẫu nh&iacute;:</strong>&nbsp;1m20 - 20kg</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Boy</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o kho&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>Cổ mũ</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Kh&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Su&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Polyester</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(58, 'SP129', '<p>&Aacute;o thun cổ tr&ograve;n, tay d&agrave;i bo gấu. In chữ v&agrave; h&igrave;nh kh&aacute;c m&agrave;u ph&iacute;a trước.</p>\r\n\r\n<p>M&agrave;u sắc: Xanh Dương</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Boy</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ tròn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay dài</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Regular</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Dài thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Thun</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(59, 'SP130', '<p>Zu&yacute;p họa tiết 2 lớp, xếp tầng kiểu x&ograve;e. Họa tiết hoa bắt mắt v&agrave; nổi bật. Cạp chun co gi&atilde;n.</p>\r\n\r\n<p>M&agrave;u sắc: Họa tiết Cam</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Girl</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>Zu&yacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Xòe</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Tr&ecirc;n g&ocirc;́i</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Hoa</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Th&ocirc;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n'),
(60, 'SP131', '<p>&Aacute;o thun tay ngắn, cổ kiểu diềm b&egrave;o. C&oacute; 3 khuy c&agrave;i. D&aacute;ng &aacute;o xu&ocirc;ng.</p>\r\n\r\n<p>M&agrave;u sắc: V&agrave;ng Nghệ -&nbsp;Hồng Phấn</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>Girl</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ khác</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay ngắn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Xu&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Dài thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Thun</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.</p>\r\n'),
(62, 'SP132', '<p>&Aacute;o sơ mi cổ vu&ocirc;ng. Tay d&agrave;i bằng vải phối. D&aacute;ng &aacute;o Peplum c&oacute; 6 đ&iacute;nh trang tr&iacute;. C&agrave;i bằng kh&oacute;a k&eacute;o ph&iacute;a sau.</p>\r\n\r\n<p>Vẻ đẹp quyến rũ đầy b&iacute; ẩn của c&ocirc;ng nương được khoe kh&eacute;o qua lớp vải sheer kết hợp c&ugrave;ng chất liệu cổ điển tweed. N&agrave;ng mix c&ugrave;ng quần ống loe, ch&acirc;n v&aacute;y c&aacute;c loại để c&oacute; set đồ thời thượng nhất nh&eacute;</p>\r\n\r\n<p>M&agrave;u sắc: Đen</p>\r\n\r\n<p><strong>Mẫu mặc size M:</strong></p>\r\n\r\n<p>Chiều cao: 1m78<br />\r\nC&acirc;n nặng: 55kg<br />\r\nSố đo 3 v&ograve;ng: 88-64-95cm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:70%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>D&ograve;ng sản phẩm</strong></td>\r\n			<td>You</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nh&oacute;m sản phẩm</strong></td>\r\n			<td>&Aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cổ &aacute;o</strong></td>\r\n			<td>C&ocirc;̉ tròn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tay &aacute;o</strong></td>\r\n			<td>Tay dài</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu d&aacute;ng</strong></td>\r\n			<td>Peplum</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ d&agrave;i</strong></td>\r\n			<td>Dài thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Họa tiết</strong></td>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Tweed</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Chi tiết bảo quản sản phẩm :&nbsp;</p>\r\n\r\n<p>* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tr&aacute;nh bai d&atilde;n.</p>\r\n\r\n<p>* Vải voan , lụa , chiffon n&ecirc;n giặt bằng tay.</p>\r\n\r\n<p>* Vải th&ocirc; , tuytsy , kaki kh&ocirc;ng c&oacute; phối hay trang tr&iacute; đ&aacute; cườm th&igrave; c&oacute; thể giặt m&aacute;y.</p>\r\n\r\n<p>* Vải th&ocirc;&nbsp;, tuytsy, kaki c&oacute;&nbsp;phối m&agrave;u tường phản hay trang tr&iacute; voan , lụa , đ&aacute; cườm th&igrave; cần giặt tay.</p>\r\n\r\n<p>* Đồ Jeans n&ecirc;n hạn chế giặt bằng m&aacute;y giặt v&igrave; sẽ l&agrave;m phai m&agrave;u jeans.Nếu giặt th&igrave;&nbsp;n&ecirc;n lộn tr&aacute;i sản phẩm khi giặt , đ&oacute;ng khuy , k&eacute;o kh&oacute;a, kh&ocirc;ng n&ecirc;n giặt chung c&ugrave;ng đồ s&aacute;ng m&agrave;u , tr&aacute;nh d&iacute;nh m&agrave;u v&agrave;o c&aacute;c sản phẩm kh&aacute;c.&nbsp;</p>\r\n\r\n<p>* C&aacute;c sản phẩm cần được giặt ngay kh&ocirc;ng ng&acirc;m tr&aacute;nh bị loang m&agrave;u , ph&acirc;n biệt m&agrave;u v&agrave; loại vải để tr&aacute;nh trường hợp vải phai. Kh&ocirc;ng n&ecirc;n giặt sản phẩm với x&agrave; ph&ograve;ng c&oacute; chất tẩy mạnh , n&ecirc;n giặt c&ugrave;ng x&agrave; ph&ograve;ng pha lo&atilde;ng.</p>\r\n\r\n<p>* C&aacute;c sản phẩm c&oacute; thể&nbsp;giặt bằng m&aacute;y th&igrave; chỉ n&ecirc;n để chế độ giặt nhẹ , vắt mức trung b&igrave;nh v&agrave; n&ecirc;n ph&acirc;n c&aacute;c loại sản phẩm c&ugrave;ng m&agrave;u v&agrave; c&ugrave;ng loại vải khi giặt.</p>\r\n\r\n<p>* N&ecirc;n phơi sản phẩm tại chỗ tho&aacute;ng m&aacute;t , tr&aacute;nh &aacute;nh nắng trực tiếp sẽ dễ bị phai bạc m&agrave;u , n&ecirc;n l&agrave;m kh&ocirc; quần &aacute;o bằng c&aacute;ch phơi ở những điểm gi&oacute; sẽ giữ m&agrave;u vải tốt hơn.</p>\r\n\r\n<p>* Những chất vải 100% cotton , kh&ocirc;ng n&ecirc;n phơi sản phẩm bằng mắc &aacute;o m&agrave; n&ecirc;n vắt ngang sản phẩm l&ecirc;n d&acirc;y phơi để tr&aacute;nh t&igrave;nh trạng rạn vải.</p>\r\n\r\n<p>* Khi ủi sản phẩm bằng b&agrave;n l&agrave; v&agrave; sử dụng chế độ hơi nước sẽ l&agrave;m cho sản phẩm dễ ủi phẳng , m&aacute;t v&agrave; kh&ocirc;ng bị ch&aacute;y , giữ m&agrave;u sản phẩm được đẹp v&agrave; bền l&acirc;u hơn. Nhiệt độ của b&agrave;n l&agrave; t&ugrave;y theo từng loại vải.&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `district_ID` int(11) NOT NULL,
  `district_name` varchar(255) NOT NULL,
  `city_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`district_ID`, `district_name`, `city_ID`) VALUES
(1, 'Quận Hải Châu', 1),
(2, 'Quận Cẩm Lệ', 1),
(3, 'Quận Thanh Khê', 1),
(4, 'Quận Liên Chiểu', 1),
(5, 'Quận Ngũ Hành Sơn', 1),
(6, 'Quận Sơn Trà', 1),
(7, 'Huyện Hòa Vang', 1),
(8, 'Huyện Hoàng Sa', 1),
(16, 'Thành phố Tam Kỳ', 2),
(17, 'Thành phố Hội An', 2),
(18, 'Huyện Tây Giang', 2),
(19, 'Huyện Đông Giang', 2),
(20, 'Huyện Đại Lộc', 2),
(21, 'Thị xã Điện Bàn', 2),
(22, 'Huyện Duy Xuyên', 2),
(23, 'Huyện Quế Sơn', 2),
(24, 'Huyện Nam Giang', 2),
(25, 'Huyện Phước Sơn', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `images_ID` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `product_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`images_ID`, `images`, `product_ID`) VALUES
(53, 'a7cb14b66c9847a9ecaa87e22bf03e81.jpg', 'SP100'),
(54, 'b95363c80c4338452e430cef1465a658.jpg', 'SP100'),
(55, 'd38009a6c91ee6b6885b8fdb39361016.jpg', 'SP100'),
(56, '44c752fe8fa03fc1b5b5a2cc26ee0322.jpg', 'SP101'),
(57, '447cd7abd8ad7faf831d6ef071db18de.jpg', 'SP101'),
(58, 'f7923a38280396ba2754aef830843429.jpg', 'SP101'),
(59, '2c91271fc166a0d7bf8ab55b432dd9c0.jpg', 'SP102'),
(60, '4f19236c8d8435a492adcb81759f7b87.jpg', 'SP102'),
(61, '5c18550b827500aa6c3362e2c6d229ce.jpg', 'SP102'),
(62, '787920d08ce3866b3d8b3d42b95021b1.jpg', 'SP102'),
(63, '7ecc48859605c7664e46352a77505d36.jpg', 'SP103'),
(64, '72a286aca6833fdfcd0d75f606c88241.jpg', 'SP103'),
(65, '0871965b2aca6b3cd9d004a4c79298ce.jpg', 'SP103'),
(66, 'd97c3e10d07d3729a98007f46debc326.jpg', 'SP103'),
(67, 'f1db58c73e728c53a45cf9664dfd68bc.jpg', 'SP103'),
(68, '251c0ca5417b26b260ff6a7e7c97cf91 (1).jpg', 'SP104'),
(69, '251c0ca5417b26b260ff6a7e7c97cf91.jpg', 'SP104'),
(70, '0a8aeb08b0038ed080d90837528a8aad.jpg', 'SP105'),
(71, '5eadfc3ecd7e39accb783dfdcc35a4e3.jpg', 'SP105'),
(72, '890afd2970d3f052307f559cb0b87f09.jpg', 'SP105'),
(73, '12023797b2b0d28d7251d5a1d2a89d2a.jpg', 'SP105'),
(74, 'd630d6350ac400e4d10e705470dbe158.jpg', 'SP105'),
(75, '5b8fbc984ee4c27f026b963b3dffab01.jpg', 'SP106'),
(76, 'b08d21e90b7824e6b1cd2ea53eea03b3.jpg', 'SP106'),
(77, 'b51df0e78759a43280abd6972c7d914e.jpg', 'SP106'),
(78, 'c93838721b614a96548bb11c1720e812.jpg', 'SP106'),
(79, '8c6d24085881d5cd538e927a7165a581.jpg', 'SP107'),
(80, '80eda86c79bedb4555a2561378dd8979.jpg', 'SP107'),
(81, '541491ddd93c0f8096d986e4fb3cfbab.jpg', 'SP107'),
(82, '730485a7a92ff1ba16a6da2f6118e484.jpg', 'SP107'),
(83, 'a561a068469326f5ef8ca74bd13fb8fc.jpg', 'SP107'),
(84, 'bb34e07a6d4d2f6b1f00a74d4ba64a3a.jpg', 'SP108'),
(85, 'c1007312f8744b689ddaf601cecd810f.jpg', 'SP108'),
(86, 'd9daa1d43bcc0919d4f439d75d8569ac.jpg', 'SP108'),
(87, 'ee93efdccbf472ef1c66a2ff7fd5d0f0.jpg', 'SP108'),
(88, '9f88ca7bfcf49366747815500ad597f4.jpg', 'SP109'),
(89, '27e9446f37d82c5941e7f4858ea65464.jpg', 'SP109'),
(90, '951f38de0471f42aa1f5364cec63d978.jpg', 'SP109'),
(91, 'a1995d84d93a17ec3b947bcb69146f86.jpg', 'SP109'),
(92, 'abb82b6d686e5b58038cad78851b853a.jpg', 'SP109'),
(93, '9f03da5e420ed3e151a5388b01381b07.jpg', 'SP110'),
(94, '9f88ca7bfcf49366747815500ad597f4.jpg', 'SP110'),
(95, '3340675132d36558d9047b7652df2875.jpg', 'SP110'),
(96, '05658457075061d9185f3b9649e8a4bb.jpg', 'SP110'),
(97, '26d3dd60ae558359bf395b989a089d07.jpg', 'SP111'),
(98, '80d23de09ed15367dad160d57e8057c1.jpg', 'SP111'),
(99, '91f89f018913464457936cec0ce4e9c2.jpg', 'SP111'),
(100, 'cf39eb743f42826a7352e1cb030c6e63.jpg', 'SP111'),
(101, 'e3a8c7a14591a21d0e0b643d22c1fce6.jpg', 'SP112'),
(102, 'e8c91988a92896f6416b91d272762e7f.jpg', 'SP112'),
(103, '5abcc47a7e8fd8d1cd66ea655267d764.jpg', 'SP112'),
(104, '79b3284ff828dc7b9ca31f30f7631dcf.jpg', 'SP112'),
(105, 'c2c96cc75d454a06bbfd8ca405247036.jpg', 'SP112'),
(106, '364c2ad13b6a19694b7d058746d2fd99.jpg', 'SP113'),
(107, 'afa7d80b4fc88e097abb29aa666d7d5f.jpg', 'SP113'),
(108, 'ecc66d703274a14f513bbe18e2deec47.jpg', 'SP113'),
(109, 'f67a5c86af4d42f1417f4c6df1ca9e0d.jpg', 'SP113'),
(110, '0bb1e3f9070511c84e6870959a441aee.jpg', 'SP114'),
(111, '3e22ecae8155e8957091eeb9e8aeffbd.jpg', 'SP114'),
(112, '647d4b8f3366c911cf6cdab1f81725cf.jpg', 'SP114'),
(113, '8770bd94c8845a2c940eb8d4bf11e485.jpg', 'SP114'),
(114, 'e373b8ac5c1cb3440baadbf986ee7ef6.jpg', 'SP114'),
(115, '3e88493e5239591b44cef2740d6a698e.jpg', 'SP115'),
(116, '53d2d148dd0ee84ec35333910eb13bcc.jpg', 'SP115'),
(117, 'b49ad58c77de01f0b452bf5b0091a44c.jpg', 'SP115'),
(118, 'c240ab61cbca1c6f54ee2c4f3c5ee096.jpg', 'SP115'),
(119, '00f174c99573deb8459aaf674ecf2993.jpg', 'SP116'),
(120, '98ad0db22de1ff5d58b3d0cf229ebe6e.jpg', 'SP116'),
(121, '994cd71436db1ca16087dae66950afc3 (1).jpg', 'SP116'),
(122, '728e31c491461976e213d448b6464071.jpg', 'SP117'),
(123, 'd44bdfb0b2661c314bcc7b7fb6c7ab0b.jpg', 'SP117'),
(124, 'e6d8ba9d516478859c909605910264b3.jpg', 'SP117'),
(125, 'fc07fb0393283f347ae61ef84c9d299f (1).jpg', 'SP117'),
(126, 'fc07fb0393283f347ae61ef84c9d299f.jpg', 'SP117'),
(127, '85ddcd20aaf9ac38184baa8ace8a0500.webp', 'SP118'),
(128, '02318fea2dbdd15786ed1f2aca38620a.jpg', 'SP118'),
(129, 'cecd5e85cd0e6faa0e8df0a158795cba.jpg', 'SP118'),
(130, 'f6044fc04206a67b123fa4952f2a71d6.jpg', 'SP118'),
(131, '3ad03f6975f2b6f00b0afc0345b14600.jpg', 'SP119'),
(132, '7a3219e9d585d5ab4e36b85a281a6385.jpg', 'SP119'),
(133, '709b47e80fd341d06860ed1a3c02edba.jpg', 'SP119'),
(134, '5197665f8fd32c966f247a2e5b9f2d09.jpg', 'SP119'),
(135, 'd122138fe82cf6b7adf3be5b09b2f9e8.jpg', 'SP119'),
(136, '8d489d5401806e397146da19becc238f.jpg', 'SP120'),
(137, '208bb14ef0d6c27e7a2503c3286c5288.jpg', 'SP120'),
(138, 'aaad7e729f084e465d950e940e6b47fe.jpg', 'SP120'),
(139, 'c213fa6f5aeb42eca9dc79d90ecf4bf6.jpg', 'SP120'),
(140, 'e28c103ee2eb86e968a6ba9f81a7583d.jpg', 'SP120'),
(141, '2cc43c111e2358ae710ae4482dcb4eea.jpg', 'SP121'),
(142, '7ea9c4c9f41fac983fceabfd007a9a87.jpg', 'SP121'),
(143, '90bd1c9c3ce8ab03bdeaf82b767b400a.jpg', 'SP121'),
(144, '424c2239cbae38b687bddf56a9ec7418.jpg', 'SP121'),
(145, 'cfd519087bf3720efc7d3d9936566e8c.jpg', 'SP121'),
(146, '00c0904f5505fb7b998337105c18dd48.jpg', 'SP122'),
(147, '2ef55150e00cdd9eb1c8bdd17f4bf996.jpg', 'SP122'),
(148, '9bdcb66b2f86cb750c5056dd2a1bf5a3.jpg', 'SP122'),
(149, '827b73a782ebde5bf3febd01dc195aed.jpg', 'SP122'),
(150, '3c857031bcc4785a9ec44d3a708a5393.jpg', 'SP123'),
(151, '947e9d8291bc9d1914757882424c17fe.jpg', 'SP123'),
(152, '83802a9fb3f9f9975641cf2238ec1e76.jpg', 'SP123'),
(153, 'b7ee201f191d2a19b651f9304db9df45.jpg', 'SP123'),
(154, 'fbbe5b99f9f9dddd4c671551fd3be3a2.jpg', 'SP123'),
(155, '31eb2c88296caa6b74f02bc3245eeb90.jpg', 'SP124'),
(156, '514f529c4155b5857a43f0e9587a3af0.jpg', 'SP124'),
(157, 'c9215ec3af6c33f7e4905ed1e646943d.jpg', 'SP124'),
(158, 'ecbb1c565681a331768b048da7eb6d84.jpg', 'SP124'),
(159, '0c3bd298457242214e11ad6f40cf7ebe.jpg', 'SP125'),
(160, '1f06875a229014f12f7005aef7134202.jpg', 'SP125'),
(161, '9fd56a9fa626640a418e695d543f2ea5.jpg', 'SP125'),
(162, '079cf8e18add8905b5e547c935523df0.jpg', 'SP125'),
(163, 'b05d003853c845fe993811409f22cf85.jpg', 'SP125'),
(164, '7c3cf48da31ca7a74d82f61cbbe26f12.webp', 'SP126'),
(165, '91d7682e4721d81b80f9932a52496345.webp', 'SP126'),
(166, 'b02f76c4901cdd72b43b44eb7f86e506.webp', 'SP126'),
(167, 'd92651695d27b5a3375c07a229e2fd7b.webp', 'SP126'),
(168, '7826334bf11398ab31687787b67f2da9.jpg', 'SP127'),
(169, '349817842cbb74aba4c7045bc3400066.jpg', 'SP127'),
(170, 'bee1e56030efb0dd3d08c8298b135ad8.jpg', 'SP127'),
(171, 'cec40744574606de9487411eebb641ab.jpg', 'SP127'),
(173, 'f0a5f6684f4a14a47fa19249b669eea8.jpg', 'SP127'),
(174, 'fbf3550e8130a8f3e29e4246c658a400.jpg', 'SP127'),
(175, '7d1144613c247825ba03f251db9b044e.jpg', 'SP128'),
(176, '9d4e2710260f7e8b5db366ed883b1a1e.jpg', 'SP128'),
(177, '49edb933728c09713db80ea9d6a4dec4.jpg', 'SP128'),
(178, '0679a8adee1a4fd31805f854d532c89b.jpg', 'SP128'),
(179, '77d42794cf70f445aa3d8ac6b4090359.jpg', 'SP129'),
(180, 'd585d1167a180db50e48bdf42906d91e.jpg', 'SP129'),
(181, 'ed4bb12e13977e001f25bb80397a0e89.jpg', 'SP129'),
(182, 'eec0c45f5eb4f2f6a28c092174fcedf2.jpg', 'SP129'),
(183, 'fb18fb5c5260fe74a8dcdf54e7164c40.jpg', 'SP129'),
(184, '079e6dada58381a861eddc5e7304308b.webp', 'SP130'),
(185, '0207a22a6bc507a53b344b5628af70d3.webp', 'SP130'),
(186, '20843ee930f050bf0b2c20c224c51d05.webp', 'SP130'),
(187, 'c52b8ef8a7beccef30ed1aa9a80998fa.webp', 'SP130'),
(188, '321ccc9cc8b1140dcb64db81aef809d9.webp', 'SP131'),
(189, 'aa6f9ac91de1c134676a577e8b7a286f.webp', 'SP131'),
(190, 'c06516effcfcc80efdc5687da476b4ba.webp', 'SP131'),
(194, '022b7561309f78c5be039f2d2f29acda.jpg', 'SP132'),
(195, '30fa6382b2c96b007068ad70b4c6e858.jpg', 'SP132'),
(196, '3625ee36814ab4710c1bab70576d792b.jpg', 'SP132'),
(197, 'f460f3c3cf6929547f11a772e6272b00.jpg', 'SP132');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `order_details_ID` int(11) NOT NULL,
  `order_ID` int(11) NOT NULL,
  `product_ID` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `post_ID` int(11) NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `post_Name` varchar(255) NOT NULL,
  `post_summary` text NOT NULL,
  `post_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`post_ID`, `post_image`, `post_Name`, `post_summary`, `post_content`) VALUES
(1, 'post1.jpg', 'Top những mẫu áo sơ mi đen đẹp cho chàng trai công sở', '<p>Áo sơ mi được mệnh danh là item phù hợp với các chàng trai công sở bởi sự thanh lịch, trang trọng và khả năng mix & match đỉnh cao với nhiều item khác nhau mà không lo bí ý tưởng phối đồ. Tuy nhiên, mặc <a href=\"http://localhost/DoAn/index/detail_post/1\">áo sơ mi đen</a> sao cho phù hợp với hoàn cảnh mà vẫn tự tin và thu hút ánh nhìn của đối phương là điều mà nhiều chàng trai chưa biết đến. Cùng <a href=\"http://localhost/DoAn/\">IVY moda</a> tìm hiểu những mẫu áo sơ mi đen đẹp, độc đáo cho chàng trai công sở qua bài viết này nhé!</p>\r\n', '<h2>Những mẫu áo sơ mi nam cực chất</h2>\r\n\r\n<h3>Áo sơ mi đen trơn ngắn tay</h3>\r\n\r\n<p>Áo sơ mi đen trơn ngắn tay là kiểu áo phổ biến nhất với sắc đen huyền bí làm nổi tôn da của chàng dòng thời đem lại cảm giác huyền bí mà vô cùng cuốn hút. Sức ảnh hưởng của những kiểu áo sơ mi đen luôn khiến các chàng phải  “thổn thức” bởi độ phù hợp, tinh tế khi mix cùng quần tây lịch lãm. </p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/26/dd86af4ea24200c919f59ec3cc44f203.jpg\" /></p>\r\n\r\n<p>Áo sơ mi đen trơn mix quần kẻ ô plaid hiện đại có thể đồng thùng hoặc không đóng thùng đều đẹp. </p>\r\n\r\n<h3>Sơ mi nam đen tay dài</h3>\r\n\r\n<p>Thời tiết se lạnh hoặc những dịp quan trọng sẽ thích hợp để mặc áo sơ mi dài tay hơn. Đặc biệt nếu chàng khéo léo và lựa chọn chất vải áo sơ mi tinh tế như chất vải denim cứng cáp và dày dặn. Với áo sơ mi dài tay sẽ phù hợp để mặc cùng áo vest hoặc phối đồ theo phong cách Smart Casual tinh tế. </p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/26/282124cba25c94886dfde23e6f355197.jpg\" /></p>\r\n\r\n<p>Áo sơ mi dài tay denim đen mix quần tây màu xanh rêu vừa lạ vừa quen tạo ấn tượng mạnh cho người nhìn. </p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/26/316e52ca6d75f403a910d4156ed1088c.jpg\" /></p>\r\n\r\n<p>Áo sơ mi đen dài tay mix cùng quần tây cứng cáp và đứng form mix cùng giày tây là sự kết hợp hoàn hảo. </p>\r\n\r\n<h3>Áo sơ mi đen kẻ trắng</h3>\r\n\r\n<p>Thay vì mặc những kiểu áo sơ mi đen trơn, chàng hãy thử cải thiện phong cách thời trang của mình với những mẫu áo sơ mi kẻ sọc đen - trắng mới lạ và dễ phối đồ hơn. Mang phong cách và kiểu dáng thiết kế của áo flannel nên được giới trẻ yêu thích. Không những vậy, kiểu áo sơ mi đen kẻ trắng sẽ tạo điểm nhấn nhá và làm cho item của chàng đậm chất riêng và cá tính hơn. </p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/26/96b8f001d33d78232944fac8c73b4ab7.jpg\" /></p>\r\n\r\n<p>Phong cách Street Style bụi bặm cùng áo sơ mi đen kẻ trắng và quần jean đen ấn tượng. </p>\r\n\r\n<h3>Áo sơ mi nam đen kẻ đỏ</h3>\r\n\r\n<p>Áo sơ mi đen kẻ đỏ là một trong những item được nhiều người lựa chọn bởi gam màu đỏ và đen kết hợp khá ăn ý với nhau. Hơn nữa, phần kẻ đỏ sẽ làm nổi bật lên item của chàng trên nền áo sơ mi đen khiến cho item của chàng bớt nhạt nhòa hơn đồng thời khi mix với các loại quần khác nhau sẽ vô cùng tôn dáng. </p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/26/5ad81c5cc67b1e0b9bcd376242b8fd77.jpg\" /></p>\r\n\r\n<p>Kiểu áo đơn giản phối kẻ sọc đen - trắng làm cho item áo sơ mi đen của chàng có điểm nhấn tạo sự nổi bật hơn.</p>\r\n\r\n<h3>Áo sơ mi đen họa tiết</h3>\r\n\r\n<p>Áo sơ mi đen sẽ kén người mặc hơn vì nó là gam màu tối. Tuy nhiên nếu các chàng lựa chọn những kiểu áo phối họa tiết sẽ làm nổi bật hơn và có điểm nhấn nhá sẽ dễ mặc và dễ phối đồ hơn. Áo sơ mi đen họa tiết sẽ tạo thành vũ khí lợi hại cho các chàng khi mặc đồ xuống phố kết hợp cùng quần chinos hoặc cargo trẻ trung, có thể phối cùng phụ kiện thời trang nam sành điệu hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/26/4c3962cda82d6aeafaa5f1acc96b295f.jpg\" /></p>\r\n\r\n<p>Áo sơ mi đen phối họa tiết hoa lá đơn giản màu trắng tạo điểm nhấn cho item khi mix cùng quần cargo và giày sneaker.</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/26/663611f8c7f2d741aa211abce1794075.jpg\" /></p>\r\n\r\n<p>Lựa chọn áo sơ mi cổ đức cách điệu dáng slimfit ôm sát cơ thể giúp chàng khoe được vóc dáng và trở thành trung tâm của mọi ánh nhìn ngưỡng mộ.</p>\r\n\r\n<h2>Cách chọn áo sơ mi đen phù hợp với vóc dáng </h2>\r\n\r\n<p>Để áo sơ mi đen trở nên phù hợp với vóc dáng của chàng cần cân nhắc về kiểu áo làm tôn da và có sự vừa vặn cả về  kích thước lẫn kiểu dáng. </p>\r\n\r\n<h3>Phần vai áo sơ mi</h3>\r\n\r\n<p>Phần vai áo sơ mi là điều quan trọng đầu tiên giúp chàng tạo được ấn tượng khi mặc sơ mi đen. Vai áo cần vừa vặn với phần vai của nam giới, không quá rộng hoặc quá chật sẽ làm mất form áo. Đặc biệt khi đóng thùng không gây cảm giác khó chịu từ phần vai xuống phần cánh tay của chàng. </p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/26/10caa63c8d4e68d5c9a16f6cac80e53c.jpg\" /></p>\r\n\r\n<p>Vai áo nên được may bằng đường chỉ nổi, dày dặn hơn bởi nó là điểm làm cân xứng cho item áo sơ mi đen của chàng. </p>\r\n\r\n<h3>Phần đường thẳng giữa các cúc áo</h3>\r\n\r\n<p>Cúc áo và chiều dài của áo là những điều đáng lưu ý thứ hai. Với áo sơ mi ngắn tay, cúc áo nên được thiết kế nhỏ, tinh tế hơn đồng thời phối túi vuông trước ngực tạo điểm nhấn và kiểu cách hơn cho item áo sơ mi đen trơn của chàng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/26/4f61a176ac1ec72e2d54166f7a302785.jpg\" /></p>\r\n\r\n<p>Lưu ý nhỏ khi phối đồ với áo sơ mi cần đảm bảo sự gọn gàng cho cả outfit tránh rườm rà gây khó nhìn cho đối phương mà lại không tạo được điểm nhấn. </p>\r\n\r\n<h2>Cách phối đồ với áo sơ mi đen nam đẹp cho chàng công sở</h2>\r\n\r\n<h3>Sơ mi đen nam kết hợp với quần jean trẻ trung năng động</h3>\r\n\r\n<p>Nếu đã quá quen với phong cách áo sơ mi nam mix cùng quần tây, chàng hãy thử phá cách với bản phối áo sơ mi đen mix quần jean rách. Với kiểu áo sơ mi đen sẽ giúp chàng che được khuyết điểm trên cơ thể đồng thời khi phối cùng quần jean sẽ có điểm tương đồng nhiều hơn cho outfit. Đặc biệt là phong cách Street Style đường phố cùng quần jean rách bụi bặm và áo sơ mi đen đầy cuốn hút. </p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/26/427baf0f75fb52ae632bbf0c26b0ee58.jpg\" /></p>\r\n\r\n<p>Bỏ qua sự lịch lãm của áo sơ mi đen cho chàng trai công sở, chàng hãy phá cách cùng áo sơ mi đen mix quần jean theo phong cách Street Style cá tính và năng động này. </p>\r\n\r\n<h3>Phong cách “tone sur tone” với áo sơ mi đen nam</h3>\r\n\r\n<p>Nhằm mang đến cho chàng những sự lựa chọn độc đáo và mới lạ hơn khi phối đồ với áo sơ mi đen, bản phối tone sur tone với áo sơ mi đen cho chàng sự nam tính pha chút huyền bí cuốn hút. Mix áo sơ mi đen họa tiết sọc trắng hoặc họa tiết chấm phá outfit của chàng sẽ trở nên lôi cuốn và tạo ấn tượng tốt với đối phương hơn. </p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/26/0d4e82d13fad5a4733f7499d8ef8741d.jpg\" /></p>\r\n\r\n<p>Áo sơ mi lụa, mềm mịn cho chàng vẻ đẹp thanh cao và lịch lãm đặc biệt khi kết hợp cùng quần chinos và giày thể thao trắng bắt mắt.</p>\r\n\r\n<h3>Áo sơ mi đen mix quần short năng động</h3>\r\n\r\n<p>Từ những chàng trai phong độ và điển trai trong áo sơ mi đen công sở đến những chàng trai theo phong cách đường phố, áo sơ mi đen đều là sự lựa chọn phù hợp và giúp chàng biến tấu phong cách nhanh gọn nhất. Trẻ trung và năng động trong item áo sơ mi đen mix cùng quần short ngắn cho chàng sự cá tính và phá cách. </p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/26/7fb7418b6c7da4027a141c00c3f21100.jpg\" /></p>\r\n\r\n<p>Áo sơ mi đen mix cùng quần short sáng màu làm nổi bật tông da khiến chàng trông giống những quý ông lịch lãm trong phong cách độc và lạ. </p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/26/8c9403e349ebcea7ba8366755adb5036.jpg\" /></p>\r\n\r\n<p>Cá tính và trẻ trung cùng áo sơ mi đen và quần short đen tone sur tone kết hợp phụ kiện thời trang nam cá tính, hút hồn phái đẹp.</p>\r\n\r\n<p>Áo sơ mi đen ngày càng khẳng định vị trí của mình trong tủ đồ <a href=\"https://ivymoda.com/danh-muc/ao-so-mi-nam\">áo sơ mi nam</a> của chàng. Đây chắc chắn là món đồ cần thiết cho chàng trong những ngày đổi gió và làm mới cho tủ đồ của chàng. Cùng IVY moda khám phá thêm nhiều mẫu áo sơ mi đẹp cho chàng tại Website/app IVY moda ngay hôm nay nhé!</p>\r\n'),
(2, '753d5eefb32a301c6562ffedaf479bd4.webp', 'Top những mẫu áo sơ mi tay ngắn đẹp dành cho phái mạnh', '<p>Nếu ch&agrave;ng đang t&igrave;m kiếm mẫu &aacute;o ngắn tay năng động cho m&ugrave;a h&egrave; th&igrave; kh&ocirc;ng thể bỏ qua item &aacute;o sơ mi hot hit d&agrave;nh cho ph&aacute;i mạnh. Kh&ocirc;ng chỉ mang đến vẻ đẹp lịch l&atilde;m v&agrave; phong độ cho ch&agrave;ng, &aacute;o sơ mi tay ngắn c&ograve;n đa dạng về kiểu d&aacute;ng &aacute;o như &aacute;o sơ mi kẻ caro, &aacute;o sơ mi lụa, &aacute;o sơ mi họa tiết, &hellip; C&ugrave;ng IVY moda t&igrave;m hiểu top những mẫu &aacute;o sơ mi tay ngắn đẹp nhất qua b&agrave;i viết n&agrave;y nh&eacute;!</p>\r\n', '<h2>Những mẫu &aacute;o sơ mi nam tay ngắn được y&ecirc;u th&iacute;ch</h2>\r\n\r\n<h3>Sơ mi ngắn tay chất vải linen</h3>\r\n\r\n<p>Chất vải linen đ&atilde; trở n&ecirc;n v&ocirc; c&ugrave;ng quen thuộc trong thiết kế &aacute;o sơ mi của ph&aacute;i mạnh. Đ&acirc;y l&agrave; item kinh điển trong tủ đồ &aacute;o sơ mi của ph&aacute;i mạnh bởi khả năng mix &amp; match đỉnh cao từ phong c&aacute;ch Casual đơn giản đến phong c&aacute;ch Smart Casual phức tạp hơn. Bắt đầu một ng&agrave;y mới với &aacute;o sơ mi linen cho ch&agrave;ng th&ecirc;m y&ecirc;u đời v&agrave; tr&agrave;n đầy sức sống hơn.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/d0027dfe1a3a0e3c04c21fd808289a0b.jpg\" /></p>\r\n\r\n<p>&Aacute;o sơ mi linen xanh r&ecirc;u cực t&acirc;y v&agrave; thời thượng cho ch&agrave;ng trai phong c&aacute;ch v&agrave; năng động.</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/2878589a7c53ae787dc7de76a561303b.jpg\" /></p>\r\n\r\n<p>&Aacute;o sơ mi đen tay ngắn l&agrave; item quen thuộc của ph&aacute;i mạnh, sử dụng trong nhiều dịp kh&aacute;c nhau đảm bảo sự trang trọng v&agrave; nghi&ecirc;m t&uacute;c.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/6b44cf7f7cfed9059ea0b14cce3135af.jpg\" /></p>\r\n\r\n<p>&Aacute;o sơ mi chất vải linen phối họa tiết kiểu cho trang phục của ch&agrave;ng th&ecirc;m phần m&agrave;u sắc v&agrave; trẻ trung hơn.&nbsp;</p>\r\n\r\n<h3>&Aacute;o sơ mi cộc tay Statement shirt</h3>\r\n\r\n<p>Statement shirt như một bản tuy&ecirc;n ng&ocirc;n thời trang của ph&aacute;i mạnh. N&oacute; l&agrave; sự kết hợp ho&agrave;n hảo của mẫu &aacute;o sơ mi ngắn tay vốn được coi l&agrave; khỏe khoắn v&agrave; tươi mới, n&ecirc;n việc kết hợp c&ugrave;ng c&aacute;c họa tiết hoa l&aacute; hay những m&agrave;u sắc bắt mắt ch&iacute;nh l&agrave; điểm nhấn quan trọng cho &aacute;o sơ mi cộc tay Statement shirt.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/a976294d8e67637cf52f2f9322211629.jpg\" /></p>\r\n\r\n<p>Kh&ocirc;ng đơn thuần l&agrave; những mẫu &aacute;o sơ mi tay ngắn đơn giản, Statement shirt cần c&oacute; những hoa văn v&agrave; họa tiết bắt mắt cho những người theo phong c&aacute;ch tự do, maximalism style.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/45846b61a25bb5d6d60e6f9868cb288f.jpg\" /></p>\r\n\r\n<p>Những bản phối hoặc mảng m&agrave;u tr&ecirc;n &aacute;o sơ mi cộc tay Statement shirt tạo sự kiểu c&aacute;ch v&agrave; năng động.</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/9718626f02fcf7e04fee3c048458ee00.jpg\" /></p>\r\n\r\n<p>Statement shirt c&oacute; mặt từ những s&agrave;n diễn nổi tiếng đến những phong c&aacute;ch ăn mặc thường nhật của ph&aacute;i mạnh.</p>\r\n\r\n<h3>Sơ mi nam ngắn tay hoạ tiết sọc</h3>\r\n\r\n<p>Thiết kế họa tiết sọc dọc tr&ecirc;n &aacute;o sơ mi được cho l&agrave; cơ bản nhất v&agrave; được ph&aacute;i mạnh hết sức ưa chuộng. Một ưu điểm vượt trội của &aacute;o sơ mi sọc dọc l&agrave; khả năng kết hợp m&agrave;u sắc h&agrave;i h&ograve;a v&agrave; khiến cho v&oacute;c d&aacute;ng của ch&agrave;ng thon gọn hơn. Đối với những họa tiết sọc ngang th&igrave; họa tiết sọc dọc c&oacute; vẻ an to&agrave;n hơn cho ph&aacute;i mạnh khi mix đồ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/d953c002fb7e669e7ea3eb2adf5c6a6e.jpeg\" /></p>\r\n\r\n<p>M&agrave;u sắc &aacute;o sơ mi sọc dọc ph&ugrave; hợp sẽ l&agrave;m nổi bật t&ocirc;n da của ch&agrave;ng hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/693fb83a53c12e786fbab7979faa23d6.jpg\" /></p>\r\n\r\n<p>Sử dụng họa tiết sọc dọc đ&uacute;ng c&aacute;ch sẽ l&agrave;m cho item của ch&agrave;ng sang hơn v&agrave; khi mix c&ugrave;ng những item kh&aacute;c sẽ tạo th&agrave;nh một bản phối ho&agrave;n chỉnh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/c323809805a0112d52b4c69c91f82324.jpg\" /></p>\r\n\r\n<p>&Aacute;o sơ mi ngắn tay họa tiết sọc dọc c&ugrave;ng ch&agrave;ng chinh phục những cuộc chơi, ph&ugrave; hợp để đi du lịch biển, hẹn h&ograve;.&nbsp;</p>\r\n\r\n<h3>&Aacute;o sơ mi cổ trụ (cuban collar shirt)</h3>\r\n\r\n<p>&Aacute;o sơ mi cổ trụ vừa mang n&eacute;t ph&oacute;ng kho&aacute;ng trẻ trung lại c&oacute; phần mang hơi hướng cổ điển, retro được kh&aacute; nhiều người ch&uacute; &yacute; trong thời gian gần đ&acirc;y. Với nhiều t&ecirc;n gọi kh&aacute;c nhau như&nbsp;<a href=\"https://ivymoda.com/tin-tuc/bai-viet/ao-so-mi-co-tru-368\">&aacute;o sơ mi cổ trụ</a>, &aacute;o sơ mi cổ hở, cổ chữ V, &aacute;o sơ mi mandarin, &hellip; nhưng tựu chung lại đ&acirc;y l&agrave; mẫu &aacute;o sơ mi ngắn tay c&aacute;c ch&agrave;ng n&ecirc;n thử để thay đổi phong c&aacute;ch thời trang của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/b38da017fd9bc8d13c53e3e61bf0ea08.jpg\" /></p>\r\n\r\n<p>&Aacute;o sơ mi cổ trụ xanh r&ecirc;u thời thượng phối t&uacute;i vu&ocirc;ng trước ngực tạo sự kiểu c&aacute;ch đem lại cho ch&agrave;ng vẻ đẹp cổ điển nhưng vẫn v&ocirc; c&ugrave;ng trẻ trung v&agrave; thời thượng.&nbsp;</p>\r\n\r\n<h3>&Aacute;o sơ mi họa tiết ca-r&ocirc;</h3>\r\n\r\n<p>&Aacute;o sơ mi họa tiết kẻ caro kh&ocirc;ng chỉ đem lại cho ch&agrave;ng vẻ đẹp tinh tế, đơn giản m&agrave; c&ograve;n l&agrave; c&aacute;ch dễ d&agrave;ng để g&acirc;y ấn tượng với đối phương m&agrave; kh&ocirc;ng cần thể hiện qu&aacute; lố. &Aacute;o sơ mi ngắn tay kẻ caro gi&uacute;p ch&agrave;ng nổi bật hơn giữa chốn đ&ocirc;ng người.</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/00827220dbcebe5e9fed55a2f3b245fe.jpg\" /></p>\r\n\r\n<p>&Aacute;o sơ mi kẻ sọc đỏ cho ch&agrave;ng vẻ đẹp cuốn h&uacute;t,&nbsp; tr&agrave;n đầy sức sống v&agrave; nhiệt huyết hơn.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/7f8790f8bd469c1e7bca37e9368fcc8e.jpg\" /></p>\r\n\r\n<p>Ph&ugrave; hợp với những chuyến đi chơi, nghỉ m&aacute;t, &aacute;o sơ mi họa tiết caro xứng đ&aacute;ng l&agrave; item c&aacute;c ch&agrave;ng n&ecirc;n thử cho m&ugrave;a h&egrave; n&agrave;y.&nbsp;</p>\r\n\r\n<h2>C&aacute;ch phối đồ với &aacute;o sơ mi tay ngắn lịch l&atilde;m cho ph&aacute;i mạnh</h2>\r\n\r\n<h3>C&aacute;ch phối &aacute;o vải linen</h3>\r\n\r\n<p>Ứng ph&oacute; linh hoạt với thời tiết m&agrave;u h&egrave; bằng những mẫu &aacute;o sơ mi chất vải linen cực tho&aacute;ng m&aacute;t cho ch&agrave;ng th&ecirc;m tỏa s&aacute;ng v&agrave; to&aacute;t ra năng lượng t&iacute;ch cực. Mang đậm phong c&aacute;ch của những qu&yacute; &ocirc;ng lịch l&atilde;m, ch&agrave;ng h&atilde;y phối &aacute;o sơ mi tay ngắn vải linen c&ugrave;ng quần t&acirc;y s&aacute;ng m&agrave;u v&agrave; những phụ kiện thời trang như k&iacute;nh r&acirc;m, gi&agrave;y loafers, sandal, &hellip;&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/c898c5aba227d13fb6ce618918277792.jpg\" /></p>\r\n\r\n<p>&Aacute;o sơ mi tay ngắn chất vải linen cổ Đức mix c&ugrave;ng quần s&aacute;ng m&agrave;u v&agrave; k&iacute;nh r&acirc;m khiến ch&agrave;ng tr&ocirc;ng cool ngầu hơn.&nbsp;</p>\r\n\r\n<h3>C&aacute;c kiểu phối &aacute;o sơ mi statement c&aacute; t&iacute;nh</h3>\r\n\r\n<p>Đặc trưng của &aacute;o sơ mi ngắn tay Statement shirt l&agrave; sự kiểu c&aacute;ch v&agrave; họa tiết tr&ecirc;n &aacute;o kh&aacute; nổi bật. V&igrave; vậy, khi mix &aacute;o sơ mi ngắn tay với những item kh&aacute;c cần lưu &yacute; đến những yếu tố về m&agrave;u sắc v&agrave; họa tiết tr&ecirc;n c&aacute;c trang phục đ&oacute;. N&ecirc;n phối &aacute;o sơ mi ngắn tay với quần tối m&agrave;u hoặc những gam m&agrave;u trung t&iacute;nh để tạo sự h&agrave;i h&ograve;a cho item của ch&agrave;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/f653c598e13aa09fe35727ce234281c5.png\" /></p>\r\n\r\n<p>Combo đ&oacute;n gi&oacute; năng động v&agrave; c&aacute; t&iacute;nh c&ugrave;ng &aacute;o sơ mi ngắn tay mang tuy&ecirc;n ng&ocirc;n (Statement shirt) c&ugrave;ng quần short ngắn v&agrave; gi&agrave;y cao cổ.</p>\r\n\r\n<h3>&Aacute;o sơ mi sọc dọc tay ngắn mix quần t&acirc;y s&aacute;ng m&agrave;u</h3>\r\n\r\n<p>Mang đến những bản phối thời thượng v&agrave; sự chỉn chu trong phong c&aacute;ch ăn mặc của ch&agrave;ng, &aacute;o sơ mi họa tiết sọc dọc ngắn tay n&ecirc;n chọn những m&agrave;u sắc nền n&atilde;, nh&atilde; nhặn để tr&aacute;nh g&acirc;y l&ograve;e loẹt, phản cảm cho người nh&igrave;n.</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/87ff8ae6661b3a468e2093f33347f2a9.jpg\" /></p>\r\n\r\n<p>N&ecirc;n chọn &aacute;o sơ mi c&oacute; hai sọc dọc v&agrave; khoảng c&aacute;ch giữa c&aacute;c sọc vừa đủ để tạo điểm nhấn v&agrave; c&oacute; sự li&ecirc;n kết cho to&agrave;n outfit.&nbsp;</p>\r\n\r\n<h3>C&aacute;ch phối đồ với &aacute;o sơ mi tay ngắn cổ Đức</h3>\r\n\r\n<p>&Aacute;o sơ mi ngắn cổ Đức l&agrave; một trong những item được c&aacute;c ch&agrave;ng lựa chọn cho những ng&agrave;y đổi gi&oacute; bởi n&oacute; mang đến sự ho&agrave;i cổ v&agrave; phong c&aacute;ch Casual thoải m&aacute;i. Khi mix c&ugrave;ng &aacute;o sơ mi tay ngắn cổ Đức c&aacute;c ch&agrave;ng n&ecirc;n c&acirc;n nhắc đến sự h&agrave;i h&ograve;a cho outfit tổng thể. N&ecirc;n lựa chọn item &aacute;o sơ mi tay ngắn cổ Đức m&agrave;u trung t&iacute;nh như xanh navy, m&agrave;u be, n&acirc;u khi mix c&ugrave;ng item kh&aacute;c để tạo ra bản phối ho&agrave;n chỉnh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/147ec5f363a939a5ee3b87a81757f924.jpg\" /></p>\r\n\r\n<p>&Aacute;o sơ mi tay ngắn cổ Đức mix vest cho ch&agrave;ng sự tươi mới v&agrave; phong c&aacute;ch ấn tượng.</p>\r\n\r\n<h3>Phối đồ với &aacute;o sơ mi tay ngắn đơn giản</h3>\r\n\r\n<p>Để &aacute;o sơ mi tay ngắn basic ph&aacute;t huy tối đa t&aacute;c dụng của n&oacute;, ch&agrave;ng n&ecirc;n lựa chọn những item đi k&egrave;m nổi bật theo phong c&aacute;ch tone sur tone từ đầu đến ch&acirc;n. Chọn &aacute;o kho&aacute;c blazer kho&aacute;c ngo&agrave;i cho m&ugrave;a h&egrave; mix c&ugrave;ng quần chinos hoặc quần jeans sẽ l&agrave; sự lựa chọn ho&agrave;n hảo v&agrave; hợp thời trang nhất.</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/621559c3046fe0569287d8a995eacbe3.jpg\" /></p>\r\n\r\n<p>Phong c&aacute;ch tone sur tone c&ugrave;ng những mẫu &aacute;o sơ mi đơn giản cho ch&agrave;ng trai thanh lịch, minimalist.&nbsp;</p>\r\n\r\n<h3>Phong c&aacute;ch thường nhật c&ugrave;ng &aacute;o sơ mi nam tay ngắn kẻ ca-r&ocirc;</h3>\r\n\r\n<p>Những ng&agrave;y h&egrave; sẽ trở n&ecirc;n v&ocirc; c&ugrave;ng ấn tượng khi ch&agrave;ng chọn &aacute;o sơ mi kẻ caro cho bản th&acirc;n. &Aacute;o sơ mi kẻ caro mặc đi l&agrave;, đi học hay đi chơi đều l&agrave; những lựa chọn tuyệt vời. Lưu &yacute; khi mix đồ với &aacute;o sơ mi kẻ caro th&igrave; những item đi k&egrave;m n&ecirc;n c&oacute; họa tiết ph&ugrave; hợp hoặc tối giản nhất c&oacute; thể.</p>\r\n\r\n<p><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/22dd82e8a679001cff6e3295d889ab8e.jpg\" /></p>\r\n\r\n<p>Sự trở lại đầy ấn tượng v&agrave; phong c&aacute;ch c&ugrave;ng &aacute;o sơ mi kẻ caro tạo điểm nhấn cho item của ch&agrave;ng.</p>\r\n\r\n<h2>Gợi &yacute; những mẫu &aacute;o sơ mi tay ngắn cao cấp tại IVY men</h2>\r\n\r\n<h3>&Aacute;o sơ mi kẻ tay ngắn Lotus Soft</h3>\r\n\r\n<p>Lại l&agrave; thiết kế &aacute;o sơ mi kẻ đơn giản c&ugrave;ng m&agrave;u sắc nh&atilde; nhặn ph&ugrave; hợp cho ch&agrave;ng trai c&ocirc;ng sở. Ch&agrave;ng sẽ trẻ trung v&agrave; ph&aacute; c&aacute;ch hơn khi mix c&ugrave;ng quần short/quần kaki ngắn tinh tế.&nbsp;</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/ao-so-mi-ke-lotus-soft-ms-16e2971-28079\"><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/edd18e1d33046f6ff2f7b394a3a41a88.jpg\" /></a></p>\r\n\r\n<p>Chất vải mềm mịn, cao cấp v&agrave; mới mẻ đem lại nguồn cảm hứng bất tận cho ch&agrave;ng.&nbsp;</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/ao-so-mi-bb-shirt-the-bamboo-ms-16e2880-27958\"><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/6ba569a5efa2d205d64be770e004ef48.jpg\" /></a></p>\r\n\r\n<p>Sử dụng đột ph&aacute; mới trong thiết kế &aacute;o sơ mi nam c&ugrave;ng chất vải Bamboo đem đến cho ch&agrave;ng cảm gi&aacute;c mới lạ v&agrave; thật sự thoải m&aacute;i khi mặc l&ecirc;n người.&nbsp;</p>\r\n\r\n<h3>&Aacute;o sơ mi nam tay ngắn MS&nbsp;</h3>\r\n\r\n<p>Sử dụng chất liệu Tuysi trong c&aacute;c thiết kế &aacute;o sơ mi cho ch&agrave;ng sự trẻ trung, năng động c&ugrave;ng cảm gi&aacute;c thoải m&aacute;i khi mặc.&nbsp;</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/ao-so-mi-nam-tay-ngan-ms-16e3108-30632\"><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/7ffa659e7af0560c8af45538ad6c2bf9.jpg\" /></a></p>\r\n\r\n<p>Hai gam m&agrave;u thời thượng của &aacute;o sơ mi ngắn tay l&agrave; xanh Oliu v&agrave; bạc bắt trend cho ch&agrave;ng th&ecirc;m lựa chọn cho tủ đồ&nbsp;<a href=\"https://ivymoda.com/danh-muc/ao-so-mi-nam\">&aacute;o sơ mi nam</a>&nbsp;của m&igrave;nh.&nbsp;</p>\r\n\r\n<h3>&Aacute;o sơ mi nam tay ngắn họa tiết MS</h3>\r\n\r\n<p>&Aacute;o sơ mi ngắn tay phối họa tiết cho ch&agrave;ng sự tinh tế c&ugrave;ng những hoạt tiết nổi bật l&agrave;m nền cho item của ch&agrave;ng đồng thời tạo cảm gi&aacute;c mới mẻ v&agrave; s&ocirc;i nổi hơn.</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/ao-so-mi-nam-hoa-tiet-ms-16e3107-30954\"><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/9a46421aaccbbf19c56ff7196ec9a0fc.jpg\" /></a></p>\r\n\r\n<p>Chất vải lụa c&ugrave;ng kiểu d&aacute;ng Regular đem lại sự thoải m&aacute;i, dễ chịu đặc biệt khi mix c&ugrave;ng quần short hoặc quần jean đen.</p>\r\n\r\n<h3>&Aacute;o sơ mi đen ngắn tay MS&nbsp;</h3>\r\n\r\n<p><a href=\"https://ivymoda.com/tin-tuc/bai-viet/ao-so-mi-den-369\">&Aacute;o sơ mi đen</a>&nbsp;tạo cảm gi&aacute;c thoải m&aacute;i v&agrave; thanh lịch cho ch&agrave;ng đồng thời gi&uacute;p che đi khuyết điểm tr&ecirc;n cơ thể tạo cảm gi&aacute;c th&acirc;n h&igrave;nh thon gọn hơn.&nbsp;</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/ao-so-mi-den-ngan-tay-ms-16e3043-30759\"><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/08b2b7facc87cf672b0db6f9495f4a90.jpg\" /></a></p>\r\n\r\n<h3>&Aacute;o sơ mi Slim Fit tay ngắn MS&nbsp;</h3>\r\n\r\n<p>Thiết kế hiện đại c&ugrave;ng kiểu d&aacute;ng trẻ trung cho ch&agrave;ng th&ecirc;m nhiều lựa chọn ăn &yacute; khi mix đồ. Đặc biệt, với đặc t&iacute;nh kh&ocirc;ng bị nhăn, biến dạng khi giặt ủi xứng đ&aacute;ng l&agrave; item m&agrave; c&aacute;c ch&agrave;ng trai n&ecirc;n sở hữu trong tủ đồ của m&igrave;nh.&nbsp;</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/ao-so-mi-slim-fit-tay-ngan-ms-16e2995-28873\"><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/12e31e30fbaa0e32acf5f280ae21985d.jpg\" /></a></p>\r\n\r\n<p>&Aacute;o sơ mi tay ngắn mix quần t&acirc;y đen ph&ugrave; hợp với những dịp trang trọng v&agrave; lịch sự.</p>\r\n\r\n<h3>&Aacute;o sơ mi kẻ Body Fit tay ngắn MS&nbsp;</h3>\r\n\r\n<p>Với kiểu &aacute;o &ocirc;m s&aacute;t cơ thể, &aacute;o sơ mi tay ngắn kẻ Body Fit gi&uacute;p t&ocirc;n l&ecirc;n v&oacute;c d&aacute;ng v&agrave; th&acirc;n h&igrave;nh của ph&aacute;i mạnh.</p>\r\n\r\n<p><a href=\"https://ivymoda.com/sanpham/ao-so-mi-ke-bodyfit-ms-16e2981-28782\"><img alt=\"\" src=\"https://ivymoda.com/assets/files/news/2021/11/29/6aa5a2da67e34e6940cab3d640955d75.jpg\" /></a></p>\r\n\r\n<p>Chỉ với item &aacute;o sơ mi tay ngắn, ch&agrave;ng đ&atilde; c&oacute; v&ocirc; v&agrave;n c&aacute;ch biến tấu phong c&aacute;ch thời trang linh hoạt cho m&ugrave;a h&egrave; n&agrave;y. C&ugrave;ng IVY men cập nhật th&ecirc;m nhiều mẫu &aacute;o sơ mi tay ngắn đẹp cho ch&agrave;ng tại Website/app&nbsp;<a href=\"https://ivymoda.com/\">IVY moda</a>&nbsp;bạn nh&eacute;!</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_ID` varchar(255) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `brand_ID` int(11) NOT NULL,
  `color_ID` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_ID`, `product_name`, `brand_ID`, `color_ID`, `price`, `discount`, `image`) VALUES
('SP100', 'ÁO LEN ÔM TAY SÁT NÁCH', 16, 6, 890000, 0, 'b95363c80c4338452e430cef1465a658.jpg'),
('SP101', 'ĐẦM DẬP NỔI CỔ THUYỀN', 22, 8, 2690000, 0, '447cd7abd8ad7faf831d6ef071db18de.jpg'),
('SP102', 'ĐẦM THUN CUT-OUT', 16, 9, 1590000, 0, '787920d08ce3866b3d8b3d42b95021b1.jpg'),
('SP103', 'ÁO THUN ĐÍNH NGỌC', 16, 10, 790000, 0, 'f1db58c73e728c53a45cf9664dfd68bc.jpg'),
('SP104', 'TÚI MINI BAG KHÓA TUA RUA ', 17, 6, 1590000, 0, '251c0ca5417b26b260ff6a7e7c97cf91.jpg'),
('SP105', 'ĐẦM REN ÔM VIỀN MÀU', 22, 11, 1690000, 0, 'd630d6350ac400e4d10e705470dbe158.jpg'),
('SP106', 'ÁO KHOÁC GIÓ NAM THỂ THAO', 18, 7, 1390000, 0, 'c93838721b614a96548bb11c1720e812.jpg'),
('SP107', 'QUẦN JEANS NAM SLIM FIT', 19, 11, 1090000, 0, 'a561a068469326f5ef8ca74bd13fb8fc.jpg'),
('SP108', 'ÁO KHOÁC BOMBER BÉ GÁI', 20, 13, 590000, 0, 'ee93efdccbf472ef1c66a2ff7fd5d0f0.jpg'),
('SP109', 'ÁO SƠ MI HỌA TIẾT BÉ TRAI', 21, 11, 360000, 0, 'abb82b6d686e5b58038cad78851b853a.jpg'),
('SP110', 'ROYAL LADY', 16, 15, 1790000, 0, '9f88ca7bfcf49366747815500ad597f4.jpg'),
('SP111', 'ÁO KHOÁC DẠ LÔNG CỪU CAO CẤP', 16, 8, 7490000, 0, '91f89f018913464457936cec0ce4e9c2.jpg'),
('SP112', '3 PIECE SUITS - ÁO VEST', 16, 16, 2190000, 0, '5abcc47a7e8fd8d1cd66ea655267d764.jpg'),
('SP113', 'QUẦN ỐNG SUÔNG', 16, 10, 890000, 20, 'ecc66d703274a14f513bbe18e2deec47.jpg'),
('SP114', 'ÁO PEPLUM HOA NỔI', 16, 6, 590000, 30, 'e373b8ac5c1cb3440baadbf986ee7ef6.jpg'),
('SP115', 'VÍ DA MINI ', 17, 17, 890000, 0, '3e88493e5239591b44cef2740d6a698e.jpg'),
('SP116', 'TÚI BIG SIZE CHẦN BÔNG', 17, 18, 1790000, 0, '00f174c99573deb8459aaf674ecf2993.jpg'),
('SP117', 'TÚI DA MEDIUM 2 QUAI', 17, 19, 1690000, 0, 'd44bdfb0b2661c314bcc7b7fb6c7ab0b.jpg'),
('SP118', 'TÚI XÁCH DÂY ĐAN', 17, 17, 1590000, 0, '85ddcd20aaf9ac38184baa8ace8a0500.webp'),
('SP119', 'CLUTCH NỮ CAO CẤP', 17, 6, 1290000, 0, '3ad03f6975f2b6f00b0afc0345b14600.jpg'),
('SP120', 'TÚI XÁCH HOBO MINI', 17, 20, 1590000, 0, 'c213fa6f5aeb42eca9dc79d90ecf4bf6.jpg'),
('SP121', 'VÍ DA MINI', 17, 21, 890000, 0, '2cc43c111e2358ae710ae4482dcb4eea.jpg'),
('SP122', 'ĐẦM XÒE CỔ ĐỨC CÁCH ĐIỆU', 22, 8, 1890000, 0, '00c0904f5505fb7b998337105c18dd48.jpg'),
('SP123', 'ĐẦM NHUNG CỔ VUÔNG', 22, 22, 1590000, 0, '3c857031bcc4785a9ec44d3a708a5393.jpg'),
('SP124', 'ÁO BOMBER NAM OVERSIZE', 18, 6, 1390000, 0, 'ecbb1c565681a331768b048da7eb6d84.jpg'),
('SP125', 'ÁO THUN CỔ LỌ', 18, 9, 1090000, 0, 'b05d003853c845fe993811409f22cf85.jpg'),
('SP126', 'QUẦN DÀI KHAKI TÚI VIỀN ĐÔI', 19, 19, 990000, 50, '91d7682e4721d81b80f9932a52496345.webp'),
('SP127', 'QUẦN DÀI REGULAR CẠP LỆCH', 19, 23, 1090000, 0, '349817842cbb74aba4c7045bc3400066.jpg'),
('SP128', 'ÁO KHOÁC PHAO GILE', 20, 24, 890000, 0, '9d4e2710260f7e8b5db366ed883b1a1e.jpg'),
('SP129', 'ÁO THUN SMART', 20, 25, 390000, 0, 'ed4bb12e13977e001f25bb80397a0e89.jpg'),
('SP130', 'ZUÝP HỌA TIẾT HOA XÒE', 21, 26, 330000, 0, '20843ee930f050bf0b2c20c224c51d05.webp'),
('SP131', 'ÁO THUN CỔ BÈO', 21, 27, 390000, 0, 'c06516effcfcc80efdc5687da476b4ba.webp'),
('SP132', 'BLACK DIAMOND TOP', 16, 6, 1690000, 30, '3625ee36814ab4710c1bab70576d792b.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `score`
--

CREATE TABLE `score` (
  `score_ID` int(11) NOT NULL,
  `customer_ID` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `score`
--

INSERT INTO `score` (`score_ID`, `customer_ID`, `score`) VALUES
(9, 32, 87),
(10, 33, 23);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size_product`
--

CREATE TABLE `size_product` (
  `size_ID` int(11) NOT NULL,
  `brand_ID` int(11) NOT NULL,
  `size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `size_product`
--

INSERT INTO `size_product` (`size_ID`, `brand_ID`, `size`) VALUES
(12, 18, 'S'),
(13, 18, 'M'),
(14, 18, 'L'),
(15, 18, 'XL'),
(16, 18, 'XXL'),
(17, 19, 'S'),
(18, 19, 'M'),
(19, 19, 'L'),
(20, 19, 'XL'),
(21, 19, 'XXL'),
(22, 16, 'S'),
(23, 16, 'M'),
(24, 16, 'L'),
(25, 16, 'XL'),
(26, 16, 'XXL'),
(27, 17, 'M'),
(28, 22, 'S'),
(29, 22, 'M'),
(30, 22, 'L'),
(31, 22, 'XL'),
(32, 22, 'XXL'),
(33, 20, '4-5'),
(34, 20, '6-7'),
(35, 20, '8-9'),
(36, 20, '10-11'),
(37, 20, '12-13'),
(38, 21, '4-5'),
(39, 21, '6-7'),
(40, 21, '8-9'),
(41, 21, '10-11'),
(42, 21, '12-13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `slider_ID` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`slider_ID`, `image`) VALUES
(1, 'slide1.jpg'),
(2, 'slide2.jpg'),
(3, 'slide4.png'),
(4, 'slide6.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `ID` int(11) NOT NULL,
  `order_ID` int(11) NOT NULL,
  `order_Date` varchar(255) NOT NULL,
  `order_cancel` varchar(255) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wards`
--

CREATE TABLE `wards` (
  `wards_ID` int(11) NOT NULL,
  `wards_name` varchar(255) NOT NULL,
  `district_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `wards`
--

INSERT INTO `wards` (`wards_ID`, `wards_name`, `district_ID`) VALUES
(1, 'Phường Hòa Thuận Tây', 1),
(2, 'Phường Hòa Thuận Đông', 1),
(3, 'Phường Hải Châu I', 1),
(4, 'Phường Khuê Trung', 2),
(5, 'Phường Hòa Phát', 2),
(6, 'Phường Hòa Thọ Tây', 2),
(7, 'Phường Thanh Khê Tây', 3),
(8, 'Phường Thanh Khê Đông', 3),
(9, 'Phường Tân Chính', 3),
(10, 'Phường Hòa Hiệp Nam', 4),
(11, 'Phường Hòa Khánh Bắc', 4),
(12, 'Phường Hòa Khánh Nam', 4),
(13, 'Phường Mỹ An', 5),
(14, 'Phường Hoà Quý', 5),
(15, 'Phường Hoà Hải', 5),
(16, 'Phường Phước Mỹ', 6),
(17, 'Phường An Hải Bắc', 6),
(18, 'Phường Thọ Quang', 6),
(19, 'Xã Hòa Nhơn', 7),
(20, 'Xã Hòa Phong', 7),
(21, 'Xã Hòa Bắc', 7),
(22, 'Phường Tân Thạnh', 16),
(23, 'Phường Phước Hòa', 16),
(24, 'Phường An Mỹ', 16),
(25, 'Phường Minh An', 17),
(26, 'Phường Tân An', 17),
(27, 'Phường Cẩm Phô', 17),
(28, 'Xã Ga Ri', 18),
(29, 'Xã A Xan', 18),
(30, 'Xã A Vương', 18),
(31, 'Xã A Ting', 19),
(32, 'Xã Tư', 19),
(33, 'Xã A Rooi', 19),
(34, 'Xã Đại Sơn', 20),
(35, 'Xã Đại Lãnh', 20),
(36, 'Xã Đại Hồng', 20),
(37, 'Xã Điện Hòa', 21),
(38, 'Phường Vĩnh Điện', 21),
(39, 'Xã Điện Tiến', 21),
(40, 'Thị trấn Nam Phước', 22),
(41, 'Xã Duy Thu', 22),
(42, 'Xã Duy Phú', 22),
(43, 'Thị trấn Đông Phú', 23),
(44, 'Xã Quế Phú', 23),
(45, 'Xã Quế Hiệp', 23),
(46, 'Thị trấn Thạnh Mỹ', 24),
(47, 'Xã Chơ Chun', 24),
(48, 'Xã La Dêê', 24),
(49, 'Xã Phước Hoà', 25),
(50, 'Xã Phước Hiệp', 25),
(51, 'Xã Phước Xuân', 25);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_ID`),
  ADD KEY `category_ID` (`category_ID`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_ID`);

--
-- Chỉ mục cho bảng `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_ID`);

--
-- Chỉ mục cho bảng `color_product`
--
ALTER TABLE `color_product`
  ADD PRIMARY KEY (`color_ID`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_ID`);

--
-- Chỉ mục cho bảng `des_product`
--
ALTER TABLE `des_product`
  ADD PRIMARY KEY (`des_ID`),
  ADD KEY `product_ID` (`product_ID`),
  ADD KEY `product_ID_2` (`product_ID`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`district_ID`),
  ADD KEY `city_ID` (`city_ID`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`images_ID`),
  ADD KEY `product_ID` (`product_ID`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_ID`),
  ADD KEY `order_ID` (`order_ID`),
  ADD KEY `product_ID` (`product_ID`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_ID`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_ID`),
  ADD KEY `brand_ID` (`brand_ID`),
  ADD KEY `color_ID` (`color_ID`);

--
-- Chỉ mục cho bảng `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`score_ID`),
  ADD KEY `customer_ID` (`customer_ID`);

--
-- Chỉ mục cho bảng `size_product`
--
ALTER TABLE `size_product`
  ADD PRIMARY KEY (`size_ID`),
  ADD KEY `brand_ID` (`brand_ID`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_ID`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `order_ID` (`order_ID`);

--
-- Chỉ mục cho bảng `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`wards_ID`),
  ADD KEY `district_ID` (`district_ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `city`
--
ALTER TABLE `city`
  MODIFY `city_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `color_product`
--
ALTER TABLE `color_product`
  MODIFY `color_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `des_product`
--
ALTER TABLE `des_product`
  MODIFY `des_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `district_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `images_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `post_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `score`
--
ALTER TABLE `score`
  MODIFY `score_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `size_product`
--
ALTER TABLE `size_product`
  MODIFY `size_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT cho bảng `wards`
--
ALTER TABLE `wards`
  MODIFY `wards_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `brand`
--
ALTER TABLE `brand`
  ADD CONSTRAINT `brand_ibfk_1` FOREIGN KEY (`category_ID`) REFERENCES `category` (`category_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `des_product`
--
ALTER TABLE `des_product`
  ADD CONSTRAINT `des_product_ibfk_1` FOREIGN KEY (`product_ID`) REFERENCES `product` (`product_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `district`
--
ALTER TABLE `district`
  ADD CONSTRAINT `district_ibfk_1` FOREIGN KEY (`city_ID`) REFERENCES `city` (`city_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`product_ID`) REFERENCES `product` (`product_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_ID`) REFERENCES `tbl_order` (`order_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_ID`) REFERENCES `product` (`product_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`brand_ID`) REFERENCES `brand` (`brand_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`color_ID`) REFERENCES `color_product` (`color_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `size_product`
--
ALTER TABLE `size_product`
  ADD CONSTRAINT `size_product_ibfk_1` FOREIGN KEY (`brand_ID`) REFERENCES `brand` (`brand_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `wards`
--
ALTER TABLE `wards`
  ADD CONSTRAINT `wards_ibfk_1` FOREIGN KEY (`district_ID`) REFERENCES `district` (`district_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
