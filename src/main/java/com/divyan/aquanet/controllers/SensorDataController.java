package com.divyan.aquanet.controllers;

import com.divyan.aquanet.model.MessageProvider;
import com.divyan.aquanet.model.SensorData;
import com.divyan.aquanet.model.User;
import com.divyan.aquanet.repo.SensorDataRepository;
import com.divyan.aquanet.repo.UserRepository;
import com.divyan.aquanet.service.MailService;
import com.divyan.aquanet.service.WhatsappService;
import jakarta.mail.MessagingException;
import jakarta.servlet.ServletOutputStream;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

@Controller
@RequestMapping("/sensor")
public class SensorDataController {

    @Autowired
    private MailService mailService;

    @Autowired
    private SensorDataRepository sensorDataRepository;

    private final BlockingQueue<SensorData> sensorDataQueue = new LinkedBlockingQueue<>();
    @Autowired
    private UserRepository userRepository;


    @Autowired
    private WhatsappService whatsappService;

    @PostMapping("/update")
    @ResponseBody
    public String updateSensorData(@RequestBody SensorData sensorData) {
        try {
            sensorData.setTimeStamp(LocalDateTime.now());
            sensorDataQueue.offer(sensorData);
            System.out.println(sensorData.toString());
            sensorDataRepository.save(sensorData);

            Double ph= Double.valueOf(sensorData.getPh());
            Double temperature = Double.valueOf(sensorData.getTemperature());
            Double turbidity = Double.valueOf(sensorData.getTurbidity());
            Double conductivity = Double.valueOf(sensorData.getConductivity());

            if(ph>8.5||ph<6.5){
                List<User>users=userRepository.findAll();
                for(User user:users){
                    String message= MessageProvider.getWarningMessage("PH ",ph+" "," 6.5 - 8.5 ");
                    mailService.sendHtmlEmail(user.getMail(),"Water quality breach",message);
                    whatsappService.sendMessage("+91"+user.getPhoneNumber());
                }

            }

            if(turbidity>5){
                List<User>users=userRepository.findAll();
                for(User user:users){
                    String message= MessageProvider.getWarningMessage("TURBIDITY ",turbidity+" "," <5.2 ");
                    mailService.sendHtmlEmail(user.getMail(),"Water quality breach",message);
                    whatsappService.sendMessage("+91"+user.getPhoneNumber());
                }
            }

            if(temperature<10||temperature>30){
                List<User>users=userRepository.findAll();
                for(User user:users){
                    String message= MessageProvider.getWarningMessage("TEMPERATURE ",temperature+" ","10 - 30 ");
                    mailService.sendHtmlEmail(user.getMail(),"Water quality breach",message);
                    whatsappService.sendMessage("+91"+user.getPhoneNumber());
                }
            }

            if(conductivity<0||conductivity>500){
                List<User>users=userRepository.findAll();
                for(User user:users){
                    String message= MessageProvider.getWarningMessage("CONDUCTIVITY ",conductivity+" ","0 - 500 ");
                    mailService.sendHtmlEmail(user.getMail(),"Water quality breach",message);
                    whatsappService.sendMessage("+91"+user.getPhoneNumber());
                }
            }

            return "data saved successfully";
        } catch (Exception e) {
            return "Error receiving data: " + e.getMessage();
        }
    }

    @GetMapping("/stream")
    public void streamSensorData(HttpServletResponse response) throws IOException {
        response.setContentType("text/event-stream");
        response.setCharacterEncoding("UTF-8");
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Connection", "keep-alive");

        try (ServletOutputStream outputStream = response.getOutputStream()) {
            while (true) {

                SensorData latestData = sensorDataQueue.poll(500, TimeUnit.MILLISECONDS);

                if (latestData != null) {

                    String data = String.format(
                            "{\"ph\":\"%s\", \"turbidity\":\"%s\", \"temperature\":\"%s\", \"conductivity\":\"%s\", \"timestamp\":\"%s\"}",
                            latestData.getPh(), latestData.getTurbidity(), latestData.getTemperature(), latestData.getConductivity(),
                            latestData.getFormattedTimeStamp()
                    );




                    outputStream.write(("data: " + data + "\n\n").getBytes());
                    outputStream.flush();
                }

                Thread.sleep(1000);

            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            e.printStackTrace();
        }
    }

}
