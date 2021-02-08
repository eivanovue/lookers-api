package com.lookers.api.repository;

import com.lookers.api.model.Car;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface CarRepository extends CrudRepository<Car, Integer> {

    List<Car> findAll();

    Optional<Car> findById(Integer id);

    Car save (Car email);

}
