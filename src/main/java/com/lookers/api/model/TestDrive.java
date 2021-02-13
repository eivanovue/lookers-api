package com.lookers.api.model;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;
import java.time.LocalTime;

@Entity
public class TestDrive {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

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
    @NotBlank(message = "Please enter a date for your test drive")
    private LocalDate date;

    @NotNull
    @NotBlank(message = "Please enter a time for your test drive")
    private LocalTime time;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="car_id")
    private Car car;

    private boolean confirmed;

    public TestDrive() {
    }

    public TestDrive(Integer id, @NotNull @NotBlank(message = "Please enter your name") String name, @NotNull @NotBlank(message = "Please enter your email address") @Email(message = "Email should be valid") String email, @NotNull @NotBlank(message = "Please enter your phone number") String phone, @NotNull @NotBlank(message = "Please enter a date for your booking") LocalDate date, @NotNull @NotBlank(message = "Please enter a time for your booking") LocalTime time, @NotNull @NotBlank(message = "Please choose a car for your booking") Car car, boolean confirmed) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.date = date;
        this.time = time;
        this.car = car;
        this.confirmed = confirmed;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

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

    public boolean isConfirmed() {
        return confirmed;
    }

    public void setConfirmed(boolean confirmed) {
        this.confirmed = confirmed;
    }
}
