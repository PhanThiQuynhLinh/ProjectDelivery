-- KHU VỰC 
INSERT INTO `delivery`.`khuvuc` (`MaKhuVuc`, `TenKhuVuc`) VALUES ('MKV001', 'Liên Chiểu');
INSERT INTO `delivery`.`khuvuc` (`MaKhuVuc`, `TenKhuVuc`) VALUES ('MKV002', 'Hải Châu');
INSERT INTO `delivery`.`khuvuc` (`MaKhuVuc`, `TenKhuVuc`) VALUES ('MKV003', 'Cẩm Lệ');
INSERT INTO `delivery`.`khuvuc` (`MaKhuVuc`, `TenKhuVuc`) VALUES ('MKV004', 'Hòa Vang');
INSERT INTO `delivery`.`khuvuc` (`MaKhuVuc`, `TenKhuVuc`) VALUES ('MKV005', 'Ngũ Hành Sơn');
INSERT INTO `delivery`.`khuvuc` (`MaKhuVuc`, `TenKhuVuc`) VALUES ('MKV006', 'Thanh Khê');

-- LOẠI MÓN ĂN
INSERT INTO `delivery`.`loaimonan` (`MaLoaiMonAn`, `TenLoaiMonAn`) VALUES ('MMA001', 'Hàn Quốc');
INSERT INTO `delivery`.`loaimonan` (`MaLoaiMonAn`, `TenLoaiMonAn`) VALUES ('MMA002', 'Nhật Bản');
INSERT INTO `delivery`.`loaimonan` (`MaLoaiMonAn`, `TenLoaiMonAn`) VALUES ('MMA003', 'Thức Uống');
INSERT INTO `delivery`.`loaimonan` (`MaLoaiMonAn`, `TenLoaiMonAn`) VALUES ('MMA004', 'BBQ');
INSERT INTO `delivery`.`loaimonan` (`MaLoaiMonAn`, `TenLoaiMonAn`) VALUES ('MMA005', 'Trà Sữa');
INSERT INTO `delivery`.`loaimonan` (`MaLoaiMonAn`, `TenLoaiMonAn`) VALUES ('MMA006', 'Lẩu');

-- KHÁCH HÀNG
INSERT INTO `delivery`.`khachhang` (`MaKhachHang`, `TenKhachHang`, `Email`, `MatKhau`, `GioiTinh`, `SoDienThoai`, `NgaySinh`, `DiaChi`, `DiemTichLuy`, `MaKhuVuc`) VALUES ('MKH001', 'Nguyễn Thị A', 'nta@gmail.com', '123', '0', '0909090909', '28/11/1997', '34 Hoàng Diệu, Đà Nẵng', '0', 'MKV003');
INSERT INTO `delivery`.`khachhang` (`MaKhachHang`, `TenKhachHang`, `Email`, `MatKhau`, `GioiTinh`, `SoDienThoai`, `NgaySinh`, `DiaChi`, `DiemTichLuy`, `MaKhuVuc`) VALUES ('MKH002', 'Nguyễn Thị V', 'ntv@gmail.com', '123', '0', '0909090909', '28/11/1997', '34 Hoàng Diệu, Đà Nẵng', '0', 'MKV002');
INSERT INTO `delivery`.`khachhang` (`MaKhachHang`, `TenKhachHang`, `Email`, `MatKhau`, `GioiTinh`, `SoDienThoai`, `NgaySinh`, `DiaChi`, `DiemTichLuy`, `MaKhuVuc`) VALUES ('MKH003', 'Nguyễn Thị D', 'ntd@gmail.com', '123', '0', '0909090909', '28/11/1997', '34 Hoàng Diệu, Đà Nẵng', '0', 'MKV004');
INSERT INTO `delivery`.`khachhang` (`MaKhachHang`, `TenKhachHang`, `Email`, `MatKhau`, `GioiTinh`, `SoDienThoai`, `NgaySinh`, `DiaChi`, `DiemTichLuy`, `MaKhuVuc`) VALUES ('MKH004', 'Nguyễn Thị C', 'ntc@gmail.com', '123', '0', '0909090909', '28/11/1997', '34 Hoàng Diệu, Đà Nẵng', '0', 'MKV002');
INSERT INTO `delivery`.`khachhang` (`MaKhachHang`, `TenKhachHang`, `Email`, `MatKhau`, `GioiTinh`, `SoDienThoai`, `NgaySinh`, `DiaChi`, `DiemTichLuy`, `MaKhuVuc`) VALUES ('MKH005', 'Nguyễn Thị Q', 'ntq@gmail.com', '123', '0', '0909090909', '28/11/1997', '34 Hoàng Diệu, Đà Nẵng', '0', 'MKV001');
INSERT INTO `delivery`.`khachhang` (`MaKhachHang`, `TenKhachHang`, `Email`, `MatKhau`, `GioiTinh`, `SoDienThoai`, `NgaySinh`, `DiaChi`, `DiemTichLuy`, `MaKhuVuc`) VALUES ('MKH006', 'Nguyễn Thị G', 'ntg@gmail.com', '123', '0', '0909090909', '28/11/1997', '34 Hoàng Diệu, Đà Nẵng', '0', 'MKV001');
INSERT INTO `delivery`.`khachhang` (`MaKhachHang`, `TenKnhahanghachHang`, `Email`, `MatKhau`, `GioiTinh`, `SoDienThoai`, `NgaySinh`, `DiaChi`, `DiemTichLuy`, `MaKhuVuc`) VALUES ('MKH007', 'Nguyễn Thị H', 'nth@gmail.com', '123', '0', '0909090909', '28/11/1997', '34 Hoàng Diệu, Đà Nẵng', '0', 'MKV001');

