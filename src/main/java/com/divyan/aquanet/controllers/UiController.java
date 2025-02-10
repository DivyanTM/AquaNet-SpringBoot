package com.divyan.aquanet.controllers;



import com.divyan.aquanet.repo.SensorDataRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UiController {
    private final SensorDataRepository sensorDataRepository;

    public UiController(SensorDataRepository sensorDataRepository) {
        this.sensorDataRepository = sensorDataRepository;
    }

    @RequestMapping("/")
    public String home(){
        return "index";
    }

    @RequestMapping("/trackdata")
    public String trackData(Model model){
        model.addAttribute("list",sensorDataRepository.findAll());
        return "data";
    }

    @RequestMapping("/register")
    public String register(){
        return "register";
    }

    @RequestMapping("/about")
    public String about(){
        return "about";
    }
}
