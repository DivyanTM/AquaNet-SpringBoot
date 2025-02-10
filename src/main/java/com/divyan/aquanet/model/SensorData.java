package com.divyan.aquanet.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;


import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;


@Document("sensor_data")
public class SensorData {

    @Id
    private String id;
    private String ph;
    private String turbidity;
    private String temperature;
    private String conductivity;
    private LocalDateTime timeStamp;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "SensorData{" +
                "id=" + id +
                ", ph='" + ph + '\'' +
                ", turbidity='" + turbidity + '\'' +
                ", temperature='" + temperature + '\'' +
                ", conductivity='" + conductivity + '\'' +
                ", timeStamp=" + timeStamp +
                '}';
    }

    public SensorData(String id, String ph, String turbidity, String temperature, String conductivity, LocalDateTime timeStamp) {
        this.id = id;
        this.ph = ph;
        this.turbidity = turbidity;
        this.temperature = temperature;
        this.conductivity = conductivity;
        this.timeStamp = timeStamp;
    }

    public String getPh() {
        return ph;
    }

    public void setPh(String ph) {
        this.ph = ph;
    }

    public String getTurbidity() {
        return turbidity;
    }

    public void setTurbidity(String turbidity) {
        this.turbidity = turbidity;
    }

    public String getTemperature() {
        return temperature;
    }

    public void setTemperature(String temperature) {
        this.temperature = temperature;
    }

    public String getConductivity() {
        return conductivity;
    }

    public void setConductivity(String conductivity) {
        this.conductivity = conductivity;
    }

    public String getFormattedTimeStamp() {
        DateTimeFormatter formatter = DateTimeFormatter.ISO_LOCAL_DATE_TIME;
        return timeStamp.format(formatter);
    }
    public SensorData(String ph, String turbidity, String temperature, String conductivity, LocalDateTime timeStamp) {
        this.ph = ph;
        this.turbidity = turbidity;
        this.temperature = temperature;
        this.conductivity = conductivity;
        this.timeStamp = timeStamp;
    }

    public SensorData() {}

    public LocalDateTime getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(LocalDateTime timeStamp) {
        this.timeStamp = timeStamp;
    }

}