-- LOẠI NHÀ HÀNG
INSERT INTO `delivery`.`loainhahang` (`MaLoaiNhaHang`, `TenLoaiNhaHang`) VALUES ('MLNH001', 'Hàn Quốc');
INSERT INTO `delivery`.`loainhahang` (`MaLoaiNhaHang`, `TenLoaiNhaHang`) VALUES ('MLNH002', 'Nhật Bản');
INSERT INTO `delivery`.`loainhahang` (`MaLoaiNhaHang`, `TenLoaiNhaHang`) VALUES ('MLNH003', 'Ý');
INSERT INTO `delivery`.`loainhahang` (`MaLoaiNhaHang`, `TenLoaiNhaHang`) VALUES ('MLNH004', 'Trung Quốc');
INSERT INTO `delivery`.`loainhahang` (`MaLoaiNhaHang`, `TenLoaiNhaHang`) VALUES ('MLNH005', 'Việt Nam');

-- NHÀ HÀNG
INSERT INTO `delivery`.`nhahang` (`MaNhaHang`, `Email`, `MatKhau`, `TenNhaHang`, `SoDienThoai`, `DiaChi`, `HinhAnh`, `MoTa`, `DonHangToiThieu`, `MaLoaiNhaHang`) VALUES ('MNH001', 'nhahang1@gmail.com', '123', 'Ze food', '0909090909', '23 Trần Cao Vân', 'img1.png', 'abc', '80000', 'MLNH001');
INSERT INTO `delivery`.`nhahang` (`MaNhaHang`, `Email`, `MatKhau`, `TenNhaHang`, `SoDienThoai`, `DiaChi`, `HinhAnh`, `MoTa`, `DonHangToiThieu`, `MaLoaiNhaHang`) VALUES ('MNH002', 'nhahang2@gmail.com', '123', 'Ze food', '0909090909', '23 Trần Cao Vân', 'img1.png', 'abc', '80000', 'MLNH002');
INSERT INTO `delivery`.`nhahang` (`MaNhaHang`, `Email`, `MatKhau`, `TenNhaHang`, `SoDienThoai`, `DiaChi`, `HinhAnh`, `MoTa`, `DonHangToiThieu`, `MaLoaiNhaHang`) VALUES ('MNH003', 'nhahang3@gmail.com', '123', 'Ze food', '0909090909', '23 Trần Cao Vân', 'img1.png', 'abc', '80000', 'MLNH004');
INSERT INTO `delivery`.`nhahang` (`MaNhaHang`, `Email`, `MatKhau`, `TenNhaHang`, `SoDienThoai`, `DiaChi`, `HinhAnh`, `MoTa`, `DonHangToiThieu`, `MaLoaiNhaHang`) VALUES ('MNH004', 'nhahang4@gmail.com', '123', 'Ze food', '0909090909', '23 Trần Cao Vân', 'img1.png', 'abc', '80000', 'MLNH004');
INSERT INTO `delivery`.`nhahang` (`MaNhaHang`, `Email`, `MatKhau`, `TenNhaHang`, `SoDienThoai`, `DiaChi`, `HinhAnh`, `MoTa`, `DonHangToiThieu`, `MaLoaiNhaHang`) VALUES ('MNH005', 'nhahang5@gmail.com', '123', 'Ze food', '0909090909', '23 Trần Cao Vân', 'img1.png', 'abc', '80000', 'MLNH002');

