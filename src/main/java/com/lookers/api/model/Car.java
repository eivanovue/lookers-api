package com.lookers.api.model;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
public class Car {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private String brand;

    private String model;

    private BigDecimal RRP;

    private BigDecimal price;

    private BigDecimal saving;

    private Integer mileage;

    private String registration;

    private String fuelType;

    private String engineSize;

    private Integer doors;

    private String bodyStyle;

    private String imgSrc;

    private String viewCarUrl;

    private String buyCarUrl;

    private Integer idNumber;

    private Boolean isSold;

    @Lob
    private String qrSrc;

    public Car() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public BigDecimal getRRP() {
        return RRP;
    }

    public void setRRP(BigDecimal RRP) {
        this.RRP = RRP;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getSaving() {
        return saving;
    }

    public void setSaving(BigDecimal saving) {
        this.saving = saving;
    }

    public Integer getMileage() {
        return mileage;
    }

    public void setMileage(Integer mileage) {
        this.mileage = mileage;
    }

    public String getRegistration() {
        return registration;
    }

    public void setRegistration(String registered) {
        this.registration = registered;
    }

    public String getFuelType() {
        return fuelType;
    }

    public void setFuelType(String fuelType) {
        this.fuelType = fuelType;
    }

    public String getEngineSize() {
        return engineSize;
    }

    public void setEngineSize(String engineSize) {
        this.engineSize = engineSize;
    }

    public Integer getDoors() {
        return doors;
    }

    public void setDoors(Integer doors) {
        this.doors = doors;
    }

    public String getBodyStyle() {
        return bodyStyle;
    }

    public void setBodyStyle(String bodyStyle) {
        this.bodyStyle = bodyStyle;
    }

    public String getImgSrc() {
        return imgSrc;
    }

    public void setImgSrc(String imgSrc) {
        this.imgSrc = imgSrc;
    }

    public String getViewCarUrl() {
        return viewCarUrl;
    }

    public void setViewCarUrl(String viewCarUrl) {
        this.viewCarUrl = viewCarUrl;
    }

    public String getBuyCarUrl() {
        return buyCarUrl;
    }

    public void setBuyCarUrl(String buyCarUrl) {
        this.buyCarUrl = buyCarUrl;
    }

    public Integer getIdNumber() {
        return idNumber;
    }

    public void setIdNumber(Integer idNumber) {
        this.idNumber = idNumber;
    }

    public Boolean getSold() {
        return isSold;
    }

    public void setSold(Boolean sold) {
        isSold = sold;
    }

    public String getQrSrc() {
        return qrSrc;
    }

    public void setQrSrc(String qrSrc) {
        this.qrSrc = qrSrc;
    }
}
