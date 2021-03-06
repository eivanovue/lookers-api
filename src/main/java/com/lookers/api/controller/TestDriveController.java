package com.lookers.api.controller;

import com.lookers.api.dto.TestDriveForm;
import com.lookers.api.model.Car;
import com.lookers.api.model.TestDrive;
import com.lookers.api.services.CarService;
import com.lookers.api.services.TestDriveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class TestDriveController {

    @Autowired
    private CarService carService;

    @Autowired
    private TestDriveService testDriveService;

    /* view booking success screen */
    @GetMapping(value = "/test-drive/view/{id}")
    public ModelAndView testDriveBookingStatus(@PathVariable Integer id){
        ModelAndView model = new ModelAndView("testDriveSuccess");

        TestDrive testDrive;

        if(testDriveService.getTestDriveById(id).isPresent()){
            testDrive = testDriveService.getTestDriveById(id).get();
            model.addObject("testDrive", testDrive);
        }

        return model;
    }

    /* go to create a test drive booking view */
    @GetMapping(value = "/test-drive/car/{id}")
    public ModelAndView showTestDriveBookingForm(@PathVariable Integer id){
        ModelAndView model = new ModelAndView("bookTestDrive");

        Car car;

        if(carService.getCarById(id).isPresent()){
            car = carService.getCarById(id).get();
            model.addObject("car", car);
            model.addObject("form", new TestDriveForm());
        }

        return model;
    }

    /* post mapping for creating a test drive booking */
    @PostMapping("/test-drive/car/{id}/create")
    public ModelAndView getTestDriveBookingForm(@PathVariable Integer id,
                                          @Valid TestDriveForm testDriveForm,
                                          BindingResult bindingResult) {

        /* get corresponding car */
        Car car = null;

        if(carService.getCarById(id).isPresent()) car = carService.getCarById(id).get();

        if (!bindingResult.hasErrors()) {

            /* create test drive object */
            TestDrive testDrive = new TestDrive();
            testDrive.setName(testDriveForm.getName());
            testDrive.setEmail(testDriveForm.getEmail());
            testDrive.setPhone(testDriveForm.getPhone());
            testDrive.setDate(testDriveForm.getDate());
            testDrive.setTime(testDriveForm.getTime());
            testDrive.setCar(car);

            /* checks */
            if(testDriveService.existsByPhone(testDrive.getPhone())) {
                ModelAndView bookTestDrive = new ModelAndView("bookTestDrive");
                bookTestDrive.addObject("car", car);
                bookTestDrive.addObject("unique", false);
                return bookTestDrive;
            }

            /* persist to db */
            testDriveService.save(testDrive);

            ModelAndView testDriveSuccess = new ModelAndView("testDriveSuccess");
            testDriveSuccess.setViewName("redirect:/test-drive/view/" + testDrive.getId());
            testDriveSuccess.addObject("testDrive", testDrive);

            return testDriveSuccess;
        }

        ModelAndView bookTestDrive = new ModelAndView("bookTestDrive");
        bookTestDrive.addObject("car", car);

        return bookTestDrive;
    }


}
