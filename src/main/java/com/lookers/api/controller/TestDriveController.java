package com.lookers.api.controller;

import com.lookers.api.model.Car;
import com.lookers.api.services.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestDriveController {

    @Autowired
    private CarService carService;

    @GetMapping(value = "/view/test-drive/{id}")
    public ModelAndView getViewTestDrive(@PathVariable Integer id){
        ModelAndView model = new ModelAndView("bookTestDrive");
        Car car;

        if(carService.getCarById(id).isPresent()){
            car = carService.getCarById(id).get();
            model.addObject("car", car);
        }

        return model;
    }


}
