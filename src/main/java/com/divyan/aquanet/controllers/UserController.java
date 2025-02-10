package com.divyan.aquanet.controllers;



import com.divyan.aquanet.model.MessageProvider;
import com.divyan.aquanet.model.User;
import com.divyan.aquanet.repo.UserRepository;
import com.divyan.aquanet.service.MailService;
import jakarta.mail.MessagingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private MailService mailService;

    @Autowired
    private UserRepository userRepository;

    @RequestMapping("/add")
    public String addUser(@ModelAttribute User user,Model model) {
        System.out.println(user);
        model.addAttribute("msg","msg");
        String message="Welcome,"+user.getName()+",\n"+"Thankyou for joining in Aquanet.";


        String htmlContent = MessageProvider.getwelcomeMessage(user.getName());


        try {
            mailService.sendHtmlEmail(user.getMail(),"Welcome to AquaNet",htmlContent);
        }catch(MessagingException e){
            e.printStackTrace();
        }

        userRepository.save(user);
        return "redirect:/";
    }

}
