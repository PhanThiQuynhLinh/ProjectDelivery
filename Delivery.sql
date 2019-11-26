-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema delivery
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema delivery
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `delivery` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `delivery` ;

-- -----------------------------------------------------
-- Table `delivery`.`LoaiNhaHang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `delivery`.`LoaiNhaHang` (
  `MaLoaiNhaHang` NVARCHAR(50) NOT NULL,
  `TenLoaiNhaHang` NVARCHAR(50) NULL,
  PRIMARY KEY (`MaLoaiNhaHang`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `delivery`.`NhaHang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `delivery`.`NhaHang` (
  `MaNhaHang` NVARCHAR(50) NOT NULL,
  `Email` NVARCHAR(50) NULL,
  `MatKhau` NVARCHAR(50) NULL,
  `TenNhaHang` NVARCHAR(50) NULL,
  `SoDienThoai` NVARCHAR(11) NULL,
  `DiaChi` VARCHAR(45) NULL,
  `HinhAnh` NVARCHAR(255) NULL,
  `MoTa` NVARCHAR(255) NULL,
  `DonHangToiThieu` INT NULL,
  `MaLoaiNhaHang` NVARCHAR(50) NOT NULL,
  PRIMARY KEY (`MaNhaHang`),
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC) VISIBLE,
  UNIQUE INDEX `MaNhaHang_UNIQUE` (`MaNhaHang` ASC) VISIBLE,
  INDEX `fk_NhaHang_LoaiNhaHang_idx` (`MaLoaiNhaHang` ASC) VISIBLE,
  CONSTRAINT `fk_NhaHang_LoaiNhaHang`
    FOREIGN KEY (`MaLoaiNhaHang`)
    REFERENCES `delivery`.`LoaiNhaHang` (`MaLoaiNhaHang`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `delivery`.`NhanVien`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `delivery`.`NhanVien` (
  `MaNhanVien` NVARCHAR(50) NOT NULL,
  `TenNhanVien` NVARCHAR(50) NULL,
  `MatKhau` NVARCHAR(50) NULL,
  `NgaySinh` NVARCHAR(50) NULL,
  `GioiTinh` INT NULL,
  `SoDienThoai` NVARCHAR(50) NULL,
  `DiaChi` NVARCHAR(50) NULL,
  `Email` NVARCHAR(50) NULL,
  `MaNhaHang` NVARCHAR(50) NOT NULL,
  PRIMARY KEY (`MaNhanVien`),
  INDEX `fk_NhanVien_NhaHang1_idx` (`MaNhaHang` ASC) VISIBLE,
  CONSTRAINT `fk_NhanVien_NhaHang1`
    FOREIGN KEY (`MaNhaHang`)
    REFERENCES `delivery`.`NhaHang` (`MaNhaHang`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `delivery`.`LoaiMonAn`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `delivery`.`LoaiMonAn` (
  `MaLoaiMonAn` NVARCHAR(50) NOT NULL,
  `TenLoaiMonAn` NVARCHAR(50) NULL,
  PRIMARY KEY (`MaLoaiMonAn`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `delivery`.`MonAn`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `delivery`.`MonAn` (
  `MaMonAn` NVARCHAR(50) NOT NULL,
  `TenMonAn` NVARCHAR(50) NULL,
  `GiaBan` INT NULL,
  `HinhAnh` NVARCHAR(255) NULL,
  `MoTa` NVARCHAR(255) NULL,
  `DonViTinh` NVARCHAR(50) NULL,
  `MaNhaHang` NVARCHAR(50) NOT NULL,
  `GiamGia` INT NULL,
  `MaLoaiMonAn` NVARCHAR(50) NOT NULL,
  PRIMARY KEY (`MaMonAn`),
  INDEX `fk_MonAn_NhaHang1_idx` (`MaNhaHang` ASC) VISIBLE,
  INDEX `fk_MonAn_LoaiMonAn1_idx` (`MaLoaiMonAn` ASC) VISIBLE,
  CONSTRAINT `fk_MonAn_NhaHang1`
    FOREIGN KEY (`MaNhaHang`)
    REFERENCES `delivery`.`NhaHang` (`MaNhaHang`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_MonAn_LoaiMonAn1`
    FOREIGN KEY (`MaLoaiMonAn`)
    REFERENCES `delivery`.`LoaiMonAn` (`MaLoaiMonAn`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `delivery`.`KhuVuc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `delivery`.`KhuVuc` (
  `MaKhuVuc` NVARCHAR(50) NOT NULL,
  `TenKhuVuc` NVARCHAR(50) NULL,
  PRIMARY KEY (`MaKhuVuc`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `delivery`.`KhachHang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `delivery`.`KhachHang` (
  `MaKhachHang` NVARCHAR(50) NOT NULL,
  `TenKhachHang` NVARCHAR(50) NULL,
  `Email` NVARCHAR(50) NULL,
  `MatKhau` NVARCHAR(50) NULL,
  `GioiTinh` INT NULL,
  `SoDienThoai` NVARCHAR(50) NULL,
  `NgaySinh` NVARCHAR(50) NULL,
  `DiaChi` NVARCHAR(255) NULL,
  `DiemTichLuy` INT NULL,
  `MaKhuVuc` NVARCHAR(50) NOT NULL,
  PRIMARY KEY (`MaKhachHang`),
  INDEX `fk_KhachHang_KhuVuc1_idx` (`MaKhuVuc` ASC) VISIBLE,
  CONSTRAINT `fk_KhachHang_KhuVuc1`
    FOREIGN KEY (`MaKhuVuc`)
    REFERENCES `delivery`.`KhuVuc` (`MaKhuVuc`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `delivery`.`HoaDon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `delivery`.`HoaDon` (
  `MaHoaDon` NVARCHAR(50) NOT NULL,
  `TenNguoiNhan` NVARCHAR(50) NULL,
  `SoDienThoaiNguoiNhan` NVARCHAR(50) NULL,
  `DiaChiGiao` NVARCHAR(255) NULL,
  `NgayXuatDon` NVARCHAR(50) NULL,
  `TinhTrangGiaoHang` NVARCHAR(50) NULL,
  `TongTienTT` INT NULL,
  `MaKhachHang` NVARCHAR(50) NOT NULL,
  PRIMARY KEY (`MaHoaDon`),
  INDEX `fk_HoaDon_KhachHang1_idx` (`MaKhachHang` ASC) VISIBLE,
  CONSTRAINT `fk_HoaDon_KhachHang1`
    FOREIGN KEY (`MaKhachHang`)
    REFERENCES `delivery`.`KhachHang` (`MaKhachHang`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `delivery`.`ChiTietHoaDon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `delivery`.`ChiTietHoaDon` (
  `MaMonAn` NVARCHAR(50) NOT NULL,
  `MaHoaDon` NVARCHAR(50) NOT NULL,
  `SoLuong` INT NULL,
  PRIMARY KEY (`MaHoaDon`, `MaMonAn`),
  INDEX `fk_MonAn_has_HoaDon_HoaDon1_idx` (`MaHoaDon` ASC) VISIBLE,
  INDEX `fk_MonAn_has_HoaDon_MonAn1_idx` (`MaMonAn` ASC) VISIBLE,
  CONSTRAINT `fk_MonAn_has_HoaDon_MonAn1`
    FOREIGN KEY (`MaMonAn`)
    REFERENCES `delivery`.`MonAn` (`MaMonAn`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_MonAn_has_HoaDon_HoaDon1`
    FOREIGN KEY (`MaHoaDon`)
    REFERENCES `delivery`.`HoaDon` (`MaHoaDon`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `delivery`.`PhiGiaoHang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `delivery`.`PhiGiaoHang` (
  `MaNhaHang` NVARCHAR(50) NOT NULL,
  `MaKhuVuc` NVARCHAR(50) NOT NULL,
  `PhiGiaoHang` INT NULL,
  `ThoiGianGiaoHang` INT NULL,
  PRIMARY KEY (`MaNhaHang`, `MaKhuVuc`),
  INDEX `fk_NhaHang_has_KhuVuc_KhuVuc1_idx` (`MaKhuVuc` ASC) VISIBLE,
  INDEX `fk_NhaHang_has_KhuVuc_NhaHang1_idx` (`MaNhaHang` ASC) VISIBLE,
  CONSTRAINT `fk_NhaHang_has_KhuVuc_NhaHang1`
    FOREIGN KEY (`MaNhaHang`)
    REFERENCES `delivery`.`NhaHang` (`MaNhaHang`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_NhaHang_has_KhuVuc_KhuVuc1`
    FOREIGN KEY (`MaKhuVuc`)
    REFERENCES `delivery`.`KhuVuc` (`MaKhuVuc`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
