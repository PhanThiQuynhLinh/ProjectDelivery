package delivery.food.pro.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import delivery.food.pro.entity.KhachHang;
import delivery.food.pro.repository.KhachHangRepository;

@Service
public class KhachHangService {

    @Autowired
    KhachHangRepository khachHangRepository;
    
    public KhachHang getKhachHangByEmail(String email) {
        Optional<KhachHang> khachHang = khachHangRepository.findAllKhachHang(email);
        if(khachHang.isPresent()) {
            return khachHang.get();
        }

        return null;
    }
    
    /**
     * Find Khach Hang by Email and Password
     * 
     * @param email
     * @param password
     * @return KhachHang
     */
    public KhachHang findKhachHangByEmailAndPassword(String email, String password) {
        Optional<KhachHang> khachHang = khachHangRepository.findKhachHangByEmailAndPassword(email, password);
        if(khachHang.isPresent()) {
            return khachHang.get();
        }
        
        return null;
    }

    /**
     * Update Password
     * 
     * @param email
     * @param password
     * @return boolean
     */
    public boolean updatePassword(String email, String password) {
        Integer result = khachHangRepository.regisPassword(email, password);
        if(result <= 0) {
            return false;
        }
        return true;
    }
}
