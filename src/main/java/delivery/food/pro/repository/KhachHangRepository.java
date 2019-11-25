package delivery.food.pro.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import delivery.food.pro.entity.KhachHang;

@Repository
public interface KhachHangRepository extends CrudRepository<KhachHang, String> {
    
    @Query("SELECT u From KhachHang u Where u.maKhachHang = ?1")
    Optional<KhachHang> findAllKhachHang(String maKhachHang);
    
    @Query("SELECT u FROM KhachHang u WHERE u.email = ?1 AND u.matKhau = ?2")
    Optional<KhachHang> findKhachHangByEmailAndPassword(String email, String password);
    
    @Query("UPDATE KhachHang SET matKhau = ?2 WHERE email = ?1")
    Integer regisPassword(String email, String password);
}
