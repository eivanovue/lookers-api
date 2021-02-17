package com.lookers.api.controller;

import com.lookers.api.dto.CarScans;
import com.lookers.api.services.CarService;
import com.lookers.api.services.ScanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@Controller
public class DashboardController {

    @Autowired
    private ScanService scanService;

    @Autowired
    private CarService carService;

    @GetMapping(value = "/dashboard")
    public ModelAndView dashboard(){
        ModelAndView model = new ModelAndView("dashboard");
        model.addObject("scansToday", scanService.getNumberOfScansToday());
        model.addObject("scansPastWeek", scanService.getNumberOfScansForThePastWeek());
        model.addObject("scansPastMonth", scanService.getNumberOfScansForThePastMonth());
        model.addObject("scansAllTime", scanService.getNumberOfScansForAllTime());

        /* get a DTO containing the car and number of scans for it */
        List<CarScans> carScansList = new ArrayList<>();
        carService.getAllCars().forEach(car -> {
            carScansList.add(new CarScans(car, scanService.getNumberOfScansForCar(car)));
        });

        carScansList.sort(Comparator.comparing(CarScans::getNumberOfScans));

        Collections.reverse(carScansList);

        model.addObject("carScansList", carScansList);

        return model;
    }




}