-- PHÍ GIAO HÀNG
INSERT INTO `delivery`.`phigiaohang` (`MaNhaHang`, `MaKhuVuc`, `PhiGiaoHang`, `ThoiGianGiaoHang`) VALUES ('MNH001', 'MKV001', '15000', '12');
INSERT INTO `delivery`.`phigiaohang` (`MaNhaHang`, `MaKhuVuc`, `PhiGiaoHang`, `ThoiGianGiaoHang`) VALUES ('MNH001', 'MKV002', '25000', '20');
INSERT INTO `delivery`.`phigiaohang` (`MaNhaHang`, `MaKhuVuc`, `PhiGiaoHang`, `ThoiGianGiaoHang`) VALUES ('MNH001', 'MKV003', '21000', '17');
INSERT INTO `delivery`.`phigiaohang` (`MaNhaHang`, `MaKhuVuc`, `PhiGiaoHang`, `ThoiGianGiaoHang`) VALUES ('MNH002', 'MKV001', '15000', '12');
INSERT INTO `delivery`.`phigiaohang` (`MaNhaHang`, `MaKhuVuc`, `PhiGiaoHang`, `ThoiGianGiaoHang`) VALUES ('MNH002', 'MKV004', '22000', '18');

-- MÓN ĂN
INSERT INTO `delivery`.`monan` (`MaMonAn`, `TenMonAn`, `GiaBan`, `HinhAnh`, `MoTa`, `DonViTinh`, `MaNhaHang`, `GiamGia`, `MaLoaiMonAn`) VALUES ('MMA001', 'Gà Phô Mai', '25000', 'img.png', 'abc', 'Đĩa', 'MNH001', '0', 'MMA001');
INSERT INTO `delivery`.`monan` (`MaMonAn`, `TenMonAn`, `GiaBan`, `HinhAnh`, `MoTa`, `DonViTinh`, `MaNhaHang`, `GiamGia`, `MaLoaiMonAn`) VALUES ('MMA002', 'Gà Phô Mai', '25000', 'img.png', 'abc', 'Đĩa', 'MNH001', '0', 'MMA001');
INSERT INTO `delivery`.`monan` (`MaMonAn`, `TenMonAn`, `GiaBan`, `HinhAnh`, `MoTa`, `DonViTinh`, `MaNhaHang`, `GiamGia`, `MaLoaiMonAn`) VALUES ('MMA003', 'Gà Phô Mai', '25000', 'img.png', 'abc', 'Đĩa', 'MNH001', '0', 'MMA001');
INSERT INTO `delivery`.`monan` (`MaMonAn`, `TenMonAn`, `GiaBan`, `HinhAnh`, `MoTa`, `DonViTinh`, `MaNhaHang`, `GiamGia`, `MaLoaiMonAn`) VALUES ('MMA004', 'Gà Phô Mai', '25000', 'img.png', 'abc', 'Đĩa', 'MNH001', '0', 'MMA001');
INSERT INTO `delivery`.`monan` (`MaMonAn`, `TenMonAn`, `GiaBan`, `HinhAnh`, `MoTa`, `DonViTinh`, `MaNhaHang`, `GiamGia`, `MaLoaiMonAn`) VALUES ('MMA005', 'Gà Phô Mai', '25000', 'img.png', 'abc', 'Đĩa', 'MNH001', '0', 'MMA001');

