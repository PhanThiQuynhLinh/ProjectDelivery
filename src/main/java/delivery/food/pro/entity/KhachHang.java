package delivery.food.pro.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "khachhang")
public class KhachHang {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String maKhachHang;
    
    @Column(name = "TenKhachHang")
    private String tenKhachHang;
    
    @Column(name = "Email")
    private String email;
    
    @Column(name = "MatKhau")
    private String matKhau;
    
    @Column(name = "GioiTinh")
    private Integer gioiTinh;
    
    @Column(name = "SoDienThoai")
    private String soDienThoai;
    
    @Column(name = "NgaySinh")
    private String ngaySinh;
    
    @Column(name = "DiaChi")
    private String diaChi;
    
    @Column(name = "DiemTichLuy")
    private String diemTichLuy;
    
    @ManyToOne
    @JoinColumn(name = "MaKhuVuc")
    private KhuVuc khuVuc;

    public String getMaKhachHang() {
        return maKhachHang;
    }

    public void setMaKhachHang(String maKhachHang) {
        this.maKhachHang = maKhachHang;
    }

    public String getTenKhachHang() {
        return tenKhachHang;
    }

    public void setTenKhachHang(String tenKhachHang) {
        this.tenKhachHang = tenKhachHang;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public Integer getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(Integer gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(String ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getDiemTichLuy() {
        return diemTichLuy;
    }

    public void setDiemTichLuy(String diemTichLuy) {
        this.diemTichLuy = diemTichLuy;
    }

    public KhuVuc getKhuVuc() {
        return khuVuc;
    }

    public void setKhuVuc(KhuVuc khuVuc) {
        this.khuVuc = khuVuc;
    }
    
    
}
