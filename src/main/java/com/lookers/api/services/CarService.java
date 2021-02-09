package com.lookers.api.services;

import com.lookers.api.model.Car;

import java.util.List;
import java.util.Optional;

public interface CarService {

    List<Car> getAllCars();

    Optional<Car> getCarById(Integer id);

    Car save(Car car);

    void delete(Car car);
}
