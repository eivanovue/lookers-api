package com.lookers.api.services;

import com.lookers.api.exceptions.CarNotFoundException;
import com.lookers.api.model.Car;
import com.lookers.api.repository.CarRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CarServiceImpl implements CarService {

    @Autowired
    private CarRepository carRepository;

    @Override
    public List<Car> getAllCars() {
        return carRepository.findAll();
    }

    @Override
    public Optional<Car> getCarById(Integer id) {
        if(carRepository.findById(id).isEmpty()){
            throw new CarNotFoundException();
        } else {
            return carRepository.findById(id);
        }
    }

    @Override
    public Car save(Car car) {
        return carRepository.save(car);
    }
}
