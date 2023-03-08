/*
Navicat MySQL Data Transfer

Source Server         : db
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : uh_202048

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-03-08 21:14:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_tiket`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tiket`;
CREATE TABLE `tbl_tiket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(55) NOT NULL,
  `tujuan` char(35) NOT NULL,
  `jumlah` int(15) NOT NULL,
  `member` enum('Tidak','Ya') DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `diskon` double NOT NULL,
  `totalbayar` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_tiket
-- ----------------------------
INSERT INTO `tbl_tiket` VALUES ('1', 'Bintang', 'Surabaya', '5', 'Tidak', '1000000', '4000000', '0', '5000000');
INSERT INTO `tbl_tiket` VALUES ('6', 'Bintang', 'Surabaya', '2', 'Ya', '1000000', '2000000', '100000', '5000000');

-- ----------------------------
-- Table structure for `tbl_transaksi`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_transaksi`;
CREATE TABLE `tbl_transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_barang` char(45) DEFAULT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `jenis_barang` enum('Makanan','Minuman','ATK') NOT NULL DEFAULT 'Makanan',
  `jumlah_barang` int(15) DEFAULT NULL,
  `harga_satuan` int(15) DEFAULT NULL,
  `diskon` int(15) DEFAULT NULL,
  `total_harga` int(15) DEFAULT NULL,
  `member` enum('Ya','Tidak') DEFAULT 'Ya',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_transaksi
-- ----------------------------
INSERT INTO `tbl_transaksi` VALUES ('45', 'A001', 'Terigu', 'Makanan', '2', '5000', '1000', '9000', 'Ya');
INSERT INTO `tbl_transaksi` VALUES ('46', 'MI001', 'Fruit Tea', 'Minuman', '4', '3500', '0', '14000', 'Tidak');
INSERT INTO `tbl_transaksi` VALUES ('47', 'A001', 'Terigu', 'Makanan', '3', '5000', '1500', '13500', 'Ya');
INSERT INTO `tbl_transaksi` VALUES ('49', 'A001', 'Terigu', 'Makanan', '4', '5000', '2000', '18000', 'Ya');
