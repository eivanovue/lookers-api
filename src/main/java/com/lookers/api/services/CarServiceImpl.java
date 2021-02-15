package com.lookers.api.services;

import com.lookers.api.exceptions.CarNotFoundException;
import com.lookers.api.model.Car;
import com.lookers.api.repository.CarRepository;
import net.glxn.qrgen.javase.QRCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.ByteArrayOutputStream;
import java.util.Base64;
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

    @Override
    public void delete(Car car){
        carRepository.delete(car);
    }

    @Override
    public void addQrCode(Car car) {
        ByteArrayOutputStream stream =
                QRCode.from("https://lookers-api.herokuapp.com/view/car/" + car.getId())
                        .withSize(180, 180)
                        .stream();

        String qrCode = Base64.getEncoder().encodeToString(stream.toByteArray());
        car.setQrSrc(qrCode);
        carRepository.save(car);
    }
}
