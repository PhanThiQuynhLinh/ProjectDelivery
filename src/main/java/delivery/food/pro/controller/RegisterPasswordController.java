package delivery.food.pro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import delivery.food.pro.common.Constants;
import delivery.food.pro.form.RegisterPasswordForm;
import delivery.food.pro.service.KhachHangService;

@Controller
public class RegisterPasswordController {

    @Autowired
    KhachHangService khachHangService;
    
    @GetMapping(Constants.Url.REGISTER_PASSWORD)
    public String registerPassword(Model model) {
        model.addAttribute("passwordForm", new RegisterPasswordForm());
        return "DangKyMatKhau";
    }
    
    @PostMapping(Constants.Url.REGISTER_PASSWORD)
    public String doRegisterPassword(@Valid @ModelAttribute("passwordForm") RegisterPasswordForm passwordForm,
                                    BindingResult bindingResult,
                                    Model model,
                                    HttpServletRequest request) {
        checkValidPwd(passwordForm, bindingResult);
        if(bindingResult.hasErrors()) {
            model.addAttribute("passwordForm", passwordForm);
            return "DangKyMatKhau";
        }
        
        String email = (String) request.getAttribute("emailRegisPwd");
        khachHangService.updatePassword(email, passwordForm.getNewPassword());
        
        return "redirect:" + Constants.Url.LOGIN;
    }
    
    private void checkValidPwd(RegisterPasswordForm passwordForm, BindingResult bindingResult) {
        if(!passwordForm.getConfirmPassword().equals(passwordForm.getNewPassword())) {
            bindingResult.rejectValue("confirmPassword", "register.password.error");
        }
        
//        if(StringUtils.isEmpty(passwordForm.getNewPassword()) || !StringUtils.isPassword(passwordForm.getNewPassword())) {
//            bindingResult.rejectValue("newPassword", "login.password");
//        }
//        
//        if(StringUtils.isEmpty(passwordForm.getConfirmPassword()) || !StringUtils.isPassword(passwordForm.getConfirmPassword())) {
//            bindingResult.rejectValue("confirmPassword", "login.password");
//        }
    }
}
