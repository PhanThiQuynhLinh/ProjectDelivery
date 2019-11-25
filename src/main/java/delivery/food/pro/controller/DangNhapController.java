package delivery.food.pro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.thymeleaf.templateresolver.ClassLoaderTemplateResolver;

import delivery.food.pro.common.CommonUtils;
import delivery.food.pro.common.Constants;
import delivery.food.pro.common.MailUtils;
import delivery.food.pro.common.StringUtils;
import delivery.food.pro.config.MailConfig;
import delivery.food.pro.entity.KhachHang;
import delivery.food.pro.service.KhachHangService;

@Controller
public class DangNhapController {

    @Autowired
    KhachHangService khachHangService;
    
    @Autowired
    HttpSession session;
    
    /*=========== Public Method=============*/
    /**
     * Login
     * 
     * @param model
     * @return DangNhap.html
     */
    @GetMapping(value = {"/", Constants.Url.LOGIN})
    public String login(Model model, HttpServletRequest request) {
                
        session = request.getSession();
        if(CommonUtils.isLogin(session)) {
            return "TrangChu";
        }
        
        model.addAttribute("khachHang", new KhachHang());
        
        
        return "DangNhap";
    }

    /**
     * Do login
     * 
     * @param khachHang
     * @param bindingResult
     * @return TrangChu.html
     */
    @PostMapping(value = {"/", Constants.Url.LOGIN})
    public ModelAndView doLogin(@Valid @ModelAttribute("khachHang") KhachHang khachHang, BindingResult bindingResult) {
        ModelAndView mav = new ModelAndView("TrangChu");

        // Check validate
        checkValidate(bindingResult, khachHang);
        
        if(bindingResult.hasErrors()) {
            mav.addObject("user", khachHang);
            mav.setViewName("DangNhap");
            return mav;
        }
        
        // Check exist KhachHang
        if(khachHangService.findKhachHangByEmailAndPassword(khachHang.getEmail(), khachHang.getMatKhau()) == null) {
            bindingResult.rejectValue("matKhau", "login.fail");
            mav.addObject("user", khachHang);
            mav.setViewName("DangNhap");
            return mav;
            
        }
        setSession(session, khachHang);
        
        return mav;
    }
    
    /**
     * Do Logout
     * 
     * @param model
     * @return String
     */
    @GetMapping(Constants.Url.LOGOUT)
    public String doLogOut(Model model) {
        
        session.removeAttribute(Constants.Key.USER);
        model.addAttribute("khachHang", new KhachHang());
        
        return "DangNhap";
    }
    
    /*=========== Private Method=============*/
    /**
     * Check validate for khachHang form
     * 
     * @param bindingResult
     * @param khachHang
     */
    private void checkValidate(BindingResult bindingResult, KhachHang khachHang) {
//        if(!StringUtils.isEmail(khachHang.getEmail())) {
//            bindingResult.reject("email", "login.password");
//        }
        
//        if(StringUtils.isEmpty(khachHang.getEmail()) || StringUtils.isEmpty(khachHang.getMatKhau())) {
//            bindingResult.rejectValue("matKhau", "login.password");
//        }
    }
    
    /**
     * Set session
     * @param session
     * @param khachHang
     */
    private void setSession(HttpSession session, KhachHang khachHang) {
        session.setAttribute(Constants.Key.USER, khachHang);
    }
    
}
