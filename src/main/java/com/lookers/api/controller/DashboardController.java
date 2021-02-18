package com.lookers.api.controller;

import com.lookers.api.dto.CarScans;
import com.lookers.api.services.CallService;
import com.lookers.api.services.CarService;
import com.lookers.api.services.ScanService;
import com.lookers.api.services.TestDriveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class DashboardController {

    @Autowired
    private ScanService scanService;

    @Autowired
    private CarService carService;

    @Autowired
    private CallService callService;

    @Autowired
    private TestDriveService testDriveService;

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

        List<CarScans> fiveCarScansList = carScansList.stream().limit(5).collect(Collectors.toList());

        model.addObject("carScansList", fiveCarScansList);

        return model;
    }

    @GetMapping(value = "/dashboard/view/all")
    public ModelAndView viewAllCards() {
        ModelAndView model = new ModelAndView("dashboardViewAllCars");

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

    @GetMapping(value = "/dashboard/view/calls")
    public ModelAndView viewAllCalls() {
        ModelAndView model = new ModelAndView("dashboardViewAllCalls");
        model.addObject("calls", callService.getAllCalls());

        return model;
    }

    @GetMapping(value = "/dashboard/view/test-drives")
    public ModelAndView viewAllTestDrives() {
        ModelAndView model = new ModelAndView("dashboardViewAllTestDrives");
        model.addObject("testDrives", testDriveService.getAllTestDrives());

        return model;
    }




}
