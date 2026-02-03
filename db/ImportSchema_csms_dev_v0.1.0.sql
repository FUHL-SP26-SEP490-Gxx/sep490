-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: csms_dev
-- ------------------------------------------------------
-- Server version	8.0.29
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `addresses`
--
LOCK TABLES `addresses` WRITE;

/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;

/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `area`
--
LOCK TABLES `area` WRITE;

/*!40000 ALTER TABLE `area` DISABLE KEYS */;

/*!40000 ALTER TABLE `area` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `attendances`
--
LOCK TABLES `attendances` WRITE;

/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;

/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `category`
--
LOCK TABLES `category` WRITE;

/*!40000 ALTER TABLE `category` DISABLE KEYS */;

/*!40000 ALTER TABLE `category` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `customizations`
--
LOCK TABLES `customizations` WRITE;

/*!40000 ALTER TABLE `customizations` DISABLE KEYS */;

/*!40000 ALTER TABLE `customizations` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `discount`
--
LOCK TABLES `discount` WRITE;

/*!40000 ALTER TABLE `discount` DISABLE KEYS */;

/*!40000 ALTER TABLE `discount` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `ingredient`
--
LOCK TABLES `ingredient` WRITE;

/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;

/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `leave_requests`
--
LOCK TABLES `leave_requests` WRITE;

/*!40000 ALTER TABLE `leave_requests` DISABLE KEYS */;

/*!40000 ALTER TABLE `leave_requests` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `order_delivery_info`
--
LOCK TABLES `order_delivery_info` WRITE;

/*!40000 ALTER TABLE `order_delivery_info` DISABLE KEYS */;

/*!40000 ALTER TABLE `order_delivery_info` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `order_details`
--
LOCK TABLES `order_details` WRITE;

/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;

/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `orders`
--
LOCK TABLES `orders` WRITE;

/*!40000 ALTER TABLE `orders` DISABLE KEYS */;

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `overtime_requests`
--
LOCK TABLES `overtime_requests` WRITE;

/*!40000 ALTER TABLE `overtime_requests` DISABLE KEYS */;

/*!40000 ALTER TABLE `overtime_requests` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `product_images`
--
LOCK TABLES `product_images` WRITE;

/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;

/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `product_sizes`
--
LOCK TABLES `product_sizes` WRITE;

/*!40000 ALTER TABLE `product_sizes` DISABLE KEYS */;

/*!40000 ALTER TABLE `product_sizes` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `products`
--
LOCK TABLES `products` WRITE;

/*!40000 ALTER TABLE `products` DISABLE KEYS */;

/*!40000 ALTER TABLE `products` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `provinces`
--
LOCK TABLES `provinces` WRITE;

/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;

INSERT INTO
    `provinces`
VALUES
    ('01', 'Thành phố Hà Nội'),
    ('24', 'Tỉnh Bắc Ninh'),
    ('25', 'Tỉnh Phú Thọ'),
    ('33', 'Tỉnh Hưng Yên');

/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `recipes_by_size`
--
LOCK TABLES `recipes_by_size` WRITE;

/*!40000 ALTER TABLE `recipes_by_size` DISABLE KEYS */;

/*!40000 ALTER TABLE `recipes_by_size` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `role`
--
LOCK TABLES `role` WRITE;

/*!40000 ALTER TABLE `role` DISABLE KEYS */;

INSERT INTO
    `role`
VALUES
    (1, 'manager'),
    (2, 'Staff'),
    (3, 'Barista'),
    (4, 'Customer');

/*!40000 ALTER TABLE `role` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `shift_registrations`
--
LOCK TABLES `shift_registrations` WRITE;

/*!40000 ALTER TABLE `shift_registrations` DISABLE KEYS */;

/*!40000 ALTER TABLE `shift_registrations` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `shift_templates`
--
LOCK TABLES `shift_templates` WRITE;

/*!40000 ALTER TABLE `shift_templates` DISABLE KEYS */;

/*!40000 ALTER TABLE `shift_templates` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `shifts`
--
LOCK TABLES `shifts` WRITE;

/*!40000 ALTER TABLE `shifts` DISABLE KEYS */;

/*!40000 ALTER TABLE `shifts` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `tables`
--
LOCK TABLES `tables` WRITE;

/*!40000 ALTER TABLE `tables` DISABLE KEYS */;

/*!40000 ALTER TABLE `tables` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `toppings`
--
LOCK TABLES `toppings` WRITE;

/*!40000 ALTER TABLE `toppings` DISABLE KEYS */;

