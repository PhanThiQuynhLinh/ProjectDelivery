package delivery.food.pro.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import delivery.food.pro.entity.LoaiMonAn;
import delivery.food.pro.service.LoaiMonAnService;

@Controller
public class Hello {
	
    @Autowired
    LoaiMonAnService loaiMonAnService;
    
	@GetMapping(value = "/hello")
	public String hello() {
	    List<LoaiMonAn> monAns = loaiMonAnService.getAllLoaiMonAn();
	    if(monAns != null) {
	        System.out.println(monAns.size());
	    }else {
	        System.out.println("=================fail");
	    }
	    
		return "ChiTietNhaHang";
	}
}
