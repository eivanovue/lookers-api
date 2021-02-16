package com.lookers.api.controller;

import com.lookers.api.services.ScanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DashboardController {

    @Autowired
    private ScanService scanService;

    @GetMapping(value = "/dashboard")
    public ModelAndView dashboard(){
        ModelAndView model = new ModelAndView("dashboard");
        model.addObject("scansToday", scanService.getNumberOfScansToday());
        model.addObject("scansPastWeek", scanService.getNumberOfScansForThePastWeek());
        model.addObject("scansPastMonth", scanService.getNumberOfScansForThePastMonth());
        model.addObject("scansAllTime", scanService.getNumberOfScansForAllTime());

        /* get a DTO containing the car and number of scans for it */



        return model;
    }




}