/*!40000 ALTER TABLE `toppings` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `user_auth_providers`
--
LOCK TABLES `user_auth_providers` WRITE;

/*!40000 ALTER TABLE `user_auth_providers` DISABLE KEYS */;

/*!40000 ALTER TABLE `user_auth_providers` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `users`
--
LOCK TABLES `users` WRITE;

/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO
    `users`
VALUES
    (
        1,
        '0912345678',
        '$2a$12$qrLmzeKoVmjDN/1b4u.Hkug0N0RMYIytSeGLnGmG6i5TA8gBCHAje',
        'manager@gmail.com',
        'Pha Chế',
        'Chính',
        1,
        '2000-01-01',
        1,
        1,
        '2026-02-03 13:54:16',
        '2026-02-03 13:54:16'
    ),
    (
        2,
        '0912345687',
        '$2a$12$.vwXMBpHm1HtvtSq5uflUOu4XNXz50Hc3lJnFwWSbWuulzZVgcZO6',
        'staff1@gmail.com',
        'Nhân Viên',
        'Một',
        1,
        '2000-01-02',
        2,
        1,
        '2026-02-03 13:54:16',
        '2026-02-03 13:54:16'
    ),
    (
        3,
        '0912345876',
        '$2a$12$HZvi2HIxe.S93z/koxHbaudsqxycXtqrDrTxJqwqYQAIth9ofmVuC',
        'staff2a@gmail.com',
        'Nhân Viên',
        'Hai',
        0,
        '2000-01-03',
        2,
        1,
        '2026-02-03 13:54:16',
        '2026-02-03 13:54:16'
    ),
    (
        4,
        '0912348765',
        '$2a$12$NG2BNJVW6msPIHkCvrf4mu/7E5jDuugcdAXwBEL3wIekVRXvHzb0a',
        'barista@gmail.com',
        'Pha Chế',
        'Chính',
        1,
        '2000-01-04',
        3,
        1,
        '2026-02-03 13:54:16',
        '2026-02-03 13:54:16'
    );

/*!40000 ALTER TABLE `users` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `wards`
--
LOCK TABLES `wards` WRITE;

/*!40000 ALTER TABLE `wards` DISABLE KEYS */;

INSERT INTO
    `wards`
