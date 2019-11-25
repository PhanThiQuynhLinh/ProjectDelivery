package delivery.food.pro.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "khuvuc")
public class KhuVuc {

    @Id
    @GeneratedValue
    private String maKhuVuc;
    
    @Column(name = "TenKhuVuc")
    private String tenKhuVuc;
    
    
}
