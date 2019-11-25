package delivery.food.pro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import delivery.food.pro.entity.LoaiMonAn;
import delivery.food.pro.repository.LoaiMonAnRepository;

@Service
public class LoaiMonAnService {

    @Autowired
    LoaiMonAnRepository loaiMonAnRepository;
    
    public List<LoaiMonAn> getAllLoaiMonAn(){
        List<LoaiMonAn> monAns = (List<LoaiMonAn>) loaiMonAnRepository.findAll();
        
        if(monAns.size() > 0) {
            return monAns;
        }
        return null;
    }
}
