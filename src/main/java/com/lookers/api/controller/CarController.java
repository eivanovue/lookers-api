package com.lookers.api.controller;

import com.lookers.api.exceptions.CarNotFoundException;
import com.lookers.api.model.Car;
import com.lookers.api.services.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.Optional;

@RestController
public class CarController {

    @Autowired
    private CarService carService;

    public CarController() {

    }


    @GetMapping(value = "/car/{id}")
    public Optional<Car> getEmail(@PathVariable Integer id){
        try{
            return carService.getCarById(id);
        } catch (CarNotFoundException ex) {
            throw new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "Car Not Found", ex);
        }
    }

    @GetMapping(value = "/cars")
    public List<Car> getCards() {
        return carService.getAllCars();
    }

}
