package com.lookers.api.form;

import com.lookers.api.model.Car;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;
import java.time.LocalTime;

public class CallForm {

    @NotNull
    @NotBlank(message = "Please enter your name")
    private String name;

    @NotNull
    @NotBlank(message = "Please enter your email address")
    @Email(message = "Email should be valid")
    private String email;

    @NotNull
    @NotBlank(message = "Please enter your phone number")
    private String phone;

    @NotNull
    @NotBlank(message = "Please enter a date for your call")
    private LocalDate date;

    @NotNull
    @NotBlank(message = "Please enter a time for your call")
    private LocalTime time;

    private Car car;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public LocalTime getTime() {
        return time;
    }

    public void setTime(LocalTime time) {
        this.time = time;
    }

    public Car getCar() {
        return car;
    }

    public void setCar(Car car) {
        this.car = car;
    }
}
