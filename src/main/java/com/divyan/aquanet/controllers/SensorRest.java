package com.divyan.aquanet.controllers;


import com.divyan.aquanet.model.SensorData;
import com.divyan.aquanet.repo.SensorDataRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/sensor")
public class SensorRest {


    @Autowired
    private SensorDataRepository sensorDataRepository;

    @RequestMapping("/all")
    public List<SensorData> getAllData(){
        System.out.println("called all getAllData");
        List<SensorData> sensorDataList = sensorDataRepository.findAll();
        System.out.println(sensorDataList.toString());
        return sensorDataList;
    }

    @RequestMapping("/current")
    public SensorData getLastData(){
        SensorData data=sensorDataRepository.findAll().get(sensorDataRepository.findAll().size()-1);
        return data;
    }


    @RequestMapping("/lastfive")
    public List<SensorData> getLastFiveRecords(){
        List<SensorData> records=getAllData();
        if(records.size()>5){
            records=records.subList(records.size()-5,records.size());
        }
        return records;
    }

}
