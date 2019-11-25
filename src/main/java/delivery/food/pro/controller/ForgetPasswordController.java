package delivery.food.pro.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import delivery.food.pro.common.Constants;
import delivery.food.pro.entity.KhachHang;

@Controller
public class ForgetPasswordController {

    @Autowired
    private MailSender mailSender;

    @Autowired
    HttpSession session;

    @GetMapping(Constants.Url.FORGET_PASSWORD)
    public String forgetPwd(Model model) {
        model.addAttribute("khachHang", new KhachHang());
        return "QuenMatKhau";
    }

    @PostMapping(Constants.Url.FORGET_PASSWORD)
    public String doforgetPwd(@ModelAttribute("khachHang") KhachHang khachHang) {
        
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setTo(khachHang.getEmail());
        mailMessage.setSubject("Test send email");
        mailMessage.setText("http://localhost:8080/registerPassword");
        this.mailSender.send(mailMessage);

        session.setAttribute("emailRegisPwd", khachHang.getEmail());

        return "redirect:" + Constants.Url.LOGIN;
    }
}