-- NHÂN VIÊN
INSERT INTO `delivery`.`nhanvien` (`MaNhanVien`, `TenNhanVien`, `MatKhau`, `NgaySinh`, `GioiTinh`, `SoDienThoai`, `DiaChi`, `Email`, `MaNhaHang`) VALUES ('MNV001', 'Nhân Viên 1', '123', '27/11/1997', '0', '09090909', '21 Quang Trung', 'nhavien1@gmail.com', 'MNH001');
INSERT INTO `delivery`.`nhanvien` (`MaNhanVien`, `TenNhanVien`, `MatKhau`, `NgaySinh`, `GioiTinh`, `SoDienThoai`, `DiaChi`, `Email`, `MaNhaHang`) VALUES ('MNV002', 'Nhân Viên 1', '123', '27/11/1997', '0', '09090909', '21 Quang Trung', 'nhavien2@gmail.com', 'MNH001');
INSERT INTO `delivery`.`nhanvien` (`MaNhanVien`, `TenNhanVien`, `MatKhau`, `NgaySinh`, `GioiTinh`, `SoDienThoai`, `DiaChi`, `Email`, `MaNhaHang`) VALUES ('MNV003', 'Nhân Viên 1', '123', '27/11/1997', '0', '09090909', '21 Quang Trung', 'nhavien3@gmail.com', 'MNH001');
INSERT INTO `delivery`.`nhanvien` (`MaNhanVien`, `TenNhanVien`, `MatKhau`, `NgaySinh`, `GioiTinh`, `SoDienThoai`, `DiaChi`, `Email`, `MaNhaHang`) VALUES ('MNV004', 'Nhân Viên 1', '123', '27/11/1997', '0', '09090909', '21 Quang Trung', 'nhavien4@gmail.com', 'MNH001');

-- HÓA ĐƠN
INSERT INTO `delivery`.`hoadon` (`MaHoaDon`, `TenNguoiNhan`, `SoDienThoaiNguoiNhan`, `DiaChiGiao`, `NgayXuatDon`, `TinhTrangGiaoHang`, `TongTienTT`, `MaKhachHang`) VALUES ('MHD001', 'Trần Thị Mai', '090909090', '12 Quang Trung', '12/11/2019', 'Đã giao', '300000', 'MKH001');
INSERT INTO `delivery`.`hoadon` (`MaHoaDon`, `TenNguoiNhan`, `SoDienThoaiNguoiNhan`, `DiaChiGiao`, `NgayXuatDon`, `TinhTrangGiaoHang`, `TongTienTT`, `MaKhachHang`) VALUES ('MHD002', 'Trần Thị Mai', '090909090', '12 Quang Trung', '12/11/2019', 'Đã giao', '300000', 'MKH002');
INSERT INTO `delivery`.`hoadon` (`MaHoaDon`, `TenNguoiNhan`, `SoDienThoaiNguoiNhan`, `DiaChiGiao`, `NgayXuatDon`, `TinhTrangGiaoHang`, `TongTienTT`, `MaKhachHang`) VALUES ('MHD003', 'Trần Thị Mai', '090909090', '12 Quang Trung', '12/11/2019', 'Đã giao', '300000', 'MKH003');
INSERT INTO `delivery`.`hoadon` (`MaHoaDon`, `TenNguoiNhan`, `SoDienThoaiNguoiNhan`, `DiaChiGiao`, `NgayXuatDon`, `TinhTrangGiaoHang`, `TongTienTT`, `MaKhachHang`) VALUES ('MHD004', 'Trần Thị Mai', '090909090', '12 Quang Trung', '12/11/2019', 'Đã giao', '300000', 'MKH004');

-- CHI TIẾT ĐƠN HÀNG
INSERT INTO `delivery`.`chitiethoadon` (`MaMonAn`, `MaHoaDon`, `SoLuong`) VALUES ('MMA001', 'MHD001', '3');
INSERT INTO `delivery`.`chitiethoadon` (`MaMonAn`, `MaHoaDon`, `SoLuong`) VALUES ('MMA002', 'MHD001', '1');
INSERT INTO `delivery`.`chitiethoadon` (`MaMonAn`, `MaHoaDon`, `SoLuong`) VALUES ('MMA003', 'MHD001', '1');
INSERT INTO `delivery`.`chitiethoadon` (`MaMonAn`, `MaHoaDon`, `SoLuong`) VALUES ('MMA001', 'MHD002', '1');
INSERT INTO `delivery`.`chitiethoadon` (`MaMonAn`, `MaHoaDon`, `SoLuong`) VALUES ('MMA003', 'MHD002', '1');



