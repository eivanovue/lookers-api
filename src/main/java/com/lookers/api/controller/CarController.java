package com.lookers.api.controller;

import com.lookers.api.model.Car;
import com.lookers.api.model.Scan;
import com.lookers.api.services.CarService;
import com.lookers.api.services.ScanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDateTime;

@Controller
public class CarController {

    @Autowired
    private CarService carService;

    @Autowired
    private ScanService scanService;

    @GetMapping(value = "/view/car/{id}")
    public ModelAndView getCar(@PathVariable Integer id){
        ModelAndView model = new ModelAndView("viewCar");
        Car car;

        if(carService.getCarById(id).isPresent()){
            car = carService.getCarById(id).get();

            Scan scan = new Scan();
            scan.setCar(car);
            scan.setScanDateTime(LocalDateTime.now());
            scanService.save(scan);

            model.addObject("car", car);
        }

        return model;
    }

    @GetMapping(value = "/sticker/car/{id}")
    public ModelAndView getSticker(@PathVariable Integer id){
        ModelAndView model = new ModelAndView("stickerCar");
        Car car;

        if(carService.getCarById(id).isPresent()){
            car = carService.getCarById(id).get();

            if (car.getQrSrc() == null) {
                carService.addQrCode(car);
            }
            carService.addQrCode(car); // Always gen a QR for testing purposes

            model.addObject("car", car);
        }

        return model;
    }

}