VALUES
    ('00004', 'Phường Ba Đình', '01'),
    ('00008', 'Phường Ngọc Hà', '01'),
    ('00025', 'Phường Giảng Võ', '01'),
    ('00070', 'Phường Hoàn Kiếm', '01'),
    ('00082', 'Phường Cửa Nam', '01'),
    ('00091', 'Phường Phú Thượng', '01'),
    ('00097', 'Phường Hồng Hà', '01'),
    ('00103', 'Phường Tây Hồ', '01'),
    ('00118', 'Phường Bồ Đề', '01'),
    ('00127', 'Phường Việt Hưng', '01'),
    ('00136', 'Phường Phúc Lợi', '01'),
    ('00145', 'Phường Long Biên', '01'),
    ('00160', 'Phường Nghĩa Đô', '01'),
    ('00166', 'Phường Cầu Giấy', '01'),
    ('00175', 'Phường Yên Hòa', '01'),
    ('00190', 'Phường Ô Chợ Dừa', '01'),
    ('00199', 'Phường Láng', '01'),
    ('00226', 'Phường Văn Miếu - Quốc Tử Giám', '01'),
    ('00229', 'Phường Kim Liên', '01'),
    ('00235', 'Phường Đống Đa', '01'),
    ('00256', 'Phường Hai Bà Trưng', '01'),
    ('00283', 'Phường Vĩnh Tuy', '01'),
    ('00292', 'Phường Bạch Mai', '01'),
    ('00301', 'Phường Vĩnh Hưng', '01'),
    ('00316', 'Phường Định Công', '01'),
    ('00322', 'Phường Tương Mai', '01'),
    ('00328', 'Phường Lĩnh Nam', '01'),
    ('00331', 'Phường Hoàng Mai', '01'),
    ('00337', 'Phường Hoàng Liệt', '01'),
    ('00340', 'Phường Yên Sở', '01'),
    ('00352', 'Phường Phương Liệt', '01'),
    ('00364', 'Phường Khương Đình', '01'),
    ('00367', 'Phường Thanh Xuân', '01'),
    ('00376', 'Xã Sóc Sơn', '01'),
    ('00382', 'Xã Kim Anh', '01'),
    ('00385', 'Xã Trung Giã', '01'),
    ('00430', 'Xã Đa Phúc', '01'),
    ('00433', 'Xã Nội Bài', '01'),
    ('00454', 'Xã Đông Anh', '01'),
    ('00466', 'Xã Phúc Thịnh', '01'),
    ('00475', 'Xã Thư Lâm', '01'),
    ('00493', 'Xã Thiên Lộc', '01'),
    ('00508', 'Xã Vĩnh Thanh', '01'),
    ('00541', 'Xã Phù Đổng', '01'),
    ('00562', 'Xã Thuận An', '01'),
    ('00565', 'Xã Gia Lâm', '01'),
    ('00577', 'Xã Bát Tràng', '01'),
    ('00592', 'Phường Từ Liêm', '01'),
    ('00598', 'Phường Thượng Cát', '01'),
    ('00602', 'Phường Đông Ngạc', '01'),
    ('00611', 'Phường Xuân Đỉnh', '01'),
    ('00613', 'Phường Tây Tựu', '01'),
    ('00619', 'Phường Phú Diễn', '01'),
    ('00622', 'Phường Xuân Phương', '01'),
    ('00634', 'Phường Tây Mỗ', '01'),
    ('00637', 'Phường Đại Mỗ', '01'),
    ('00640', 'Xã Thanh Trì', '01'),
    ('00643', 'Phường Thanh Liệt', '01'),
    ('00664', 'Xã Đại Thanh', '01'),
    ('00679', 'Xã Ngọc Hồi', '01'),
    ('00685', 'Xã Nam Phù', '01'),
    ('04792', 'Phường Tân Hòa', '25'),
    ('04795', 'Phường Hòa Bình', '25'),
    ('04828', 'Phường Thống Nhất', '25'),
    ('04831', 'Xã Đà Bắc', '25'),
    ('04846', 'Xã Đức Nhàn', '25'),
    ('04849', 'Xã Tân Pheo', '25'),
    ('04873', 'Xã Quy Đức', '25'),
    ('04876', 'Xã Cao Sơn', '25'),
    ('04891', 'Xã Tiền Phong', '25'),
    ('04894', 'Phường Kỳ Sơn', '25'),
    ('04897', 'Xã Thịnh Minh', '25'),
    ('04924', 'Xã Lương Sơn', '25'),
    ('04930', 'Xã Yên Xuân', '01'),
    ('04960', 'Xã Liên Sơn', '25'),
    ('04978', 'Xã Kim Bôi', '25'),
    ('04990', 'Xã Nật Sơn', '25'),
    ('05014', 'Xã Mường Động', '25'),
    ('05047', 'Xã Cao Dương', '25'),
    ('05068', 'Xã Hợp Kim', '25'),
    ('05086', 'Xã Dũng Tiến', '25'),
    ('05089', 'Xã Cao Phong', '25'),
    ('05092', 'Xã Thung Nai', '25'),
    ('05116', 'Xã Mường Thàng', '25'),
    ('05128', 'Xã Tân Lạc', '25'),
    ('05134', 'Xã Mường Hoa', '25'),
    ('05152', 'Xã Vân Sơn', '25'),
    ('05158', 'Xã Mường Bi', '25'),
    ('05191', 'Xã Toàn Thắng', '25'),
    ('05200', 'Xã Mai Châu', '25'),
    ('05206', 'Xã Tân Mai', '25'),
    ('05212', 'Xã Pà Cò', '25'),
    ('05245', 'Xã Bao La', '25'),
    ('05251', 'Xã Mai Hạ', '25'),
    ('05266', 'Xã Lạc Sơn', '25'),
    ('05287', 'Xã Mường Vang', '25'),
    ('05290', 'Xã Nhân Nghĩa', '25'),
    ('05293', 'Xã Thượng Cốc', '25'),
    ('05305', 'Xã Yên Phú', '25'),
    ('05323', 'Xã Quyết Thắng', '25'),
    ('05329', 'Xã Ngọc Sơn', '25'),
    ('05347', 'Xã Đại Đồng', '25'),
    ('05353', 'Xã Yên Thủy', '25'),
    ('05362', 'Xã Lạc Lương', '25'),
    ('05386', 'Xã Yên Trị', '25'),
    ('05392', 'Xã Lạc Thủy', '25'),
    ('05395', 'Xã An Nghĩa', '25'),
    ('05425', 'Xã An Bình', '25'),
    ('07210', 'Phường Bắc Giang', '24'),
    ('07228', 'Phường Đa Mai', '24'),
    ('07246', 'Xã Xuân Lương', '24'),
    ('07264', 'Xã Tam Tiến', '24'),
    ('07282', 'Xã Đồng Kỳ', '24'),
    ('07288', 'Xã Yên Thế', '24'),
    ('07294', 'Xã Bố Hạ', '24'),
    ('07306', 'Xã Nhã Nam', '24'),
    ('07330', 'Xã Phúc Hòa', '24'),
    ('07333', 'Xã Quang Trung', '24'),
    ('07339', 'Xã Tân Yên', '24'),
    ('07351', 'Xã Ngọc Thiện', '24'),
    ('07375', 'Xã Lạng Giang', '24'),
    ('07381', 'Xã Tiên Lục', '24'),
    ('07399', 'Xã Kép', '24'),
    ('07420', 'Xã Mỹ Thái', '24'),
    ('07432', 'Xã Tân Dĩnh', '24'),
    ('07444', 'Xã Lục Nam', '24'),
    ('07450', 'Xã Đông Phú', '24'),
    ('07462', 'Xã Bảo Đài', '24'),
    ('07486', 'Xã Nghĩa Phương', '24'),
    ('07489', 'Xã Trường Sơn', '24'),
    ('07492', 'Xã Lục Sơn', '24'),
    ('07498', 'Xã Bắc Lũng', '24'),
    ('07519', 'Xã Cẩm Lý', '24'),
    ('07525', 'Phường Chũ', '24'),
    ('07531', 'Xã Tân Sơn', '24'),
    ('07534', 'Xã Sa Lý', '24'),
    ('07537', 'Xã Biên Sơn', '24'),
    ('07543', 'Xã Sơn Hải', '24'),
    ('07552', 'Xã Kiên Lao', '24'),
    ('07573', 'Xã Biển Động', '24'),
    ('07582', 'Xã Lục Ngạn', '24'),
    ('07594', 'Xã Đèo Gia', '24'),
    ('07603', 'Xã Nam Dương', '24'),
    ('07612', 'Phường Phượng Sơn', '24'),
    ('07615', 'Xã Sơn Động', '24'),
    ('07616', 'Xã Tây Yên Tử', '24'),
    ('07621', 'Xã Vân Sơn', '24'),
    ('07627', 'Xã Đại Sơn', '24'),
    ('07642', 'Xã Yên Định', '24'),
    ('07654', 'Xã An Lạc', '24'),
    ('07663', 'Xã Tuấn Đạo', '24'),
    ('07672', 'Xã Dương Hưu', '24'),
    ('07681', 'Phường Yên Dũng', '24'),
    ('07682', 'Phường Tân An', '24'),
    ('07696', 'Phường Tiền Phong', '24'),
    ('07699', 'Phường Tân Tiến', '24'),
    ('07735', 'Xã Đồng Việt', '24'),
    ('07738', 'Phường Cảnh Thụy', '24'),
    ('07774', 'Phường Tự Lạn', '24'),
    ('07777', 'Phường Việt Yên', '24'),
    ('07795', 'Phường Nếnh', '24'),
    ('07798', 'Phường Vân Hà', '24'),
    ('07822', 'Xã Hoàng Vân', '24'),
    ('07840', 'Xã Hiệp Hòa', '24'),
    ('07864', 'Xã Hợp Thịnh', '24'),
    ('07870', 'Xã Xuân Cẩm', '24'),
    ('07894', 'Phường Nông Trang', '25'),
    ('07900', 'Phường Việt Trì', '25'),
    ('07909', 'Phường Thanh Miếu', '25'),
    ('07918', 'Phường Vân Phú', '25'),
    ('07942', 'Phường Phú Thọ', '25'),
    ('07948', 'Phường Âu Cơ', '25'),
    ('07954', 'Phường Phong Châu', '25'),
    ('07969', 'Xã Đoan Hùng', '25'),
    ('07996', 'Xã Bằng Luân', '25'),
    ('07999', 'Xã Chí Đám', '25'),
    ('08023', 'Xã Tây Cốc', '25'),
    ('08038', 'Xã Chân Mộng', '25'),
    ('08053', 'Xã Hạ Hòa', '25'),
    ('08071', 'Xã Đan Thượng', '25'),
    ('08110', 'Xã Hiền Lương', '25'),
    ('08113', 'Xã Yên Kỳ', '25'),
    ('08134', 'Xã Văn Lang', '25'),
    ('08143', 'Xã Vĩnh Chân', '25'),
    ('08152', 'Xã Thanh Ba', '25'),
    ('08173', 'Xã Quảng Yên', '25'),
    ('08203', 'Xã Hoàng Cương', '25'),
    ('08209', 'Xã Đông Thành', '25'),
    ('08218', 'Xã Chí Tiên', '25'),
    ('08227', 'Xã Liên Minh', '25'),
    ('08230', 'Xã Phù Ninh', '25'),
    ('08236', 'Xã Phú Mỹ', '25'),
    ('08245', 'Xã Trạm Thản', '25'),
    ('08254', 'Xã Dân Chủ', '25'),
    ('08275', 'Xã Bình Phú', '25'),
    ('08290', 'Xã Yên Lập', '25'),
    ('08296', 'Xã Sơn Lương', '25'),
    ('08305', 'Xã Xuân Viên', '25'),
    ('08311', 'Xã Trung Sơn', '25'),
    ('08323', 'Xã Thượng Long', '25'),
    ('08338', 'Xã Minh Hòa', '25'),
    ('08341', 'Xã Cẩm Khê', '25'),
    ('08344', 'Xã Tiên Lương', '25'),
    ('08377', 'Xã Vân Bán', '25'),
    ('08398', 'Xã Phú Khê', '25'),
    ('08416', 'Xã Hùng Việt', '25'),
    ('08431', 'Xã Đồng Lương', '25'),
    ('08434', 'Xã Tam Nông', '25'),
    ('08443', 'Xã Hiền Quan', '25'),
    ('08467', 'Xã Vạn Xuân', '25'),
    ('08479', 'Xã Thọ Văn', '25'),
    ('08494', 'Xã Lâm Thao', '25'),
    ('08500', 'Xã Xuân Lũng', '25'),
    ('08515', 'Xã Hy Cương', '25'),
    ('08521', 'Xã Phùng Nguyên', '25'),
    ('08527', 'Xã Bản Nguyên', '25'),
    ('08542', 'Xã Thanh Sơn', '25'),
    ('08545', 'Xã Thu Cúc', '25'),
    ('08560', 'Xã Lai Đồng', '25'),
    ('08566', 'Xã Tân Sơn', '25'),
    ('08584', 'Xã Võ Miếu', '25'),
    ('08590', 'Xã Xuân Đài', '25'),
    ('08593', 'Xã Minh Đài', '25'),
    ('08611', 'Xã Văn Miếu', '25'),
    ('08614', 'Xã Cự Đồng', '25'),
    ('08620', 'Xã Long Cốc', '25'),
    ('08632', 'Xã Hương Cần', '25'),
    ('08635', 'Xã Khả Cửu', '25'),
    ('08656', 'Xã Yên Sơn', '25'),
    ('08662', 'Xã Đào Xá', '25'),
    ('08674', 'Xã Thanh Thủy', '25'),
    ('08686', 'Xã Tu Vũ', '25'),
    ('08707', 'Phường Vĩnh Yên', '25'),
    ('08716', 'Phường Vĩnh Phúc', '25'),
    ('08740', 'Phường Phúc Yên', '25'),
    ('08746', 'Phường Xuân Hòa', '25'),
    ('08761', 'Xã Lập Thạch', '25'),
    ('08770', 'Xã Hợp Lý', '25'),
    ('08773', 'Xã Yên Lãng', '25'),
    ('08782', 'Xã Hải Lựu', '25'),
    ('08788', 'Xã Thái Hòa', '25'),
    ('08812', 'Xã Liên Hòa', '25'),
    ('08824', 'Xã Tam Sơn', '25'),
    ('08842', 'Xã Tiên Lữ', '25'),
    ('08848', 'Xã Sông Lô', '25'),
    ('08866', 'Xã Sơn Đông', '25'),
    ('08869', 'Xã Tam Dương', '25'),
    ('08872', 'Xã Tam Dương Bắc', '25'),
    ('08896', 'Xã Hoàng An', '25'),
    ('08905', 'Xã Hội Thịnh', '25'),
    ('08911', 'Xã Tam Đảo', '25'),
    ('08914', 'Xã Đạo Trù', '25'),
    ('08923', 'Xã Đại Đình', '25'),
    ('08935', 'Xã Bình Nguyên', '25'),
    ('08944', 'Xã Bình Tuyền', '25'),
    ('08950', 'Xã Bình Xuyên', '25'),
    ('08971', 'Xã Xuân Lãng', '25'),
    ('08974', 'Xã Quang Minh', '01'),
    ('08980', 'Xã Yên Lãng', '01'),
    ('08995', 'Xã Tiến Thắng', '01'),
    ('09022', 'Xã Mê Linh', '01'),
    ('09025', 'Xã Yên Lạc', '25'),
    ('09040', 'Xã Tề Lỗ', '25'),
    ('09043', 'Xã Tam Hồng', '25'),
    ('09052', 'Xã Nguyệt Đức', '25'),
    ('09064', 'Xã Liên Châu', '25'),
    ('09076', 'Xã Vĩnh Tường', '25'),
    ('09079', 'Xã Vĩnh An', '25'),
    ('09100', 'Xã Vĩnh Hưng', '25'),
    ('09106', 'Xã Vĩnh Thành', '25'),
    ('09112', 'Xã Thổ Tang', '25'),
    ('09154', 'Xã Vĩnh Phú', '25'),
    ('09169', 'Phường Vũ Ninh', '24'),
    ('09187', 'Phường Kinh Bắc', '24'),
    ('09190', 'Phường Võ Cường', '24'),
    ('09193', 'Xã Yên Phong', '24'),
    ('09202', 'Xã Tam Giang', '24'),
    ('09205', 'Xã Yên Trung', '24'),
    ('09208', 'Xã Tam Đa', '24'),
    ('09238', 'Xã Văn Môn', '24'),
    ('09247', 'Phường Quế Võ', '24'),
    ('09253', 'Phường Nhân Hòa', '24'),
    ('09265', 'Phường Phương Liễu', '24'),
    ('09286', 'Phường Nam Sơn', '24'),
    ('09292', 'Xã Phù Lãng', '24'),
    ('09295', 'Phường Bồng Lai', '24'),
    ('09301', 'Phường Đào Viên', '24'),
    ('09313', 'Xã Chi Lăng', '24'),
    ('09319', 'Xã Tiên Du', '24'),
    ('09325', 'Phường Hạp Lĩnh', '24'),
    ('09334', 'Xã Liên Bão', '24'),
    ('09340', 'Xã Đại Đồng', '24'),
    ('09343', 'Xã Tân Chi', '24'),
    ('09349', 'Xã Phật Tích', '24'),
    ('09367', 'Phường Từ Sơn', '24'),
    ('09370', 'Phường Tam Sơn', '24'),
    ('09379', 'Phường Phù Khê', '24'),
    ('09385', 'Phường Đồng Nguyên', '24'),
    ('09400', 'Phường Thuận Thành', '24'),
    ('09409', 'Phường Mão Điền', '24'),
    ('09427', 'Phường Trí Quả', '24'),
    ('09430', 'Phường Trạm Lộ', '24'),
    ('09433', 'Phường Song Liễu', '24'),
    ('09445', 'Phường Ninh Xá', '24'),
    ('09454', 'Xã Gia Bình', '24'),
    ('09466', 'Xã Cao Đức', '24'),
    ('09469', 'Xã Đại Lai', '24'),
    ('09475', 'Xã Nhân Thắng', '24'),
    ('09487', 'Xã Đông Cứu', '24'),
    ('09496', 'Xã Lương Tài', '24'),
    ('09499', 'Xã Trung Kênh', '24'),
    ('09523', 'Xã Trung Chính', '24'),
    ('09529', 'Xã Lâm Thao', '24'),
    ('09552', 'Phường Kiến Hưng', '01'),
    ('09556', 'Phường Hà Đông', '01'),
    ('09562', 'Phường Yên Nghĩa', '01'),
    ('09568', 'Phường Phú Lương', '01'),
    ('09574', 'Phường Sơn Tây', '01'),
    ('09604', 'Phường Tùng Thiện', '01'),
    ('09616', 'Xã Đoài Phương', '01'),
    ('09619', 'Xã Quảng Oai', '01'),
    ('09634', 'Xã Cổ Đô', '01'),
    ('09661', 'Xã Minh Châu', '01'),
    ('09664', 'Xã Vật Lại', '01'),
    ('09676', 'Xã Bất Bạt', '01'),
    ('09694', 'Xã Suối Hai', '01'),
    ('09700', 'Xã Ba Vì', '01'),
    ('09706', 'Xã Yên Bài', '01'),
    ('09715', 'Xã Phúc Thọ', '01'),
    ('09739', 'Xã Phúc Lộc', '01'),
    ('09772', 'Xã Hát Môn', '01'),
    ('09784', 'Xã Đan Phượng', '01'),
    ('09787', 'Xã Liên Minh', '01'),
    ('09817', 'Xã Ô Diên', '01'),
    ('09832', 'Xã Hoài Đức', '01'),
    ('09856', 'Xã Dương Hòa', '01'),
    ('09871', 'Xã Sơn Đồng', '01'),
    ('09877', 'Xã An Khánh', '01'),
    ('09886', 'Phường Dương Nội', '01'),
    ('09895', 'Xã Quốc Oai', '01'),
    ('09910', 'Xã Kiều Phú', '01'),
    ('09931', 'Xã Hưng Đạo', '01'),
    ('09952', 'Xã Phú Cát', '01'),
    ('09955', 'Xã Thạch Thất', '01'),
    ('09982', 'Xã Hạ Bằng', '01'),
    ('09988', 'Xã Hòa Lạc', '01'),
    ('10003', 'Xã Tây Phương', '01'),
    ('10015', 'Phường Chương Mỹ', '01'),
    ('10030', 'Xã Phú Nghĩa', '01'),
    ('10045', 'Xã Xuân Mai', '01'),
    ('10072', 'Xã Quảng Bị', '01'),
    ('10081', 'Xã Trần Phú', '01'),
    ('10096', 'Xã Hòa Phú', '01'),
    ('10114', 'Xã Thanh Oai', '01'),
    ('10126', 'Xã Bình Minh', '01'),
    ('10144', 'Xã Tam Hưng', '01'),
    ('10180', 'Xã Dân Hòa', '01'),
    ('10183', 'Xã Thường Tín', '01'),
    ('10210', 'Xã Hồng Vân', '01'),
    ('10231', 'Xã Thượng Phúc', '01'),
    ('10237', 'Xã Chương Dương', '01'),
    ('10273', 'Xã Phú Xuyên', '01'),
    ('10279', 'Xã Phượng Dực', '01'),
    ('10330', 'Xã Chuyên Mỹ', '01'),
    ('10342', 'Xã Đại Xuyên', '01'),
    ('10354', 'Xã Vân Đình', '01'),
    ('10369', 'Xã Ứng Thiên', '01'),
    ('10402', 'Xã Ứng Hòa', '01'),
    ('10417', 'Xã Hòa Xá', '01'),
    ('10441', 'Xã Mỹ Đức', '01'),
    ('10459', 'Xã Phúc Sơn', '01'),
    ('10465', 'Xã Hồng Sơn', '01'),
    ('10489', 'Xã Hương Sơn', '01'),
    ('11953', 'Phường Phố Hiến', '33'),
    ('11977', 'Xã Tân Hưng', '33'),
    ('11980', 'Phường Hồng Châu', '33'),
    ('11983', 'Phường Sơn Nam', '33'),
    ('11992', 'Xã Lạc Đạo', '33'),
    ('11995', 'Xã Đại Đồng', '33'),
    ('12004', 'Xã Như Quỳnh', '33'),
    ('12019', 'Xã Văn Giang', '33'),
    ('12025', 'Xã Phụng Công', '33'),
    ('12031', 'Xã Nghĩa Trụ', '33'),
    ('12049', 'Xã Mễ Sở', '33'),
    ('12064', 'Xã Nguyễn Văn Linh', '33'),
    ('12070', 'Xã Hoàn Long', '33'),
    ('12073', 'Xã Yên Mỹ', '33'),
    ('12091', 'Xã Việt Yên', '33'),
    ('12103', 'Phường Mỹ Hào', '33'),
    ('12127', 'Phường Thượng Hồng', '33'),
    ('12133', 'Phường Đường Hào', '33'),
    ('12142', 'Xã Ân Thi', '33'),
    ('12148', 'Xã Phạm Ngũ Lão', '33'),
    ('12166', 'Xã Xuân Trúc', '33'),
    ('12184', 'Xã Nguyễn Trãi', '33'),
    ('12196', 'Xã Hồng Quang', '33'),
    ('12205', 'Xã Khoái Châu', '33'),
    ('12223', 'Xã Triệu Việt Vương', '33'),
    ('12238', 'Xã Việt Tiến', '33'),
    ('12247', 'Xã Châu Ninh', '33'),
    ('12271', 'Xã Chí Minh', '33'),
    ('12280', 'Xã Lương Bằng', '33'),
    ('12286', 'Xã Nghĩa Dân', '33'),
    ('12313', 'Xã Đức Hợp', '33'),
    ('12322', 'Xã Hiệp Cường', '33'),
    ('12337', 'Xã Hoàng Hoa Thám', '33'),
    ('12361', 'Xã Tiên Hoa', '33'),
    ('12364', 'Xã Tiên Lữ', '33'),
    ('12391', 'Xã Quang Hưng', '33'),
    ('12406', 'Xã Đoàn Đào', '33'),
    ('12424', 'Xã Tiên Tiến', '33'),
    ('12427', 'Xã Tống Trân', '33'),
    ('12452', 'Phường Trần Hưng Đạo', '33'),
    ('12454', 'Phường Trần Lãm', '33'),
    ('12466', 'Phường Vũ Phúc', '33'),
    ('12472', 'Xã Quỳnh Phụ', '33'),
    ('12499', 'Xã A Sào', '33'),
    ('12511', 'Xã Minh Thọ', '33'),
    ('12517', 'Xã Ngọc Lâm', '33'),
    ('12523', 'Xã Phụ Dực', '33'),
    ('12526', 'Xã Đồng Bằng', '33'),
    ('12532', 'Xã Nguyễn Du', '33'),
    ('12577', 'Xã Quỳnh An', '33'),
    ('12583', 'Xã Tân Tiến', '33'),
    ('12586', 'Xã Hưng Hà', '33'),
    ('12595', 'Xã Ngự Thiên', '33'),
    ('12613', 'Xã Long Hưng', '33'),
    ('12619', 'Xã Diên Hà', '33'),
    ('12631', 'Xã Thần Khê', '33'),
    ('12634', 'Xã Tiên La', '33'),
    ('12676', 'Xã Lê Quý Đôn', '33'),
    ('12685', 'Xã Hồng Minh', '33'),
    ('12688', 'Xã Đông Hưng', '33'),
    ('12694', 'Xã Bắc Đông Hưng', '33'),
    ('12700', 'Xã Bắc Tiên Hưng', '33'),
    ('12736', 'Xã Đông Tiên Hưng', '33'),
    ('12745', 'Xã Bắc Đông Quan', '33'),
    ('12754', 'Xã Tiên Hưng', '33'),
    ('12763', 'Xã Nam Tiên Hưng', '33'),
    ('12775', 'Xã Nam Đông Hưng', '33'),
    ('12793', 'Xã Đông Quan', '33'),
    ('12817', 'Phường Trà Lý', '33'),
    ('12826', 'Xã Thái Thụy', '33'),
    ('12850', 'Xã Tây Thụy Anh', '33'),
    ('12859', 'Xã Bắc Thụy Anh', '33'),
    ('12862', 'Xã Đông Thụy Anh', '33'),
    ('12865', 'Xã Thụy Anh', '33'),
    ('12904', 'Xã Nam Thụy Anh', '33'),
    ('12916', 'Xã Bắc Thái Ninh', '33'),
    ('12919', 'Xã Tây Thái Ninh', '33'),
    ('12922', 'Xã Thái Ninh', '33'),
    ('12943', 'Xã Đông Thái Ninh', '33'),
    ('12961', 'Xã Nam Thái Ninh', '33'),
    ('12970', 'Xã Tiền Hải', '33'),
    ('12988', 'Xã Đông Tiền Hải', '33'),
    ('13003', 'Xã Đồng Châu', '33'),
    ('13021', 'Xã Ái Quốc', '33'),
    ('13039', 'Xã Tây Tiền Hải', '33'),
    ('13057', 'Xã Nam Cường', '33'),
    ('13063', 'Xã Nam Tiền Hải', '33'),
    ('13066', 'Xã Hưng Phú', '33'),
    ('13075', 'Xã Kiến Xương', '33'),
    ('13093', 'Xã Trà Giang', '33'),
    ('13096', 'Xã Bình Nguyên', '33'),
    ('13120', 'Xã Lê Lợi', '33'),
    ('13132', 'Xã Quang Lịch', '33'),
    ('13141', 'Xã Vũ Quý', '33'),
    ('13159', 'Xã Hồng Vũ', '33'),
    ('13183', 'Xã Bình Thanh', '33'),
    ('13186', 'Xã Bình Định', '33'),
    ('13192', 'Xã Vũ Thư', '33'),
    ('13219', 'Xã Vạn Xuân', '33'),
    ('13222', 'Xã Thư Trì', '33'),
    ('13225', 'Phường Thái Bình', '33'),
    ('13246', 'Xã Tân Thuận', '33'),
    ('13264', 'Xã Thư Vũ', '33'),
    ('13279', 'Xã Vũ Tiên', '33');

/*!40000 ALTER TABLE `wards` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping data for table `work_log`
--
LOCK TABLES `work_log` WRITE;

/*!40000 ALTER TABLE `work_log` DISABLE KEYS */;

/*!40000 ALTER TABLE `work_log` ENABLE KEYS */;

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-03 14:03:18