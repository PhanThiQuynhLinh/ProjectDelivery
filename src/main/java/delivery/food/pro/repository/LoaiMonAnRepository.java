package delivery.food.pro.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import delivery.food.pro.entity.LoaiMonAn;

@Repository
public interface LoaiMonAnRepository extends CrudRepository<LoaiMonAn, String> {

}
