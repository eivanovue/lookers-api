package com.lookers.api.dto;

import com.lookers.api.model.Car;

public class CarScans {

    private Car car;
    private int numberOfScans;

    public CarScans() {
    }

    public Car getCar() {
        return car;
    }

    public void setCar(Car car) {
        this.car = car;
    }

    public int getNumberOfScans() {
        return numberOfScans;
    }

    public void setNumberOfScans(int numberOfScans) {
        this.numberOfScans = numberOfScans;
    }
}
