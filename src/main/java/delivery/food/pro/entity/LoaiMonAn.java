package delivery.food.pro.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "loaimonan")
public class LoaiMonAn {
    
    @Id
    @GeneratedValue
    private String maLoaiMonAn;
    
    @Column(name = "TenLoaiMonAn")
    private String tenLoaiMonAn;
}
